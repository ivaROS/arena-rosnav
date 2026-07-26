#include <OgreRay.h>
#include <rviz/ogre_helpers/ogre_vector.h>
#include <rviz/viewport_mouse_event.h>
#include <rviz/load_resource.h>
#include <rviz/render_panel.h>
#include <rviz/display_context.h>
#include <rviz/selection/selection_manager.h>
#include <rviz/view_controller.h>
#include <geometry_msgs/PointStamped.h>
#include "continuous_gap_selection_tool.h"
#include <sstream>

namespace rviz
{

ContinuousGapSelectionTool::ContinuousGapSelectionTool()
{
  shortcut_key_ = 'g';
}

void ContinuousGapSelectionTool::onInitialize()
{
  hit_cursor_ = cursor_;
  std_cursor_ = getDefaultCursor();
  pub_ = nh_.advertise<geometry_msgs::PointStamped>("/gap_selection_point", 1);
  trajpub_ = nh_.advertise<geometry_msgs::PointStamped>("/traj_creation_point", 1);
  isPublishing_ = false;
  hasValidPos_ = false;
  publishTimer_ = nh_.createTimer(ros::Duration(0.1), 
                                    &ContinuousGapSelectionTool::timerCallback, this);
  publishTimer_.stop();
}

void ContinuousGapSelectionTool::timerCallback(const ros::TimerEvent&)
{
    if (isPublishing_ && hasValidPos_)
        pub_.publish(lastKnownPos_);
}

void ContinuousGapSelectionTool::activate()
{
    isPublishing_ = true;
    publishTimer_.start();
}

void ContinuousGapSelectionTool::deactivate()
{
    isPublishing_ = false;
    publishTimer_.stop();
}

int ContinuousGapSelectionTool::processMouseEvent(ViewportMouseEvent& event)
{
  int flags = 0;

  Ogre::Vector3 pos;
  bool success = context_->getSelectionManager()->get3DPoint(event.viewport, event.x, event.y, pos);
  setCursor(success ? hit_cursor_ : std_cursor_);

  if (success)
  {
    std::ostringstream s;
    s << "<b>Left-Click:</b> Toggle continuous gap selection.";
    s.precision(3);
    s << " [" << pos.x << "," << pos.y << "," << pos.z << "]";
    setStatus(s.str().c_str());

    if (event.leftDown()) {
      geometry_msgs::PointStamped trajPt;
      trajPt.point.x = pos.x;
      trajPt.point.y = pos.y;
      trajPt.point.z = pos.z;
      trajPt.header.frame_id = context_->getFixedFrame().toStdString();
      trajPt.header.stamp = ros::Time::now();

      trajpub_.publish(trajPt);
      ROS_INFO_STREAM("ContinuousGapSelectionTool: published traj creation point ["
                       << pos.x << ", " << pos.y << ", " << pos.z << "]");
    }

    if (success && event.type == QEvent::MouseMove)
    {
        lastKnownPos_.point.x = pos.x;
        lastKnownPos_.point.y = pos.y;
        lastKnownPos_.point.z = pos.z;
        lastKnownPos_.header.frame_id = context_->getFixedFrame().toStdString();
        lastKnownPos_.header.stamp = ros::Time::now();
        hasValidPos_ = true;
    }
  }
  else
  {
    setStatus("Move over an object to toggle continuous gap selection.");
  }

  return flags;
}

} // end namespace rviz

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(rviz::ContinuousGapSelectionTool, rviz::Tool)

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
  isPublishing_ = false;
}

void ContinuousGapSelectionTool::activate()
{
    isPublishing_ = true;
}

void ContinuousGapSelectionTool::deactivate()
{
    isPublishing_ = false;
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

    if (event.leftDown())
    {
      isPublishing_ = false;
      ROS_INFO_STREAM("ContinuousGapSelectionTool: publishing " << (isPublishing_ ? "ON" : "OFF"));
      return Finished;
    }

    if (isPublishing_ && event.type == QEvent::MouseMove)
    {
      geometry_msgs::PointStamped ps;
      ps.point.x = pos.x;
      ps.point.y = pos.y;
      ps.point.z = pos.z;
      ps.header.frame_id = context_->getFixedFrame().toStdString();
      ps.header.stamp = ros::Time::now();
      pub_.publish(ps);
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
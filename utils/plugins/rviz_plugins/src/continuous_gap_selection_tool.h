#ifndef CONTINUOUS_GAP_SELECTION_TOOL_H
#define CONTINUOUS_GAP_SELECTION_TOOL_H
#include <geometry_msgs/PointStamped.h>
#ifndef Q_MOC_RUN
# include <QObject>
# include <ros/ros.h>
# include "rviz/tool.h"
#endif

namespace rviz
{
class ContinuousGapSelectionTool : public Tool
{
Q_OBJECT
public:
  ContinuousGapSelectionTool();
  virtual ~ContinuousGapSelectionTool() {}
  virtual void onInitialize();
  virtual void activate();
  virtual void deactivate();
  virtual int processMouseEvent(ViewportMouseEvent& event);

private:
  void timerCallback(const ros::TimerEvent&);
  ros::NodeHandle nh_;
  ros::Publisher pub_;
  ros::Publisher trajpub_;
  bool isPublishing_;
  QCursor std_cursor_;
  QCursor hit_cursor_;
  ros::Timer publishTimer_;
  geometry_msgs::PointStamped lastKnownPos_;
  bool hasValidPos_;
};
} // end namespace rviz
#endif
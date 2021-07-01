#include <ros/ros.h>
#include <tf2_ros/static_transform_broadcaster.h>
#include <ros_challenge/frame.h>
#include <cstdio>
#include <tf2/LinearMath/Quaternion.h>


int main(int argc, char **argv)
{
  ros::init(argc,argv, "publisher");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<ros_challenge::frame>("frame", 1000);
  ros::Rate loop_rate(10);
  if(argc != 7)
  {
    ROS_ERROR("Invalid number of parameters\nusage: publisher x y z roll pitch yaw");
    return -1;
  }

  ros_challenge::frame frame;

  frame.position.x = atof(argv[1]);
  frame.position.y = atof(argv[2]);
  frame.position.z = atof(argv[3]);

  tf2::Quaternion quat;
  quat.setRPY(atof(argv[4]), atof(argv[5]), atof(argv[6]));
  quat.normalize();

  frame.orientation.x = quat.x();
  frame.orientation.y = quat.y();
  frame.orientation.z = quat.z();
  frame.orientation.w = quat.w();
    while (ros::ok())
  { 

    pub.publish(frame);
    ROS_INFO("Sending frame to subscriber");
    ros::spinOnce();

    loop_rate.sleep();
  }
 // ROS_INFO("Spinning until publisher is killed");
  //ros::spin();
  return 0;
};
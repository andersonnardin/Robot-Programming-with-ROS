#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Spawn.h"


ros::Publisher pub;


void turtleCallback(const turtlesim::Pose::ConstPtr& msg)
{
	ROS_INFO("Turtle subscriber@[%f, %f, %f]", msg->x, msg->y, msg->theta);
	geometry_msgs::Twist vel;
	vel.linear.x = 1.0;
	vel.angular.z = 1.0;
	pub.publish(vel);
}


int main (int argc, char **argv)
{
	// Initializethe node, setup the NodeHandle for handling the communication with the ROS
	//system
	ros::init(argc, argv, "turtlesim_subscriber");
	ros::NodeHandle nh;
	// Define the subscriber to turtle's posi@on
	ros::Subscriber sub = nh.subscribe("my_turtle/pose", 10, turtleCallback);
	pub = nh.advertise<geometry_msgs::Twist> ("my_turtle/cmd_vel", 10);
	ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
	turtlesim::Spawn srv1;
	srv1.request.x = 1.0;
	srv1.request.y = 1.0;
	srv1.request.theta = 0.0;
	srv1.request.name = "my_turtle";
	client.call(srv1);
	
	ros::spin();
	return 0;
}

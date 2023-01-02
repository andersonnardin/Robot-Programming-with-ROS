#include <iostream>
#include <chrono>
#include "rclcpp/rclcpp.hpp"
#include "geometry_msgs/msg/twist.hpp"
#include "turtlesim/msg/pose.hpp"
#include "turtlesim/srv/kill.hpp"
#include "turtlesim/srv/spawn.hpp"

using namespace std::chrono_literals;
using Kill = turtlesim::srv::Kill;
using Spawn = turtlesim::srv::Spawn;

float pos_x;
float pos_y;
float pos_theta;
geometry_msgs::msg::Twist my_vel;
rclcpp::Node::SharedPtr node = nullptr;
rclcpp::Publisher<geometry_msgs::msg::Twist>::SharedPtr publisher;

void turtle_callback(const turtlesim::msg::Pose::SharedPtr msg)
{

  RCLCPP_INFO(node->get_logger(), "Position: '%f', '%f', '%f'", msg->x, msg->y, msg->theta);
  
  pos_x = msg->x;
  pos_y = msg->y;
  pos_theta = msg->theta;

int count = 0;
while(count<100){
  if (pos_x > 9.0){
      my_vel.linear.x= 1.0;
      my_vel.angular.z = 1.0;
      RCLCPP_INFO(node->get_logger(), "Counterclockwise circle");
  }
  else if (pos_x < 1.5){
      my_vel.linear.x = 1.0;
      my_vel.angular.z = -1.0;
      RCLCPP_INFO(node->get_logger(), "Clockwise circle");
  }
  else if (pos_y > 9.0){
      my_vel.linear.x = 0.0;
      my_vel.angular.z = 0.0;
      RCLCPP_INFO(node->get_logger(), "Steady position");
  }
  else{
      my_vel.linear.x = 1.0;
      my_vel.angular.z = 0.0;
      RCLCPP_INFO(node->get_logger(), "Straight line: %f", my_vel.linear.x);
  }
   
   try {
      publisher->publish(my_vel);
   }
      
   catch (const rclcpp::exceptions::RCLError & e) {
      RCLCPP_ERROR(
      node->get_logger(),
      "unexpectedly failed with %s",
      e.what());
   }  
    
  publisher->publish(my_vel);
  RCLCPP_INFO(node->get_logger(), "Linear: %f", my_vel.linear.x);
  count++;
  RCLCPP_INFO(node->get_logger(), "Count: %d", count);
}  

}

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  node = rclcpp::Node::make_shared("turtle_controller_ROS2");
  
  auto client_kill = node->create_client<Kill>("/kill");
  while (!client_kill->wait_for_service(std::chrono::seconds(1))) {
    if (!rclcpp::ok()) {
      RCLCPP_ERROR(node->get_logger(), "client interrupted while waiting for service to appear.");
      return 1;
    }
    RCLCPP_INFO(node->get_logger(), "waiting for service /kill to appear...");
  }
  
  auto req_kill = std::make_shared<Kill::Request>();
  req_kill->name = "turtle1";
  auto res_kill = client_kill->async_send_request(req_kill);
  if (rclcpp::spin_until_future_complete(node, res_kill) !=
    rclcpp::FutureReturnCode::SUCCESS)
  {
    RCLCPP_ERROR(node->get_logger(), "service call failed :(");
    return 1;
  }
  
  auto client_spawn = node->create_client<Spawn>("/spawn");
  while (!client_spawn->wait_for_service(std::chrono::seconds(1))) {
    if (!rclcpp::ok()) {
      RCLCPP_ERROR(node->get_logger(), "client interrupted while waiting for service to appear.");
      return 1;
    }
    RCLCPP_INFO(node->get_logger(), "waiting for service /spawn to appear...");
  }
  
  auto req_spawn = std::make_shared<Spawn::Request>();
  req_spawn->x = 2.0;
  req_spawn->y = 1.0;
  req_spawn->theta = 0.0;
  req_spawn->name = "turtle_ROS2";
  auto res_spawn = client_spawn->async_send_request(req_spawn);
  if (rclcpp::spin_until_future_complete(node, res_spawn) !=
    rclcpp::FutureReturnCode::SUCCESS)
  {
    RCLCPP_ERROR(node->get_logger(), "service call failed :(");
    return 1;
  }  
  
  publisher = node->create_publisher<geometry_msgs::msg::Twist>("/turtle_ROS2/cmd_vel", 1);
  auto subscription = node->create_subscription<turtlesim::msg::Pose>("/turtle_ROS2/pose", 1, turtle_callback);

  rclcpp::spin(node);
  rclcpp::shutdown();
  return 0;
}


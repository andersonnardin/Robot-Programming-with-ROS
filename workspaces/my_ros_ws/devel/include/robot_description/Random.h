// Generated by gencpp from file robot_description/Random.msg
// DO NOT EDIT!


#ifndef ROBOT_DESCRIPTION_MESSAGE_RANDOM_H
#define ROBOT_DESCRIPTION_MESSAGE_RANDOM_H

#include <ros/service_traits.h>


#include <robot_description/RandomRequest.h>
#include <robot_description/RandomResponse.h>


namespace robot_description
{

struct Random
{

typedef RandomRequest Request;
typedef RandomResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Random
} // namespace robot_description


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_description::Random > {
  static const char* value()
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const ::robot_description::Random&) { return value(); }
};

template<>
struct DataType< ::robot_description::Random > {
  static const char* value()
  {
    return "robot_description/Random";
  }

  static const char* value(const ::robot_description::Random&) { return value(); }
};


// service_traits::MD5Sum< ::robot_description::RandomRequest> should match
// service_traits::MD5Sum< ::robot_description::Random >
template<>
struct MD5Sum< ::robot_description::RandomRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_description::Random >::value();
  }
  static const char* value(const ::robot_description::RandomRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_description::RandomRequest> should match
// service_traits::DataType< ::robot_description::Random >
template<>
struct DataType< ::robot_description::RandomRequest>
{
  static const char* value()
  {
    return DataType< ::robot_description::Random >::value();
  }
  static const char* value(const ::robot_description::RandomRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_description::RandomResponse> should match
// service_traits::MD5Sum< ::robot_description::Random >
template<>
struct MD5Sum< ::robot_description::RandomResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_description::Random >::value();
  }
  static const char* value(const ::robot_description::RandomResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_description::RandomResponse> should match
// service_traits::DataType< ::robot_description::Random >
template<>
struct DataType< ::robot_description::RandomResponse>
{
  static const char* value()
  {
    return DataType< ::robot_description::Random >::value();
  }
  static const char* value(const ::robot_description::RandomResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_DESCRIPTION_MESSAGE_RANDOM_H
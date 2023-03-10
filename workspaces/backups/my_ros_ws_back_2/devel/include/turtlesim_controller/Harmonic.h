// Generated by gencpp from file turtlesim_controller/Harmonic.msg
// DO NOT EDIT!


#ifndef TURTLESIM_CONTROLLER_MESSAGE_HARMONIC_H
#define TURTLESIM_CONTROLLER_MESSAGE_HARMONIC_H

#include <ros/service_traits.h>


#include <turtlesim_controller/HarmonicRequest.h>
#include <turtlesim_controller/HarmonicResponse.h>


namespace turtlesim_controller
{

struct Harmonic
{

typedef HarmonicRequest Request;
typedef HarmonicResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Harmonic
} // namespace turtlesim_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turtlesim_controller::Harmonic > {
  static const char* value()
  {
    return "429b093f442ccf5840f55cac49926999";
  }

  static const char* value(const ::turtlesim_controller::Harmonic&) { return value(); }
};

template<>
struct DataType< ::turtlesim_controller::Harmonic > {
  static const char* value()
  {
    return "turtlesim_controller/Harmonic";
  }

  static const char* value(const ::turtlesim_controller::Harmonic&) { return value(); }
};


// service_traits::MD5Sum< ::turtlesim_controller::HarmonicRequest> should match
// service_traits::MD5Sum< ::turtlesim_controller::Harmonic >
template<>
struct MD5Sum< ::turtlesim_controller::HarmonicRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turtlesim_controller::Harmonic >::value();
  }
  static const char* value(const ::turtlesim_controller::HarmonicRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtlesim_controller::HarmonicRequest> should match
// service_traits::DataType< ::turtlesim_controller::Harmonic >
template<>
struct DataType< ::turtlesim_controller::HarmonicRequest>
{
  static const char* value()
  {
    return DataType< ::turtlesim_controller::Harmonic >::value();
  }
  static const char* value(const ::turtlesim_controller::HarmonicRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turtlesim_controller::HarmonicResponse> should match
// service_traits::MD5Sum< ::turtlesim_controller::Harmonic >
template<>
struct MD5Sum< ::turtlesim_controller::HarmonicResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turtlesim_controller::Harmonic >::value();
  }
  static const char* value(const ::turtlesim_controller::HarmonicResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtlesim_controller::HarmonicResponse> should match
// service_traits::DataType< ::turtlesim_controller::Harmonic >
template<>
struct DataType< ::turtlesim_controller::HarmonicResponse>
{
  static const char* value()
  {
    return DataType< ::turtlesim_controller::Harmonic >::value();
  }
  static const char* value(const ::turtlesim_controller::HarmonicResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURTLESIM_CONTROLLER_MESSAGE_HARMONIC_H

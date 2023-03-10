// Generated by gencpp from file robot_description/RandomRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_DESCRIPTION_MESSAGE_RANDOMREQUEST_H
#define ROBOT_DESCRIPTION_MESSAGE_RANDOMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_description
{
template <class ContainerAllocator>
struct RandomRequest_
{
  typedef RandomRequest_<ContainerAllocator> Type;

  RandomRequest_()
    {
    }
  RandomRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::robot_description::RandomRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_description::RandomRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RandomRequest_

typedef ::robot_description::RandomRequest_<std::allocator<void> > RandomRequest;

typedef boost::shared_ptr< ::robot_description::RandomRequest > RandomRequestPtr;
typedef boost::shared_ptr< ::robot_description::RandomRequest const> RandomRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_description::RandomRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_description::RandomRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace robot_description

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_description::RandomRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_description::RandomRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_description::RandomRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_description::RandomRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_description::RandomRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_description::RandomRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_description::RandomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robot_description::RandomRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_description::RandomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_description/RandomRequest";
  }

  static const char* value(const ::robot_description::RandomRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_description::RandomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::robot_description::RandomRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_description::RandomRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RandomRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_description::RandomRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::robot_description::RandomRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_DESCRIPTION_MESSAGE_RANDOMREQUEST_H

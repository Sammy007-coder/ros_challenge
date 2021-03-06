// Generated by gencpp from file ros_challenge/frame.msg
// DO NOT EDIT!


#ifndef ROS_CHALLENGE_MESSAGE_FRAME_H
#define ROS_CHALLENGE_MESSAGE_FRAME_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_challenge/Position.h>
#include <ros_challenge/Orientation.h>

namespace ros_challenge
{
template <class ContainerAllocator>
struct frame_
{
  typedef frame_<ContainerAllocator> Type;

  frame_()
    : position()
    , orientation()  {
    }
  frame_(const ContainerAllocator& _alloc)
    : position(_alloc)
    , orientation(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ros_challenge::Position_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::ros_challenge::Orientation_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;





  typedef boost::shared_ptr< ::ros_challenge::frame_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_challenge::frame_<ContainerAllocator> const> ConstPtr;

}; // struct frame_

typedef ::ros_challenge::frame_<std::allocator<void> > frame;

typedef boost::shared_ptr< ::ros_challenge::frame > framePtr;
typedef boost::shared_ptr< ::ros_challenge::frame const> frameConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_challenge::frame_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_challenge::frame_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_challenge::frame_<ContainerAllocator1> & lhs, const ::ros_challenge::frame_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position &&
    lhs.orientation == rhs.orientation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_challenge::frame_<ContainerAllocator1> & lhs, const ::ros_challenge::frame_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_challenge

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_challenge::frame_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_challenge::frame_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_challenge::frame_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_challenge::frame_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_challenge::frame_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_challenge::frame_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_challenge::frame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e45d45a5a1ce597b249e23fb30fc871f";
  }

  static const char* value(const ::ros_challenge::frame_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe45d45a5a1ce597bULL;
  static const uint64_t static_value2 = 0x249e23fb30fc871fULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_challenge::frame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_challenge/frame";
  }

  static const char* value(const ::ros_challenge::frame_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_challenge::frame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Position position\n"
"Orientation orientation\n"
"\n"
"================================================================================\n"
"MSG: ros_challenge/Position\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: ros_challenge/Orientation\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::ros_challenge::frame_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_challenge::frame_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct frame_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_challenge::frame_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_challenge::frame_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    s << std::endl;
    Printer< ::ros_challenge::Position_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::ros_challenge::Orientation_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_CHALLENGE_MESSAGE_FRAME_H

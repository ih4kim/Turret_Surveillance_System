// Generated by gencpp from file pixel_to_servo/target_location.msg
// DO NOT EDIT!


#ifndef PIXEL_TO_SERVO_MESSAGE_TARGET_LOCATION_H
#define PIXEL_TO_SERVO_MESSAGE_TARGET_LOCATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pixel_to_servo
{
template <class ContainerAllocator>
struct target_location_
{
  typedef target_location_<ContainerAllocator> Type;

  target_location_()
    : xpos(0)
    , ypos(0)  {
    }
  target_location_(const ContainerAllocator& _alloc)
    : xpos(0)
    , ypos(0)  {
  (void)_alloc;
    }



   typedef int16_t _xpos_type;
  _xpos_type xpos;

   typedef int16_t _ypos_type;
  _ypos_type ypos;





  typedef boost::shared_ptr< ::pixel_to_servo::target_location_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pixel_to_servo::target_location_<ContainerAllocator> const> ConstPtr;

}; // struct target_location_

typedef ::pixel_to_servo::target_location_<std::allocator<void> > target_location;

typedef boost::shared_ptr< ::pixel_to_servo::target_location > target_locationPtr;
typedef boost::shared_ptr< ::pixel_to_servo::target_location const> target_locationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pixel_to_servo::target_location_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pixel_to_servo::target_location_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pixel_to_servo::target_location_<ContainerAllocator1> & lhs, const ::pixel_to_servo::target_location_<ContainerAllocator2> & rhs)
{
  return lhs.xpos == rhs.xpos &&
    lhs.ypos == rhs.ypos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pixel_to_servo::target_location_<ContainerAllocator1> & lhs, const ::pixel_to_servo::target_location_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pixel_to_servo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pixel_to_servo::target_location_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pixel_to_servo::target_location_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pixel_to_servo::target_location_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pixel_to_servo::target_location_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pixel_to_servo::target_location_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pixel_to_servo::target_location_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pixel_to_servo::target_location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d6ba7dc735dee2eb6828c1c2a7ece7d0";
  }

  static const char* value(const ::pixel_to_servo::target_location_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd6ba7dc735dee2ebULL;
  static const uint64_t static_value2 = 0x6828c1c2a7ece7d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::pixel_to_servo::target_location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pixel_to_servo/target_location";
  }

  static const char* value(const ::pixel_to_servo::target_location_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pixel_to_servo::target_location_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 xpos\n"
"int16 ypos\n"
;
  }

  static const char* value(const ::pixel_to_servo::target_location_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pixel_to_servo::target_location_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xpos);
      stream.next(m.ypos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct target_location_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pixel_to_servo::target_location_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pixel_to_servo::target_location_<ContainerAllocator>& v)
  {
    s << indent << "xpos: ";
    Printer<int16_t>::stream(s, indent + "  ", v.xpos);
    s << indent << "ypos: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ypos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIXEL_TO_SERVO_MESSAGE_TARGET_LOCATION_H
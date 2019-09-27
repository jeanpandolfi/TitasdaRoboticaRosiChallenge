// Generated by gencpp from file rosi_defy/RosiMovement.msg
// DO NOT EDIT!


#ifndef ROSI_DEFY_MESSAGE_ROSIMOVEMENT_H
#define ROSI_DEFY_MESSAGE_ROSIMOVEMENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosi_defy
{
template <class ContainerAllocator>
struct RosiMovement_
{
  typedef RosiMovement_<ContainerAllocator> Type;

  RosiMovement_()
    : nodeID(0)
    , joint_var(0.0)  {
    }
  RosiMovement_(const ContainerAllocator& _alloc)
    : nodeID(0)
    , joint_var(0.0)  {
  (void)_alloc;
    }



   typedef int64_t _nodeID_type;
  _nodeID_type nodeID;

   typedef double _joint_var_type;
  _joint_var_type joint_var;





  typedef boost::shared_ptr< ::rosi_defy::RosiMovement_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosi_defy::RosiMovement_<ContainerAllocator> const> ConstPtr;

}; // struct RosiMovement_

typedef ::rosi_defy::RosiMovement_<std::allocator<void> > RosiMovement;

typedef boost::shared_ptr< ::rosi_defy::RosiMovement > RosiMovementPtr;
typedef boost::shared_ptr< ::rosi_defy::RosiMovement const> RosiMovementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosi_defy::RosiMovement_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosi_defy::RosiMovement_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosi_defy

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rosi_defy': ['/home/rosichallenge/catkin_ws/src/rosi_defy/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosi_defy::RosiMovement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosi_defy::RosiMovement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosi_defy::RosiMovement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosi_defy::RosiMovement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosi_defy::RosiMovement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosi_defy::RosiMovement_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosi_defy::RosiMovement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e8245905f61ae0a097d16c2c66c69fc";
  }

  static const char* value(const ::rosi_defy::RosiMovement_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e8245905f61ae0aULL;
  static const uint64_t static_value2 = 0x097d16c2c66c69fcULL;
};

template<class ContainerAllocator>
struct DataType< ::rosi_defy::RosiMovement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosi_defy/RosiMovement";
  }

  static const char* value(const ::rosi_defy::RosiMovement_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosi_defy::RosiMovement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 nodeID\n"
"float64 joint_var\n"
"\n"
;
  }

  static const char* value(const ::rosi_defy::RosiMovement_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosi_defy::RosiMovement_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.nodeID);
      stream.next(m.joint_var);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RosiMovement_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosi_defy::RosiMovement_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosi_defy::RosiMovement_<ContainerAllocator>& v)
  {
    s << indent << "nodeID: ";
    Printer<int64_t>::stream(s, indent + "  ", v.nodeID);
    s << indent << "joint_var: ";
    Printer<double>::stream(s, indent + "  ", v.joint_var);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSI_DEFY_MESSAGE_ROSIMOVEMENT_H


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-ur-dashboard-msgs";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_dashboard_msgs/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "604202b502a65fde044743abb56a87294e59f8f91f0d8180e76c44e9a0e5738a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages around the UR Dashboard server.'';
    license = with lib.licenses; [ bsd3 ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-cmake-pytest, ament-cmake-ros, builtin-interfaces, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, python3Packages, rclpy, rosbridge-test-msgs, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbridge-library";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_library/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "9bcf920e144ea31d8fa50e4e1474a3948265c1415cde26532eb971e598074b45";
  };

  buildType = "ament_cmake";
  checkInputs = [ actionlib-msgs ament-cmake-pytest builtin-interfaces diagnostic-msgs example-interfaces geometry-msgs nav-msgs rosbridge-test-msgs sensor-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ python3Packages.bson python3Packages.pillow rclpy rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''The core rosbridge package, responsible for interpreting JSON andperforming
    the appropriate ROS action, like subscribe, publish, call service, and
    interact with params.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rosapi-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/rosapi_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "ed946c0f7c841aa7cb3a620816c040592d480e62e86f690f6612186922eff08c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

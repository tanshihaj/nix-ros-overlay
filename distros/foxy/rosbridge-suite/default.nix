
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, rosapi, rosbridge-library, rosbridge-server }:
buildRosPackage {
  pname = "ros-foxy-rosbridge-suite";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/rosbridge_suite/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "552275e9d325f1c4b84c7841a76da750ad93e72277049fffb554f89aceee7591";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosapi rosbridge-library rosbridge-server ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Rosbridge provides a JSON API to ROS functionality for non-ROS programs.
    There are a variety of front ends that interface with rosbridge, including
    a WebSocket server for web browsers to interact with.

    Rosbridge_suite is a meta-package containing rosbridge, various front end
    packages for rosbridge like a WebSocket package, and helper packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

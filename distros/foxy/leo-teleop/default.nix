
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-foxy-leo-teleop";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-ros2-release/archive/release/foxy/leo_teleop/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "5ada41d927756de6ef0d07f57a2afbfe7b8a0246861c1404383878b0339dfdd3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Scripts and launch files for Leo Rover teleoperation'';
    license = with lib.licenses; [ mit ];
  };
}

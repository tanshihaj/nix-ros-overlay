
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-benchmarks, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-visualization, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "c503ab19e286492969022f7593f8947f415f7b3090b519e118d10d703c819d53";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-benchmarks moveit-ros-manipulation moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-visualization moveit-ros-warehouse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

# darwin_description

ROS package providing mesh files and URDF of the Darwin OP robot for use with
the real robot or Gazebo. URDF contains joint transmissions for controllers and
Gazebo referenced plugins for camera and the IMU provided by hector_gazebo.

This is a fork of the repository provided by Génération Robots and HumaRobotics
under the Simplified BSD license because that repository is unmaintained.

Main differences are:
1. The center of mass and inertial tensor for all links were recalculated
   and fixed;
2. lower and upper limits for joints were updated;
3. arms have 3DOF instead of 5;
4. joints' name were updated to reduce cognitive load.

A new control package that take into account these differences was written from
scratch: https://github.com/eriol/darwin_control

![Darwin model in Gazebo](/images/darwin.png?raw=true "Darwin model in Gazebo")

## Install

In order to build this package we suggest using [wstool](http://wiki.ros.org/wstool):

After installing it you can create a new workspace (in the example called `catkin_ws`),
and make it download all the not packaged dependencies:

```
mkdir catkin_ws
cd catkin_ws
wstool init src
wstool merge -t src https://raw.githubusercontent.com/eriol/darwin_description/main/darwin_description.rosinstall
wstool update -t src
```

You may need to install the hector_gazebo ROS package.

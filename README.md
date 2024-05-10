# darwin_description

ROS package providing mesh files and URDF of the Darwin OP robot for use with
the real robot or Gazebo. URDF contains joint transmissions for controllers and
Gazebo referenced plugins for camera and the IMU provided by hector_gazebo.

![Darwin model in Gazebo](/images/darwin.png?raw=true "Darwin model in Gazebo")

This is a fork of the repository provided by Génération Robots and HumaRobotics
under the Simplified BSD license because that repository is unmaintained.

The center of mass and inertial tensor for all links were recalculated and lower
and upper limits for joints were updated.

## Install

In order to build this package we suggest using [wstool](http://wiki.ros.org/wstool):

After installing it you can create a new workspace (in the example called `catkin_ws`),
and make it download all the not packaged dependencies:

```
mkdir catkin_ws
cd catkin_ws
wstool init src
wstool merge -t src https://raw.githubusercontent.com/eriol/darwin_description/master/darwin_description.rosinstall
wstool update -t src
```

You may need to install the hector_gazebo ROS package.

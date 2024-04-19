# darwin_description

ROS package providing mesh files and URDF of the Darwin OP robot for use with the real robot or Gazebo.
URDF contains joint transmissions for controllers and Gazebo referenced plugins for camera and the IMU provided by hector_gazebo.

The Darwin is in the kneeling position, suggested by Robotis, as starting safe
position.

![Darwin model in Gazebo](/darwin_kneeling_position.png?raw=true "Darwin model in Gazebo")

## Tutorial

A tutorial describing how to use this package can be found at:

http://www.generationrobots.com/en/content/83-carry-out-simulations-and-make-your-darwin-op-walk-with-gazebo-and-ros

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

## License

This software is provided by Génération Robots http://www.generationrobots.com and HumaRobotics http://www.humarobotics.com under the Simplified BSD license

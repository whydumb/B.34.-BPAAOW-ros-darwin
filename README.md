# darwin_description

실제 로봇이나 Gazebo에서 사용할 수 있도록 Darwin OP 로봇의 메쉬 파일과 URDF를 제공하는 ROS 패키지입니다.
URDF에는 컨트롤러를 위한 조인트 트랜스미션과 Gazebo에서 사용할 수 있도록 hector_gazebo에서 제공하는 카메라 및 IMU(관성 측정 장치) 플러그인이 포함되어 있습니다.

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

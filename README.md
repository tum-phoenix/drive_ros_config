# drive_ros_config
The hackathon_software branch contains a base working configuration of packages used by the Drive team. After pulling and checking out this branch, please initalize the submodules using: 

```bash
git submodule update --init
```
Afterwards, you can build your workspace using:

```bash
catkin build
```

You might encounter an error regarding the missing tf2-sensor-msgs package, which you can install using:
```bash
sudo apt install ros-kinetic-tf2-sensor-msgs
```

Afterwards, build your workspace again.

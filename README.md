# ROS Configuration Repo
This respository includes
* ROS .launch files
* ROS packages as [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

Some conventions:
* only feature branches
* push to master is not allowed
* use pull requests

Tip:
To change a branch in config repo, don't forget to deinit submodules first:
```
cd ~/catkin_ws/src/drive_ros_config/
git submodule deinit .
git checkout <branch>
git submodule init
git submodule update
```

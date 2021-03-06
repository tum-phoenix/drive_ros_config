# ROS Configuration Repo
## General
This is the main software repository of the DRIVE 🏎 Project from TUM Phoenix Robotics. It is meant to assemble all software modules in an easy way to create a modular and consistent system. It uses git submodules (see more infos below) to compose the complete system from various (sub)modules. To keep the whole system consistent, we use an automated Travis build check pipeline.

## Some conventions
For this "config repo" we use feature branches for development and prohibit pushes to the master branch. Use pull requests for each feature branch. Submodules may use their own conventions.

## File structure
This respository includes
* [ROS .launch](http://wiki.ros.org/roslaunch) files in `launch` folder
* [ROS packages](http://wiki.ros.org/Packages) as Git submodules in `modules` folder

The folder structure should look like:
```
catkin_ws/src/drive_ros_config
                     /launch
                         <launch file A>
                         <launch file B>
                         ...
                     /modules
                         <submodule 1>
                         <submodule 2>
                         ...
```

# More infos on Git submodules
Git submodules can be confusing at first. However, they are a very handy tool to assembles on overall system from different modules in different ways.

## Some ressources on Git submodules
- [Short Tutorial Video](https://www.youtube.com/watch?v=UQvXst5I41I)
- [Offical Git submodule documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

## Some tips
### add git submodule
After adding the submodule, don't forget to init and update:
```
cd catkin_ws/src/drive_ros_config/modules
git submodule add --force <some repo>
git submodule update --init --recursive
```

### checkout different branch in root config repo
To change a branch in config repo, don't forget to deinit submodules first:
```
cd catkin_ws/src/drive_ros_config/
git submodule deinit .
git checkout <branch>
git submodule update --init --recursive
```
### don't use git submodules
Still not convinced that submodules are cool? Then just don't use this repo and clone all repos manually into your workspace. You can just do everything how you would normally do it. Pull, change, commit and push to each repositoriy separately. However, then it is your responsiblity to keep everything up to date on your system and consistency to other modules may not be guaranteed.

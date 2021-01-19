# Turret_Surveillance_System

Change environment variables (for Windows):

```
setx ROS_IP "{YOUR_IP_HERE"}
setx ROS_HOSTAME_IP "{YOUR_IP_HERE"}
setx ROS_MASTER_URI "http://192.168.2.69:11311"
```

You can find IP address by typing the following command into console (for Windows):
```
ipconfig
```
(Your IP is the value next to IPv4)


After downloading the repo, remember to source the setup by running:
```
cmd /k devel\setup.bat
```

# OpenCV in Ros

Add OpenCV such that ROS can detect where the libraries are.
1. Download OpenCV 3.4.2 https://opencv.org/releases/page/3/
2. Move the opencv folder to your C: drive

A Very Messy Demo of the Turret Surveillence System
![Demo of turret system](https://github.com/ih4kim/Turret_Surveillance_System/blob/master/ezgif.com-gif-maker.gif)

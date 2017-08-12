It is said docker was not designed for GUI. However, docker is still a pretty good option for Windows users to have a Linux GUI environment without the VMs.

![lxqt](https://github.com/rookiepeng/Docker-Files/blob/master/Arch-LXQt/images/lxqt.png)

# Usage for Windows

**PowerShell**
```
docker run -it `
	--net bridge `
	-e DISPLAY=10.0.75.1:0 `
	-h archdocker `
	--name arch-lxqt `
	rookiepeng/arch-lxqt
```

* Install [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
* Start [VcXsrv](https://sourceforge.net/projects/vcxsrv/) by using ***XLaunch*** shortcut
* Use ***Fullscreen*** or ***One large window***.
* On ***Extra settings*** page, check ***Disable access control***.
* On the shell of the image, run
```
startlxqt &
```

**Known Issue on Windows**

* The application menu doesn't work if a volume is mounted to *"/home"*
```
-v /c/Docker/lxqt:/home/archie
```

# Usage for Linux (Untested)

Change *"\<Volume\>"* to the shared directory.
```
docker run -it \
	-v <Volume>:/home/archie \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=unix$DISPLAY \
	-h archdocker \
	--name arch-lxqt \
	rookiepeng/arch-lxqt
```

# Note

* The default password for user archie is ***archie***, please change the password on first run.


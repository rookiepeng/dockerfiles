It is said docker was not designed for GUI. However, docker is still a pretty good option for Windows users to have a Linux GUI environment without the VMs.

![xfce4](https://github.com/rookiepeng/Docker-Files/blob/master/Arch-xfce4/images/xfce4.png)

# Usage for Windows

**PowerShell**
```
docker run -it `
  --net bridge `
  -e DISPLAY=10.0.75.1:0 `
  -v /c/Docker/xfce4:/home/archie `
  -h archdocker `
  --name arch-xfce4 `
  rookiepeng/arch-xfce4
```

* Install [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
* Start [VcXsrv](https://sourceforge.net/projects/vcxsrv/) by using ***XLaunch*** shortcut
* Use ***Fullscreen*** or ***One large window***.
* On ***Extra settings*** page, check ***Disable access control***.
* On the shell of the docker image, run
```
startxfce4 &
```

# Usage for Linux (Untested)

Change *"\<Volume\>"* to the shared directory.
```
docker run -it \
  -v <Volume>:/home/archie \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -h archdocker \
  --name arch-xfce4 \
  rookiepeng/arch-xfce4
```

* On the shell of the docker image, run
```
startxfce4 &
```

# Note

* The default password for user archie is ***archie***, please change the password on first run.


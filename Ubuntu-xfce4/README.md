# Usage for Windows

* Install [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
* Start [VcXsrv](https://sourceforge.net/projects/vcxsrv/) by using ***XLaunch*** shortcut
* Use ***Multiple widnows***.
* On ***Extra settings*** page, check ***Disable access control***.

**PowerShell**
```
docker run -it `
  --net bridge `
  -e DISPLAY=10.0.75.1:0 `
  -v /c/Docker/ubuntu:/home/ubuntu `
  -h ubuntudocker `
  --name ubuntu-xfce4 `
  rookiepeng/ubuntu-xfce4
```

# Usage for Linux (Untested)

Change *"\<Volume\>"* to the shared directory.
```
docker run -it \
  -v <Volume>:/home/ubuntu \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -h ubuntudocker \
  --name ubuntu-xfce4 \
  rookiepeng/ubuntu-xfce4
```

# Note

* The default password for user ubuntu is ***ubuntu***, please change the password on first run.


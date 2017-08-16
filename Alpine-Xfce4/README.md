# Xfce4 desktop on Alpine Linux

**Known Issue on Windows**

* Xfce confgurations don't work.

## Usage on Windows

* Install [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
* Start [VcXsrv](https://sourceforge.net/projects/vcxsrv/) by using ***XLaunch*** shortcut
* Use ***Fullscreen*** or ***One large window***.
* On ***Extra settings*** page, check ***Disable access control***.

**PowerShell**
```
docker run -it `
  --net bridge `
  -e DISPLAY=10.0.75.1:0 `
  -v /c/Docker/xfce4:/home/alpine `
  -h alpinedocker `
  --name alpine-xfce4 `
  rookiepeng/alpine-xfce4
```

## Usage on Linux

Change *"\<Volume\>"* to the shared directory.
```
docker run -it \
  -v <Volume>:/home/alpine \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -h alpinedocker \
  --name alpine-xfce4 \
  rookiepeng/alpine-xfce4
```

### Note

* The default password for user alpine is ***alpine***, please change the password on first run.

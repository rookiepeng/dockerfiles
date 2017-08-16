# Usage for Windows

* Install [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
* Start [VcXsrv](https://sourceforge.net/projects/vcxsrv/) by using ***XLaunch*** shortcut
* Use ***Fullscreen*** or ***One large window***.
* On ***Extra settings*** page, check ***Disable access control***.

**PowerShell**
```
docker run -it `
  --net bridge `
  -e DISPLAY=10.0.75.1:0 `
  -v /c/Docker/awesome:/root `
  -h alpinedocker `
  --name alpine-awesome `
  rookiepeng/alpine-awesome
```

**Known Issue on Windows**

* Xfce confgurations don't work.

# Usage for Linux (Untested)

Change *"\<Volume\>"* to the shared directory.
```
docker run -it \
  -v <Volume>:/root \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -h alpinedocker \
  --name alpine-awesome \
  rookiepeng/alpine-awesome
```

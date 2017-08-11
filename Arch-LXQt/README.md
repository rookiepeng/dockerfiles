# Usage for Windows PowerShell

docker run -it `
--net bridge `
-e DISPLAY=10.0.75.1:0 `
-v /c/Docker/lxqt:/root `
-h archdocker `
--name arch-lxqt `
rookiepeng/arch-lxqt

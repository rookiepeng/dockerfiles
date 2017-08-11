# Usage for Windows PowerShell

docker run -it `
--net bridge `
-e DISPLAY=10.0.75.1:0 `
-v /c/Docker/archie:/home/archie `
-h archdocker `
--name arch-xfce4 `
rookiepeng/arch-xfce4

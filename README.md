# nvm-windows-noadmin
windows 下的 node 版本切换工具脚本，允许非管理员权限执行 node版本切换

# How to use

1. 下载 nvm.bat 到你的电脑，比如 我希望 放在`C:\MyData\Tools\nvm-noinstall` 目录下
2. 在windows 中搜索 `环境变量`，并打开`编辑账户的环境变量`，添加 `NODE_ROOT` 变量，并将其提娜佳到 Path中
  <img width="1141" height="665" alt="image" src="https://github.com/user-attachments/assets/bf991968-b7f4-4320-8de3-7b8d87ac838e" />

4. 从 https://nodejs.org/zh-cn/download  手动下载你需要的 node版本，并解压到如 `C:\MyData\Tools\nvm-noinstall\v16.20.2` 像下面这样：
   <img width="649" height="165" alt="image" src="https://github.com/user-attachments/assets/17b40545-582a-420e-b80c-e645289c39c5" />

5. 注意：如果你的node版本不在 `nvm.bat` 中 ，请手动修改它符合您的设置
   ```bat
   set "NODE_VER_16=v16.20.2"
   set "NODE_VER_18=v18.20.8"
   ```
   <img width="635" height="795" alt="image" src="https://github.com/user-attachments/assets/4ced9d97-b293-4cc4-aa04-d6ea786d8053" />

6. 通过执行 `nvm use 18` 可以 切换到node 18 ,它 跟 nvm-window 有一样的效果，而且不需要任何管理员权限，您需要做的，仅仅是重启 IDE 或 命令行工具
7. 其他命令： `nvm ls` 列出目前的安装信息

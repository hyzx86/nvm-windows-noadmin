@echo off
::设置为 UTF-8 编码
chcp 65001 > nul  
setlocal

set "NVM_DIR=C:\MyData\Tools\nvm-noinstall"
set "NODE_VER_16=v16.20.2"
set "NODE_VER_18=v18.20.8"

:: 检查参数数量
if "%1"=="" (
    echo 请指定命令: use 或 ls
    goto :END
)

if "%1"=="use" (
    :: 处理 use 命令
    if "%2"=="" (
        echo 请指定版本号: 16 或 18
        goto :END
    )
    
    if "%2"=="16" (
        setx NODE_ROOT "%NVM_DIR%\%NODE_VER_16%" 
        echo 已将 NODE_ROOT 设置为 %NVM_DIR%\%NODE_VER_16%
        echo node版本已更新，请重启控制台会话（包括IDE）
        goto :END
        @REM @pause
        @REM start cmd
        @REM exit
    ) else if "%2"=="18" (
        setx NODE_ROOT "%NVM_DIR%\%NODE_VER_18%" 
        echo 已将 NODE_ROOT 设置为 %NVM_DIR%\%NODE_VER_18%
        echo node版本已更新，请重启控制台会话（包括IDE）
        goto :END
        @REM @pause
        @REM start cmd
        @REM exit
    ) else (
        echo 不支持的版本号: %2
        echo 支持的版本: 16, 18
    )
) else if "%1"=="ls" (
    :: 处理 ls 命令
    echo 可用的 Node.js 版本:
    dir /B /AD "%NVM_DIR%\v*"
) else (
    echo 未知命令: %1
    echo 支持的命令: use, ls
)

:: 显示当前 NODE_ROOT 值
echo.
echo 当前 NODE_ROOT 值（修改后需要重启命令窗口或IDE，重新执行 nvm ls 查看）:
echo %NODE_ROOT%

:END
endlocal    
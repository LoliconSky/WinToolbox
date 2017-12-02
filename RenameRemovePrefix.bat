@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0A
TITLE keith batch rename tool
ECHO.
ECHO =================================
ECHO   欢迎使用文件名批量去前缀工具
ECHO.
ECHO  注：原理是将指定字符串替换为空
ECHO =================================
ECHO.
ECHO.
SET /p prefix="请输入需要去除的前缀: "
ECHO.
ECHO. 
for /f "delims=" %%i in ('dir /b *') do ( 
echo %%i  
set var=%%i  
set var=!var:%prefix%=!
echo %%i !var!  
ren "%%i" "!var!"  
)
ECHO.
PAUSE


rem 优先级：先 %1 或 %var% 再 !var!
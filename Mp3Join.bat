@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0A
TITLE Kerronex tool
ECHO.
ECHO =================================
ECHO   欢迎使用 MP3 合并工具
ECHO.
ECHO   默认按照文件自然顺序合并
ECHO.
ECHO   By：Amy
ECHO =================================
ECHO.
SET DIR="%~dp0"
ECHO 当前目录：%DIR%
ECHO.
PAUSE

SET /a index=1
ECHO.
ECHO.
for /R %DIR% %%a in (*.MP3) do (
	SET filename=%%~na%%~xa
	ECHO  !index! !filename!
	set /a index += 1
)

ECHO.
ECHO 请确认文件合并顺序是否正确！
ECHO.
PAUSE

for /r %%f in (*.mp3) do if "%%~xf"==".mp3" set "file="%%~f"+!file!"
copy /b !file:~,-1! "All.mp3"

ECHO.
ECHO 合成完毕，请确认当前文件夹下的 All.mp3 文件！
PAUSE
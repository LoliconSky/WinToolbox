@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0A
TITLE Kerronex tool
ECHO.
ECHO =================================
ECHO   ��ӭʹ�� MP3 �ϲ�����
ECHO.
ECHO   Ĭ�ϰ����ļ���Ȼ˳��ϲ�
ECHO.
ECHO   By��Amy
ECHO =================================
ECHO.
SET DIR="%~dp0"
ECHO ��ǰĿ¼��%DIR%
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
ECHO ��ȷ���ļ��ϲ�˳���Ƿ���ȷ��
ECHO.
PAUSE

for /r %%f in (*.mp3) do if "%%~xf"==".mp3" set "file="%%~f"+!file!"
copy /b !file:~,-1! "All.mp3"

ECHO.
ECHO �ϳ���ϣ���ȷ�ϵ�ǰ�ļ����µ� All.mp3 �ļ���
PAUSE
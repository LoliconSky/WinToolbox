@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0A
TITLE keith batch rename tool
ECHO.
ECHO =================================
ECHO   ��ӭʹ���ļ�������ȥǰ׺����
ECHO.
ECHO  ע��ԭ���ǽ�ָ���ַ����滻Ϊ��
ECHO =================================
ECHO.
ECHO.
SET /p prefix="��������Ҫȥ����ǰ׺: "
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


rem ���ȼ����� %1 �� %var% �� !var!
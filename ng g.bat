@echo off
:PROMPT
SET /P TYPE=What type of component are you generating (c, s, p, d,...)? 
echo ---------------------------------------------------------- 
echo Enter the path. Path name ends with component name. Example:
echo app\ui\technical\users\UsersTable
echo ----------------------------------------------------------
SET /P FOLDERPATH=Path? app\
SET command=npm run ng g %TYPE% %FOLDERPATH% %NAME%
echo ----------------------------------------------------------
echo %command%
echo ----------------------------------------------------------
SET /P AREYOUSURE=Are you sure you want to execute this command (y/n)? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
call %command%
PAUSE
:END
@echo off
:BEGIN
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
IF /I "%AREYOUSURE%" NEQ "y" GOTO END
call %command%
SET /P GOAGAIN=Do you want to generate something else? (y/n)? 
IF /I "%GOAGAIN%" == "y" GOTO BEGIN
:END
wmic process where name='nginx.exe' call  terminate 
rd /q  %~dp0nginx-1.9.9\html
mklink /d %~dp0nginx-1.9.9\html %1
@call %~dp0nginx-1.9.9\nginx
%~d0
@cd %~dp0nginx-1.9.9
call nginx.exe
pause

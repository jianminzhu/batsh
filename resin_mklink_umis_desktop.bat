
set webdir= 
rd /q %~dp0resin-4.0.48\webapps\ROOT
mklink /d %~dp0resin-4.0.48\webapps\ROOT  %webdir% 
pause
@echo off 

if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin

cd /d E:\workSpace\clock-out-reminder
go run .\main.go
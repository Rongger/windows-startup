@echo off&(cd/d "%~dp0")&(cacls "%SystemDrive%\System Volume Information" >nul 2>&1)||(start "" mshta vbscript:CreateObject^("Shell.Application"^).ShellExecute^("%~snx0"," %*","","runas",1^)^(window.close^)&exit /b)

# 指定发行版子系统，添加一个 eth0:1 网卡，IP 为 10.10.1.227
wsl -d Ubuntu -u root ip addr add 10.10.1.227/24 broadcast 10.10.1.255 dev eth0 label eth0:1

# 在Win10中添加IP地址 10.10.1.228
netsh interface ip add address "vEthernet (WSL)" 10.10.1.228 255.255.255.0
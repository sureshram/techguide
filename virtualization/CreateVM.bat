set VBHOME=c:\Program Files\Oracle\VirtualBox
set VBEXE="%VBHOME%\VBoxManage.exe"
set VBGUESTISO="C:\Program Files\Oracle\VirtualBox\VBoxGuestAdditions.iso"

%VBEXE% createvm --name "io" --register
%VBEXE% modifyvm "io" --memory 2048 --acpi on --boot1 dvd
%VBEXE% modifyvm "io" --vram 15

@rem %VBEXE% modifyvm "io" --nic1 bridged --bridgeadapter1 eth0
%VBEXE% modifyvm "io" --nic1 nat
%VBEXE% modifyvm "io" --macaddress1 auto	
%VBEXE% modifyvm "io" --ostype Linux
%VBEXE% createhd --filename io/io.vdi --size 10000
%VBEXE% storagectl "io" --name "IDE Controller" --add ide
%VBEXE% storageattach "io" --storagectl "IDE Controller"  --port 0 --device 0 --type hdd --medium io/io.vdi
%VBEXE% storageattach "io" --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium ubuntu-14.04-server-amd64.iso	
REM %VBEXE% storageattach "io" --storagectl "IDE Controller" --port 1 --device 0 --type hdd --medium %VBGUESTISO%

"%VBHOME%\VBoxHeadless" --startvm "io" &


REM install stuff
REM mkdir /mnt/dvd
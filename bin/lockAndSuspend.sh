#!/bin/bash
amountDisplays=`xrandr | grep -c " connected "`
if [ "$amountDisplays" -ne "1" ];
then
	echo "all external displays must be disconnected"
	exit 1
fi
i3-msg restart
VBoxManage controlvm "debian for surfing" pause || true
VBoxManage controlvm "ubuntu" pause || true
i3lock -c 000000
systemctl suspend

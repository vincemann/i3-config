#!/bin/bash
running=`VBoxManage showvminfo "$1" | grep State | grep running`
echo "$running"
if [ -z "$running" ];
then
	VBoxManage controlvm "$1" resume
else
	VBoxManage controlvm "$1" pause
fi

#!/bin/bash
while IFS="" read -r p || [ -n "$p" ] 
do
  echo "starting vm: $p"
  VBoxManage startvm "$p"
done < ~/.config/i3/vms

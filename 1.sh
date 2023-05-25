#!/bin/bash
wget https://raw.githubusercontent.com/GreatMedivack/files/master/list.out  
cat list.out | grep 'Running' | awk '{print $1}' > ./$(hostname)_$(date +"%d_%m_%Y").out
rm -r list.out
mkdir archives
tar -cvzf ./archives/$(hostname)_$(date +"%d_%m_%Y").tar.gz ./$(hostname)_$(date +"%d_%m_%Y").out
tar -tvzf ./archives/$(hostname)_$(date +"%d_%m_%Y").tar.gz > /dev/null
# Не должно быть никаких ошибок

#!/bin/bash
wget https://raw.githubusercontent.com/GreatMedivack/files/master/list.out  
cat list.out | grep 'Running' | awk '{print $1}' > ./$(hostname)_$(date +"%d_%m_%Y").out
mkdir -p archives
tar -cvzf ./archives/$(hostname)_$(date +"%d_%m_%Y").tar.gz ./$(hostname)_$(date +"%d_%m_%Y").out
tar -tvzf ./archives/$(hostname)_$(date +"%d_%m_%Y").tar.gz > /dev/null && echo Успешное завершение работы || echo Ошибка

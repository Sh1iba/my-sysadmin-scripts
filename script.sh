#!/bin/bash
readonly TIME_INTERVAL=5

for cmd in free df uptime; do
    if ! command -v "$cmd" &> /dev/null; then
        echo "Ошибка: команда $cmd не найдена в системе" >&2
        exit 1
    fi
done

while true; do
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
echo "---- $TIMESTAMP ----" >> monitor.log
echo "" >> monitor.log

echo "---- free -h ----" >> monitor.log
free -h >> monitor.log
echo "" >> monitor.log 

echo "---- df -h ----" >> monitor.log
df -h >> monitor.log
echo "" >> monitor.log 

echo "---- uptime ----" >> monitor.log
uptime >> monitor.log 
echo "" >> monitor.log 

sleep "$TIME_INTERVAL"

done

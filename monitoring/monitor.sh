#!/bin/sh

while true; do
    echo \
    $(date "+%H:%M:%S") \
    $(java -jar jmxterm-1.0.2-uber.jar -l localhost:31001 -i ./monitoring.jmx -v silent -a -n) \
    >> monitor.csv
done

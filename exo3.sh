#!/bin/bash

mapfile -t data < config.txt
for ((i=1; i<=${#data[@]}; i++)); do
    line="${data[$i-1]}"
    if [[ $line != "ArrayTaskID"* ]]; then
        ArrayTaskID=$(echo "$line" | awk '{print $1}')
        SampleName=$(echo "$line" | awk '{print $2}')
        Sex=$(echo "$line" | awk '{print $3}')
        echo "This is array task $ArrayTaskID, the sample name is $SampleName and the sex is $Sex." >> output.txt
    fi
done


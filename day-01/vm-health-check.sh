#!/bin/bash

# Threshold for health status
threshold=60

# Get CPU usage (1-minute load average in percentage)
cpu_usage=$(awk '{print $1 * 100}' /proc/loadavg)
cpu_usage=${cpu_usage%.*}  # Convert to integer

# Get memory usage percentage
mem_usage=$(free | awk '/Mem/ {printf("%.0f", $3/$2 * 100)}')

# Get disk usage percentage (root partition)
disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# Determine health status
if [[ $cpu_usage -lt $threshold && $mem_usage -lt $threshold && $disk_usage -lt $threshold ]]; then
    status="Healthy"
else
    status="Unhealthy"
fi

# Output health status
if [[ "$1" == "--explain" ]]; then
    echo "Health Status: $status"
    echo "Reason:"
    echo "  CPU Usage: $cpu_usage%"
    echo "  Memory Usage: $mem_usage%"
    echo "  Disk Usage: $disk_usage%"
else
    echo "Health Status: $status"
fi

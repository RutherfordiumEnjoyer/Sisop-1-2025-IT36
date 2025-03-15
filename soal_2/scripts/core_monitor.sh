#!/bin/bash

# Path log file
LOG_FILE="/home/remmyg0d/arcaea/log/core.log"

# Ambil waktu sekarang
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Ambil penggunaan CPU dalam persen (1 detik interval)
CPU_USAGE=$(top -bn2 | grep "Cpu(s)" | tail -n 1 | awk '{print $2 + $4}')

# Ambil model CPU
CPU_MODEL=$(grep "model name" /proc/cpuinfo | head -n 1 | awk -F ': ' '{print $2}')

# Format output
LOG_ENTRY="[${TIMESTAMP}] - Core Usage [${CPU_USAGE}%] - Terminal Model [${CPU_MODEL}]"

# Simpan ke log file
echo "$LOG_ENTRY" >> "$LOG_FILE"

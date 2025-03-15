#!/bin/bash

# Path log file
LOG_FILE="/home/remmyg0d/arcaea/log/fragment.log"

# Ambil waktu sekarang
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Ambil informasi RAM (dalam KB, perlu dikonversi ke MB)
RAM_TOTAL_KB=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
RAM_AVAILABLE_KB=$(awk '/MemAvailable/ {print $2}' /proc/meminfo)
RAM_USED_KB=$((RAM_TOTAL_KB - RAM_AVAILABLE_KB))

# Konversi ke MB (dibagi 1024)
RAM_TOTAL=$((RAM_TOTAL_KB / 1024))
RAM_AVAILABLE=$((RAM_AVAILABLE_KB / 1024))
RAM_USED=$((RAM_USED_KB / 1024))

# Hitung persentase penggunaan RAM
RAM_PERCENT=$(awk "BEGIN {printf \"%.2f\", (${RAM_USED}/${RAM_TOTAL}) * 100}")

# Format output sesuai soal
LOG_ENTRY="[${TIMESTAMP}] - Fragment Usage [${RAM_PERCENT}%] - Fragment Count [${RAM_USED} MB] - Details [Total: ${RAM_TOTAL} MB, Available: ${RAM_AVAILABLE} MB]"

# Simpan ke log file
echo "$LOG_ENTRY" >> "$LOG_FILE"

#!/bin/bash

CRON_FILE=~/arcaea/scripts/cron_jobs
CORE_SCRIPT=~/arcaea/scripts/core_monitor.sh
FRAG_SCRIPT=~/arcaea/scripts/frag_monitor.sh

# Fungsi menampilkan menu
show_menu() {
    echo "========== CRON MANAGER =========="
    echo "1) Add CPU [Core] Usage Monitoring"
    echo "2) Remove CPU [Core] Usage Monitoring"
    echo "3) Add RAM [Fragment] Usage Monitoring"
    echo "4) Remove RAM [Fragment] Usage Monitoring"
    echo "5) View Active Jobs"
    echo "6) Exit"
    echo "=================================="
}

# Fungsi menambahkan tugas crontab
add_cron() {
    (crontab -l 2>/dev/null; echo "@reboot bash $1 &") | crontab -
    echo "Added $1 to crontab."
}

# Fungsi menghapus tugas crontab
remove_cron() {
    crontab -l | grep -v "$1" | crontab -
    echo "Removed $1 from crontab."
}

# Fungsi menampilkan tugas aktif
view_cron() {
    echo "Active Cron Jobs:"
    crontab -l
}

# Main Menu
while true; do
    show_menu
    read -p "Choose an option: " CHOICE
    case "$CHOICE" in
        1) add_cron "$CORE_SCRIPT" ;;
        2) remove_cron "$CORE_SCRIPT" ;;
        3) add_cron "$FRAG_SCRIPT" ;;
        4) remove_cron "$FRAG_SCRIPT" ;;
        5) view_cron ;;
        6) exit 0 ;;
        *) echo "Invalid option!" ;;
    esac
    echo ""
done

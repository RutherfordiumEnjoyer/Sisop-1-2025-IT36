#!/bin/bash

REGISTER=~/arcaea/register.sh
LOGIN=~/arcaea/login.sh
MANAGER=~/arcaea/scripts/manager.sh

# Fungsi menampilkan menu utama
show_menu() {
    echo "========== ARCAEA SYSTEM =========="
    echo "1) Register"
    echo "2) Login"
    echo "3) Crontab Manager"
    echo "4) Exit"
    echo "==================================="
}

# Main Loop
while true; do
    show_menu
    read -p "Choose an option: " CHOICE
    case "$CHOICE" in
        1) 
            read -p "Enter email: " EMAIL
            read -p "Enter username: " USERNAME
            read -s -p "Enter password: " PASSWORD
            echo ""
            bash "$REGISTER" "$EMAIL" "$USERNAME" "$PASSWORD"
            ;;
        2)
            read -p "Enter email: " EMAIL
            read -s -p "Enter password: " PASSWORD
            echo ""
            bash "$LOGIN" "$EMAIL" "$PASSWORD"
            ;;
        3) bash "$MANAGER" ;;
        4) exit 0 ;;
        *) echo "Invalid option!" ;;
    esac
    echo ""
done

#!/bin/bash

DATA_FILE=~/arcaea/data/player.csv
SALT="arcaea_salt"

# Fungsi validasi email
validate_email() {
    [[ "$1" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]
}

# Fungsi validasi password
validate_password() {
    [[ "$1" =~ [A-Z] ]] && [[ "$1" =~ [a-z] ]] && [[ "$1" =~ [0-9] ]] && [[ ${#1} -ge 8 ]]
}

# Input parameter
EMAIL="$1"
USERNAME="$2"
PASSWORD="$3"

# Validasi input
if [[ -z "$EMAIL" || -z "$USERNAME" || -z "$PASSWORD" ]]; then
    echo "Usage: $0 <email> <username> <password>"
    exit 1
fi

if ! validate_email "$EMAIL"; then
    echo "Invalid email format."
    exit 1
fi

if ! validate_password "$PASSWORD"; then
    echo "Password must be at least 8 characters long, contain one uppercase letter, one lowercase letter, and one number."
    exit 1
fi

# Cek apakah email sudah digunakan
if grep -q "^$EMAIL," "$DATA_FILE"; then
    echo "Email already registered."
    exit 1
fi

# Hash password dengan SHA-256
HASHED_PASSWORD=$(echo -n "$PASSWORD$SALT" | sha256sum | awk '{print $1}')

# Simpan ke database
echo "$EMAIL,$USERNAME,$HASHED_PASSWORD" >> "$DATA_FILE"
echo "Registration successful."

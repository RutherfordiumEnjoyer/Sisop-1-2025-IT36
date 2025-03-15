#!/bin/bash

DATA_FILE=~/arcaea/data/player.csv
SALT="arcaea_salt"

# Input parameter
EMAIL="$1"
PASSWORD="$2"

# Validasi input
if [[ -z "$EMAIL" || -z "$PASSWORD" ]]; then
    echo "Usage: $0 <email> <password>"
    exit 1
fi

# Hash password untuk verifikasi
HASHED_PASSWORD=$(echo -n "$PASSWORD$SALT" | sha256sum | awk '{print $1}')

# Cek kredensial
if grep -q "^$EMAIL,.*,$HASHED_PASSWORD$" "$DATA_FILE"; then
    echo "Login successful."
else
    echo "Invalid email or password."
    exit 1
fi

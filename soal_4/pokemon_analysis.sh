#!/bin/bash

# Periksa apakah jumlah argumen mencukupi
if [ $# -lt 2 ]; then
    echo "Error: Missing arguments."
    echo "Use -h or --help for more information."
    exit 1
fi

# Nama file CSV
FILE="$1"
OPTION="$2"

# Periksa apakah file ada
if [ ! -f "$FILE" ]; then
    echo "Error: File $FILE not found!"
    exit 1
fi

# Help Screen
if [ "$OPTION" = "-h" ] || [ "$OPTION" = "--help" ]; then
    echo "============================================="
    echo "⠀⠀⠀⠲⣦⣤⣀⣀⠀⠀⠀⣀⣀⣠⣤⣀⣀⠀⢀⣀⣠⣤⣶⣶⠟⠀⠀⠀"
    echo " ⠀⠀⠀⠀⠙⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀"
    echo " ⠀⠀⠀⠀⠀⠈⢿⣿⣿⠻⣿⣿⣿⣿⣿⣿⣿⠟⢻⣿⣿⡿⠃⠀⠀⠀⠀⠀"
    echo " ⠀⠀⠀⠲⣶⣶⣾⣿⣿⠀⢨⠙⢿⣿⣿⠏⣅⠀⢸⣿⣿⣷⣾⠟⠁⠀⠀⠀"
    echo " ⠀⠀⠀⠀⠈⠻⢿⣿⣿⢷⣶⣶⣾⣿⣿⣶⣶⣾⠟⣿⣿⣿⣋⠀⠀⠀⠀⠀"
    echo " ⠀⠀⢀⣀⣀⠐⢶⣿⣿⣧⠁⠀⠋⠁⠈⠋⠀⢀⣾⣿⣿⡿⣷⣶⠀⠀⠀⠀"
    echo " ⠀⠀⣼⣿⣿⣷⣤⣙⣿⣿⣷⣶⣶⣴⣴⣴⣶⣿⣿⣿⠟⣡⣿⣿⣧⣄⣀⡀"
    echo " ⢀⣤⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⡿⠿⣿⣿⣿⣿"
    echo " ⣿⡿⠛⠿⠟⠉⠉⠉⠸⠋⠀⠻⡿⣿⣿⣿⣿⠻⠇⠀⠀⠈⠀⠀⠈⠉⢸⠃"
    echo " ⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⢿⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "============================================="
    echo "Usage: ./pokemon_analysis.sh <file_name> [options]"
    echo "Options:"
    echo "  -h, --help            Display this help message."
    echo "  -i, --info            Display the highest adjusted and raw usage."
    echo "  -s, --sort <method>   Sort the data by the specified column."
    echo "                        Methods: name, usage, raw, hp, atk, def, spatk, spdef, speed."
    echo "  -g, --grep <name>     Search for a specific Pokemon sorted by usage."
    echo "  -f, --filter <type>   Filter by type of Pokemon sorted by usage."
    echo "============================================="
    exit 0
fi

# Info (Batch 1)
if [ "$OPTION" = "-i" ] || [ "$OPTION" = "--info" ]; then
    awk -F',' 'NR==1 {print; next} {print | "sort -t, -k2,2nr"; exit}' "$FILE"
    exit 0
fi

# Sort (Batch 2)
if [ "$OPTION" = "-s" ] || [ "$OPTION" = "--sort" ]; then
    if [ -z "$3" ]; then
        echo "Error: No sort method provided."
        exit 1
    fi
    METHOD="$3"
    case "$METHOD" in
        name) COLUMN=1 ;;
        usage) COLUMN=2 ;;
        raw) COLUMN=3 ;;
        hp) COLUMN=6 ;;
        atk) COLUMN=7 ;;
        def) COLUMN=8 ;;
        spatk) COLUMN=9 ;;
        spdef) COLUMN=10 ;;
        speed) COLUMN=11 ;;
        *) echo "Error: Invalid sort method."; exit 1 ;;
    esac
    { head -n 1 "$FILE"; tail -n +2 "$FILE" | sort -t',' -k${COLUMN},${COLUMN}nr -n; } 
    exit 0
fi

# Grep (Batch 3)
if [ "$OPTION" = "-g" ] || [ "$OPTION" = "--grep" ]; then
    if [ -z "$3" ]; then
        echo "Error: No Pokemon name provided."
        exit 1
    fi
    { head -n 1 "$FILE"; awk -F',' -v name="$3" 'NR==1 || tolower($1) ~ tolower(name)' "$FILE" | sort -t',' -k2,2nr; } 
    exit 0
fi

# Filter (Batch 4)
if [ "$OPTION" = "-f" ] || [ "$OPTION" = "--filter" ]; then
    if [ -z "$3" ]; then
        echo "Error: No filter option provided."
        exit 1
    fi
    { head -n 1 "$FILE"; awk -F',' -v type="$3" 'NR > 1 && ($4 == type || $5 == type)' "$FILE" | sort -t',' -k2,2nr; } 
    exit 0
fi

# Jika tidak ada opsi yang cocok
echo "Error: Invalid option."
echo "Use -h or --help for more information."
exit 1

#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Error: Missing arguments."
    echo "Use -h or --help for more information."
    exit 1
fi

file="$1"
opsi="$2"

if [ ! -f "$file" ]; then
    echo "Error: file $file not found!"
    exit 1
fi

if [ "$opsi" = "-h" ] || [ "$opsi" = "--help" ]; then
    echo "=============================================================================================================================="
    echo "⠀⠀⠀⠲⣦⣤⣀⣀⠀⠀⠀⣀⣀⣠⣤⣀⣀⠀⢀⣀⣠⣤⣶⣶⠟⠀⠀⠀     ⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ⣀⣀⣤⣤⣤⣤⣤⣤⣀⣀⣀⣀⣀⡀⢀⣀⣀⣀⣀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀ ⣀⣀⣤⣴⠶⣦⠀"
    echo " ⠀⠀⠀⠀⠙⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀       ⠀⠀⢀⣤⡴⠶⠶⠶⢤⣤⣀⠀⠀⣠⣤⠴⠶⠶⢦⣤⡀⠀⢀⣀⣀⣀⣤⣤⣤⣤⡀⠀⢀⣀⣀⣀⣤⣤⣤⣤⠀⠀⠀⣼⠋⢻⡇⠀⠤⣤⡀⠘⠉⠉⠉⠉⠉⠛⠛⠉⠉⠉⠙⠻⢶⠟⠛⠋⠛⠛⠻⠶⢦⣤⣄⠀⠀ ⢸⡏⠉⢀⡀⠀⣿⠀"
    echo " ⠀⠀⠀⠀⠀⠈⢿⣿⣿⠻⣿⣿⣿⣿⣿⣿⣿⠟⢻⣿⣿⡿⠃⠀⠀⠀       ⠀⣴⠟⠁⣀⣠⣤⣤⣀⡈⠙⢷⡾⠋⠀⣀⣤⣤⣀⠈⠛⡟⠛⠛⠉⠙⠇⣠⣄⠘⣿⡟⠛⠛⠉⠹⠁⣤⡄⢸⡇⠀⣼⠃⢠⠀⢻⣶⠀⣿⣿⡀⠀⢸⣿⡆⠀⣶⣾⠟⠛⠛⠻⣆⠀⢰⡶⠛⠳⠶⢶⣦⡤⠀⣿⠀ ⠀⢸⡇⠘⣿⡇⠀⣿⠀"
    echo " ⠀⠀⠀⠲⣶⣶⣾⣿⣿⠀⢨⠙⢿⣿⣿⠏⣅⠀⢸⣿⣿⣷⣾⠟⠁       ⢰⡏⢀⣾⣿⡿⠛⠻⠿⠟⠀⠀⢀⣴⣿⡏⠁⣴⠋⣷⡄⠀⢸⡟⠻⣆⣀⣿⣿⠀⢿⠁⢸⠟⢻⣄⣰⣿⣧⠈⣿⣼⠋⢠⡿⣇⠈⢿⠀⣿⠘⣷⡀⢸⣿⣧⠀⠈⣿⡄⢸⣷⠀⢿⡀⠸⡄⠐⢶⣤⣄⣈⠁⣸⠇⠀⠀  ⠈⣇⠀⣿⡇⢰⡿⠀"
    echo " ⠀⠀⠀⠀⠈⠻⢿⣿⣿⢷⣶⣶⣾⣿⣿⣶⣶⣾⠟⣿⣿⣿⣋⠀⠀⠀⠀⠀    ⣾⡇⢸⣿⡏⢀⣶⣦⣤⣴⠀⢠⡟⠁⢻⡇⠀⠁⢀⣿⡇⠀⢸⡇⣠⣝⢛⣁⢸⡆⠸⠀⣾⣀⣠⣝⣋⡀⣿⡀⢹⠇⢠⡿⠀⢸⣆⠘⠀⣿⣶⠿⣧⢘⣿⣿⠀⠀⣿⡇⢸⣿⠀⢸⡇⢀⠙⢦⣄⠈⠛⢿⣿⠋⠀⠀⠀⠀  ⣿⠀⢻⠃⢸⡇⠀"
    echo " ⠀⠀⢀⣀⣀⠐⢶⣿⣿⣧⠁⠀⠋⠁⠈⠋⠀⢀⣾⣿⣿⡿⣷⣶⠀⠀⠀⠀    ⢹⡇⠸⣿⣇⠈⠻⠛⠁⠈⠀⢾⡇⠀⠀⠛⠷⠶⣿⡿⠀⠀⣼⣿⡏⠹⡟⠻⣿⣧⠀⠀⣿⣿⡏⢻⠟⢻⣿⣇⠀⢀⣿⠷⠶⠶⣿⡄⠀⣿⣿⠀⢻⡟⠉⣿⠀⠀⢹⡇⠸⠟⢀⣿⠃⢸⣷⣤⡈⠛⢦⡀⠹⣧⠀⠀⠀⠀  ⢿⣄⣤⣤⣼⠇⠀"
    echo " ⠀⠀⣼⣿⣿⣷⣤⣙⣿⣿⣷⣶⣶⣴⣴⣴⣶⣿⣿⣿⠟⣡⣿⣿⣧⣄⣀⡀    ⠈⣧⠀⠹⣿⣿⣶⣶⣿⠗⠀⠸⣧⡀⠀⢀⣠⡴⠟⠁⣰⠀⣿⣿⡇⢀⠀⠀⣿⣿⡄⠀⣿⣿⠃⡀⠀⠈⣿⠏⠀⢿⠏⢰⣶⡆⠘⣿⠀⢻⣿⠀⠀⣿⡀⣿⠀⡆⢸⣇⣀⣴⡾⠃⢀⣄⣈⠙⠛⠓⠀⣷⠀⢹⡆⠀⠀⠀  ⣴⠟⠉⠙⢻⣆⠀"
    echo " ⢀⣤⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⡿⠿⣿⣿⣿⣿   ⠀ ⠙⢷⣄⣈⠉⠉⠉⣁⣠⣶⣄⠉⠛⠛⠋⠉⢀⣠⣾⣿⠀⠉⠉⣁⣸⣿⡀⢸⣿⡇⠈⠉⢉⣀⣿⣿⠀⠏⢠⡄⠀⢠⡿⠁⢿⡄⠹⠀⠀⢻⠀⡇⠸⣷⣿⠀⡇⠘⠋⠉⣉⣠⣄⣈⠉⠛⠛⠿⠿⠿⠋⢠⡾⠁⠀⠀  ⠀⣿⡀⠘⠃⣠⡟⠀"
    echo " ⣿⡿⠛⠿⠟⠉⠉⠉⠸⠋⠀⠻⡿⣿⣿⣿⣿⠻⠇⠀⠀⠈⠀⠀⠈⠉⢸⠃    ⠀  ⠉⠛⠛⠛⠛⠋⠁⠀⠙⠿⠶⠶⠶⠾⠛⠁⠀⠛⠛⠛⠛⠛⠋⠹⢧⣤⣤⣤⣤⣿⠛⠛⠉⣻⠆⠀⠤⠄⢀⡿⠁⠀⠈⢿⡀⠀⠃⠈⠀⣿⡄⢹⣿⠀⣿⠾⠟⠛⠋⠉⠉⠙⠻⠷⠶⠦⠤⠴⠶⠛⠁⠀⠀⠀⠀  ⠈⠻⠶⠾⠟⠀⠀"
    echo " ⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⢿⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ⠻⠶⠶⠶⠶⠾⠃⠀⠀⠀⠘⣷⡀⠒⠂⠐⣿⣷⣀⣀⣀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ⠘⠛⠛⠛⠛⠋⠈⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "=============================================================================================================================="
    echo "Cara penggunaan: ./pokemon_analysis.sh <namafile> [opsi]"
    echo "opsi:"
    echo "  -h, --help            Menampilkan display ini."
    echo "  -i, --info            Menampilkan pokemon dengan Usage dan RawUsage tertinggi."
    echo "  -s, --sort <metode>   Menyortir data sesuai metodenya masing masing secara descending."
    echo "                        Metode: name, usage, raw, hp, atk, def, spatk, spdef, speed."
    echo "  -g, --grep <nama>     Menampilkan info sesuai nama pokemon yang diberikan."
    echo "  -f, --filter <tipe>   Menampilkan pokemon yang memiliki tipe tertentu."
    echo "============================================="
    exit 0
fi

if [ "$opsi" = "-i" ] || [ "$opsi" = "--info" ]; then
    echo "========================================="
    echo "🏆 Pokemon dengan Tingkat Penggunaan Tertinggi 🏆 "
    echo "========================================="

    awk -F',' 'NR > 1 { if ($2+0 > max1) { max1=$2+0; name1=$1 } if ($3+0 > max2) { max2=$3+0; name2=$1 } } \
    END { print "🔥 Pokemon dengan Usage% tertinggi: "; print "Highest Adjusted Usage: " name1, max1 "%"; \
    print "⚡ Pokemon dengan RawUsage tertinggi: "; print "Highest Raw Usage: " name2, max2 " uses" }' "$file"
    
    exit 0
fi

if [ "$opsi" = "-s" ] || [ "$opsi" = "--sort" ]; then
    if [ -z "$3" ]; then
        echo "Error: No sort method provided."
        exit 1
    fi
    metode="$3"
    declare -A pilihan
    pilihan=( [name]=1 [usage]=2 [raw]=3 [hp]=6 [atk]=7 [def]=8 [spatk]=9 [spdef]=10 [speed]=11 )
    
    if [[ -z "${pilihan[$metode]}" ]]; then
        echo "Error: Invalid sort method."
        exit 1
    fi
    
    col=${pilihan[$metode]}
    if [ "$metode" = "name" ]; then
        sort -t, -k${col},${col} -n "$file"
    else
        sort -t, -k${col},${col} -nr "$file"
    fi
    exit 0
fi

if [ "$opsi" = "-g" ] || [ "$opsi" = "--grep" ]; then
    if [ -z "$3" ]; then
        echo "Error: No Pokemon name provided."
        exit 1
    fi
    awk -F',' -v name="$3" 'NR==1 || tolower($1) ~ tolower(name)' "$file"
    exit 0
fi

if [ "$opsi" = "-f" ] || [ "$opsi" = "--filter" ]; then
    if [ -z "$3" ]; then
        echo "Error: No filter option provided."
        exit 1
    fi
    awk -F',' -v type="$3" 'NR > 1 && (tolower($4) == tolower(type) || tolower($5) == tolower(type))' "$file"
    exit 0
fi

echo "Error: no filter option provided"
echo "Use -h or --help for more information."
exit 1

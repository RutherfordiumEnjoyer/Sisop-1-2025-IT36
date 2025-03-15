#!/bin/bash
wget "https://drive.usercontent.google.com/u/0/uc?id=1l8fsj5LZLwXBlHaqhfJVjz_T0p7EJjqV&export=download" -O reading_data.csv
name_file='reading_data.csv'
echo 'abcd'
read -p 'masukan huruf : ' pilihan

if [[ "$pilihan" == "a" ]]; then
awk -F, '$2 == "Chris Hemsworth" { count++ } END { print "Chris Hemsworth membaca " count " buku." }' "$name_file"
elif [[ "$pilihan" == "b" ]]; then
awk -F, '$8 == "Tablet" { jumlah+=$6 ;count++} END { print "Rata-rata durasi membaca dengan Tablet adalah " jumlah / count " menit."}' "$name_file"

elif [[ "$pilihan" == "c" ]]; then
awk -F, 'NR>1 && $7 > max { max=$7; nama=$2; judul=$3 } END { print "Pembaca dengan rating tertinggi:", nama, "-", judul, "-", max }' "$name_file"
elif [[ "$pilihan" == "d" ]]; then
awk -F, 'NR>1 && $9=="Asia" && $5 >= "2023-12-31" { genre[$4]++ } END { for (x in genre) if (genre[x] > max) { max=genre[x]; populer=x } print "Genre paling populer di Asia setelah 2023 adalah", populer, "dengan", max, "buku" }' "$name_file"
else echo 'x'

fi

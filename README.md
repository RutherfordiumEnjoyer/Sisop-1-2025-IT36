# SISOP-1-2024-IT36

Anggota Kelompok
|     Nrp    |                Nama              |
|-----       | -----                            |
|5027241106  | Mohammad Abyan Ranuaji           |
|5027241078  | Naila Raniyah Hanan              |
|5027241119  | Brilian Gibran Yohanes Salossa   |

- [Peraturan](#peraturan)
- [Soal](#soal)
- [Detail Tambahan](#detail-tambahan)
- [Penjelasan](#penjelasan)
  - [Soal 1](#soal-1)
  - [Soal 2](#soal-2)
  - [Soal 3](#soal-3)
  - [Soal 4](#soal-4)

---
## Peraturan
---
1. Waktu pengerjaan dimulai hari Senin (10 Maret 2025) setelah sesi lab hingga hari Sabtu (15 Maret 2025) pukul 23.59 WIB.
2. Praktikan diharapkan membuat laporan penjelasan dan penyelesaian soal dalam 3. bentuk Readme(github).
3. Format nama repository github “Sisop-[Nomor Modul]-2025-[Nama Kelompok]” (contoh:Sisop-1-2025-IT01).
4. Struktur repository seperti berikut:
 - **soal_1:**
     - `poppo_siroyo.sh`
   - **soal_2:**
     - `login.sh`
     - `register.sh`
     - `scripts/`
           - ` core_monitor.sh`
   - **soal_3:**
     - `dsotm.sh`
   - **soal_4:**
     - `pokemon_analysis.sh`
     
Jika melanggar struktur repo akan dianggap sama dengan curang dan menerima konsekuensi sama dengan melakukan kecurangan.

5. Setelah pengerjaan selesai, semua script bash, awk, dan file yang berisi cron job ditaruh di github masing - masing kelompok, dan link github diletakkan pada form yang disediakan. Pastikan github di setting ke publik.
6. Commit terakhir maksimal 10 menit setelah waktu pengerjaan berakhir. Jika melewati maka akan dinilai berdasarkan commit terakhir.
7. Jika tidak ada pengumuman perubahan soal oleh asisten, maka soal dianggap dapat diselesaikan.
8. Jika ditemukan soal yang tidak dapat diselesaikan, harap menuliskannya pada Readme beserta permasalahan yang ditemukan.
9.  Praktikan tidak diperbolehkan menanyakan jawaban dari soal yang diberikan kepada asisten maupun praktikan dari kelompok lainnya.
10. Jika ditemukan indikasi kecurangan dalam bentuk apapun di pengerjaan soal shift, maka nilai dianggap 0.
11. Pengerjaan soal shift sesuai dengan modul yang telah diajarkan.
12. Zip dari repository dikumpulkan di google form yang terdapat pada linktree.
13. Jika terdapat revisi soal akan dituliskan pada halaman terakhir.

---
## Soal
---
1. Di sebuah desa kecil yang dikelilingi bukit hijau, Poppo dan Siroyo, dua sahabat karib, sering duduk di bawah pohon tua sambil membayangkan petualangan besar. Poppo, yang ceria dan penuh semangat, baru menemukan kesenangan dalam dunia buku, sementara Siroyo, dengan otaknya yang tajam, suka menganalisis segala hal. Suatu hari, mereka menemukan tablet ajaib berisi catatan misterius bernama reading_data.csv. Dengan bantuan keajaiban awk, mereka memutuskan untuk menjelajahi rahasia di balik data itu, siap menghadapi tantangan demi tantangan dalam petualangan baru mereka.
   
   a. Poppo baru saja mulai melihat tablet ajaib dan terpukau dengan kekerenan orang bernama “Chris Hemsworth”. Poppo jadi sangat ingin tahu berapa banyak buku yang dibaca oleh “Chris Hemsworth”. Bantu Poppo menghitung jumlah baris di tablet ajaib yang menunjukkan buku-buku yang dibaca oleh Chris Hemsworth.

Contoh Output:

   <img width="186" alt="Image" src="https://github.com/user-attachments/assets/d982bca3-3e17-46af-a7e3-1bd113b94061" />
   
   b. Setelah menemukan tablet ajaib, Siroyo mulai penasaran dengan kebiasaan membaca yang tersimpan di dalamnya. Ia mulai menggunakan tablet ajaib dan bergumam sambil meneliti, “Aku ingin tahu berapa lama rata-rata mereka membaca dengan benda ini”. Bantu Siroyo untuk menghitung rata-rata durasi membaca (Reading_Duration_Minutes) untuk buku-buku yang dibaca menggunakan “Tablet”.

Contoh Output:

   <img width="500" alt="Image" src="https://github.com/user-attachments/assets/27a236d3-37da-4358-8aaa-e68df4d32dc8" />
   
   c. Sementara Siroyo sibuk menganalisis tablet ajaib, Poppo duduk disampingnya dengan ide cemerlang. “Kalau kita sudah tahu cara mereka membaca, aku ingin memberi hadiah ke temen yang paling suka sama bukunya!”. Ia pun mencari siapa yang memberikan rating tertinggi untuk buku yang dibaca (Rating) beserta nama (Name) dan judul bukunya (Book_Title).

Contoh Output:

   <img width="500" alt="Image" src="https://github.com/user-attachments/assets/2bc61ab2-d467-4aae-a92c-f4349e9b88f0" />
   
   d. Siroyo mengusap keningnya dan berkata, "Petualangan kita belum selesai! Aku harus bikin laporan untuk klub buku besok." Ia ingin membuat laporan yang istimewa dengan tablet ajaib itu, fokus pada teman-teman di Asia. "Aku penasaran genre apa yang paling populer di sana setelah tahun 2023," katanya, membuka reading_data.csv sekali lagi. Bantu Siroyo menganalisis data untuk menemukan genre yang paling sering dibaca di Asia setelah 31 Desember 2023, beserta jumlahnya, agar laporannya jadi yang terbaik di klub.

Contoh Output:

   <img width="500" alt="Image" src="https://github.com/user-attachments/assets/b7fd5122-3b18-4270-9b97-416f100ffe46" />

2. Anda merupakan seorang “Observer”, dari banyak dunia yang dibuat dari ingatan yang berbentuk “fragments” - yang berisi kemungkinan yang dapat terjadi di dunia lain. Namun, akhir-akhir ini terdapat anomali-anomali yang seharusnya tidak terjadi, perpindahan “fragments” di berbagai dunia, yang kemungkinan terjadi dikarenakan seorang “Seeker” yang berubah menjadi “Ascendant”, atau dalam kata lain, “God”. Tidak semua “Observer” menjadi “Player”, tetapi disini anda ditugaskan untuk ikut serta dalam menjaga equilibrium dari dunia-dunia yang terbuat dari “Arcaea”. 

   a. “First Step in a New World”

Tugas pertama, dikarenakan kejadian “Axiom of The End” yang semakin mendekat, diperlukan sistem untuk mencatat “Player” aktif agar terpisah dari “Observer”. Buatlah dua shell script, login.sh dan register.sh, yang dimana database “Player” disimpan di /data/player.csv. Untuk register, parameter yang dipakai yaitu email, username, dan password. Untuk login, parameter yang dipakai yaitu email dan password.

   b. “Radiant Genesis”

Sistem login/register untuk para "Player" tentunya memiliki constraint, yaitu validasi email dan password. Email harus memiliki format yang benar dengan tanda @ dan titik, sementara password harus memiliki minimal 8 karakter, setidaknya satu huruf kecil, satu huruf besar, dan satu angka untuk menjaga keamanan data di dunia “Arcaea”.
Ex (tidak harus sama, kebebasan artistik praktikan):

   ![Image](https://github.com/user-attachments/assets/573fdd87-e44e-4896-a30c-f279b8c5c7ab)

   c. “Unceasing Spirit”

Karena diperlukan pengecekan keaslian “Player” yang aktif, maka diperlukan sistem untuk pencegahan duplikasi “Player”. Jadikan sistem login/register tidak bisa memakai email yang sama (email = unique), tetapi tidak ada pengecekan tambahan untuk username.

   d. “The Eternal Realm of Light”

Password adalah kunci akses ke dunia Arcaea. Untuk menjaga keamanan "Player", password perlu disimpan dalam bentuk yang tidak mudah diakses. Gunakan algoritma hashing sha256sum yang memakai static salt (bebas).

   e. “The Brutality of Glass”

Setelah sukses login, "Player" perlu memiliki akses ke sistem pemantauan sumber daya. Sistem harus dapat melacak penggunaan CPU (dalam persentase) yang menjadi representasi “Core” di dunia “Arcaea”. Pastikan kalian juga bisa melacak “terminal” yang digunakan oleh “Player”, yaitu CPU Model dari device mereka. 
Lokasi shell script: ./scripts/core_monitor.sh

   f. “In Grief and Great Delight”

Selain CPU, “fragments” juga perlu dipantau untuk memastikan equilibrium dunia “Arcaea”. RAM menjadi representasi dari “fragments” di dunia “Arcaea”, yang dimana dipantau dalam persentase usage, dan juga penggunaan RAM sekarang. 
Lokasi shell script: ./scripts/frag_monitor.sh
Pastikan perhitungan kalian untuk CPU dan RAM memiliki output yang sama dengan suatu package resource checker, ex: top, htop, btop, bpytop. 

   ![Image](https://github.com/user-attachments/assets/36e1f628-cc45-4b28-b408-28605ec891a1)

   g. “On Fate's Approach”

Pemantauan yang teratur dan terjadwal sangat penting untuk mendeteksi anomali. Crontab manager (suatu menu) memungkinkan "Player" untuk mengatur jadwal pemantauan sistem. 
Hal yang harus ada di fungsionalitas menu:
• Add/Remove CPU [Core] Usage
• Add/Remove RAM [Fragment] Usage
• View Active Jobs
Lokasi shell script: ./scripts/manager.sh
Ex (tidak harus sama, kebebasan artistik praktikan):

   ![Image](https://github.com/user-attachments/assets/7d0996d7-986d-4cd5-963a-fb9ba8c75203)

   h. “The Disfigured Flow of Time”

Karena tentunya script yang dimasukkan ke crontab tidak mengeluarkan output di terminal, buatlah 2 log file, core.log dan fragment.log di folder ./log/, yang dimana masing-masing terhubung ke program usage monitoring untuk usage tersebut. 
Format log:

CPU


[YYYY-MM-DD HH:MM:SS] - Core Usage [$CPU%] - Terminal Model [$CPU_Model]

RAM


[YYYY-MM-DD HH:MM:SS] - Fragment Usage [$RAM%] - Fragment Count [$RAM MB] - Details [Total: $TOTAL MB, Available: $AVAILABLE MB]

Output Example:

  ![Image](https://github.com/user-attachments/assets/7b70cee8-66be-49bb-aa51-3fdd11f6b4ab)
  ![Image](https://github.com/user-attachments/assets/98d64839-ad7c-4bd3-ac7d-4430b7101994)

   i. “Irruption of New Color”

Sistem harus memiliki antarmuka utama yang menggabungkan semua komponen. Ini akan menjadi titik masuk bagi "Player" untuk mengakses seluruh sistem. Buatlah shell script terminal.sh, yang berisi user flow berikut:
- Register
-  Login
    - Crontab manager (add/rem core & fragment usage)
    - Exit
- Exit

Struktur directory lengkap:

  ![Image](https://github.com/user-attachments/assets/c8a5b7b7-9775-4c65-ba57-0715b158ff23)


3. Untuk merayakan ulang tahun ke 52 album The Dark Side of the Moon, tim PR Pink Floyd mengadakan sebuah lomba dimana peserta diminta untuk membuat sebuah script bertemakan setidaknya 5 dari 10 lagu dalam album tersebut. Sebagai salah satu peserta, kamu memutuskan untuk memilih Speak to Me, On the Run, Time, Money, dan Brain Damage. Saat program ini dijalankan, terminal harus dibersihkan terlebih dahulu agar tidak mengganggu tampilan dari fungsi fungsi yang kamu buat. Program ini dijalankan dengan cara ./dsotm.sh --play=”<Track>” dengan Track sebagai nama nama lagu yang kamu pilih.

   a. Speak to Me

Untuk lagu ini, kamu memutuskan untuk membuat sebuah fitur yang memanggil API yang baru saja kamu temukan kemarin, https://github.com/annthurium/affirmations untuk menampilkan word of affirmation setiap detik.

   https://github.com/user-attachments/assets/fdfdbdee-acb2-441e-ab2f-c656260d2286

Diberikan kebebasan artistik, tidak harus sama persis dengan tampilan pada gif, tetapi untuk fungsionalitas, word of affirmation baru harus ditampilkan tiap detik.

   b. On the Run

Selanjutnya, kamu memutuskan untuk membuat sebuah progress bar yang berjalan dengan interval random (setiap progress bertambah dalam interval waktu yang random dengan range 0.1 detik sampai 1 detik).

  https://github.com/user-attachments/assets/f87c67a2-0f6c-49bb-a3b3-f0937614736e

Diberikan kebebasan artistik, tidak harus sama persis dengan tampilan pada gif, tetapi untuk fungsionalitas, progress bar harus memiliki perhitungan persentase, dan panjang dari progress bar tidak berubah ubah (selalu dari ujung kiri terminal ke ujung kanan terminal seperti pada gif)

   c. Time

Singkat saja, untuk time, kamu memutuskan untuk membuat live clock yang menunjukkan tanggal, jam, menit dan detik.

  https://github.com/user-attachments/assets/59e51bdb-7af7-4f78-b9b4-475c6584da82

Diberikan kebebasan artistik, tidak harus sama persis dengan tampilan pada gif, tetapi untuk fungsionalitas, jam harus setidaknya menunjukkan tahun, bulan, tanggal, jam, menit, dan detik yang diperbaharui setiap detik.

  d. Money

Kamu teringat dengan program yang sangat disukai oleh teman mu yang bernama cmatrix. Kamu pun memutuskan untuk membuat program yang mirip, tetapi mengganti isinya dengan simbol mata uang seperti $ € £ ¥ ¢ ₹ ₩ ₿ ₣ dan lain lainnya.

  https://github.com/user-attachments/assets/e84cc086-d34c-4783-984a-d52c33408c70

Diberikan kebebasan artistik, tidak harus sama persis dengan tampilan pada gif, tetapi untuk fungsionalitas, matrix tersusun oleh simbol mata uang minimal 5 simbol yang berbeda.

  e. Brain Damage

Untuk lagu Brain Damage, kamu mendapatkan ide untuk menampilkan proses yang sedang berjalan, seperti task manager tetapi menampilkannya di dalam terminal dan membuat agar task manager tersebut menampilkan data baru setiap detiknya.

  https://github.com/user-attachments/assets/29456f18-bdc1-4e65-ad23-9745fd5ae618

Diberikan kebebasan artistik, tidak harus sama persis dengan tampilan pada gif, tetapi untuk fungsionalitas, data harus sesuai dengan ps/top dan sejenisnya.


4. Pada suatu hari, anda diminta teman anda untuk membantunya mempersiapkan diri untuk turnamen Pokemon “Generation 9 OverUsed 6v6 Singles” dengan cara membuatkan tim yang cocok untuknya. Tetapi, anda tidak memahami meta yang dimainkan di turnamen tersebut. Untungnya, seorang informan memberikan anda data pokemon_usage.csv yang bisa anda download dan analisis.

Data tersebut memiliki banyak kolom:
- Nama Pokemon
- Usage% yang merupakan persentase Pokemon yang disesuaikan dengan Rank pengguna dan Winrate
- Raw Usage yang merupakan jumlah mentah Pokemon dalam semua tim yang tercatat
- Type1 dan Type2 Pokemon
- Statistic Pokemon: HP,Atk,Def,SpAtk,SpDef,Speed

Untuk menganalisis data tersebut dengan baik, anda berpikiran untuk membuat script yang bernama pokemon_analysis.sh dengan fitur sebagai berikut:

  a. Melihat Summary Dari Data

Untuk mengetahui Pokemon apa yang sedang membawa teror kepada lingkungan “Generation 9 OverUsed” anda berusaha untuk membuat sebuah fitur untuk menampilkan nama Pokemon dengan Usage% dan RawUsage paling tinggi.
Contoh (atur pesan sesuai kreativitas):

  ![Image](https://github.com/user-attachments/assets/c2a8d6f0-341d-402f-a610-49a4f0c32c7a)

  b. Mengurutkan Pokemon Berdasarkan Data Kolom

Untuk memastikan bahwa anda mengetahui kondisi lingkungan “Generation 9 OverUsed”, anda berusaha untuk membuat sebuah fitur untuk sort berdasarkan:
- Usage%
- RawUsage
- Nama
- HP
- Atk
- Def
- Sp.Atk
- Sp.Def
- Speed

Sort dilakukan dengan urutan descending untuk semua angka selain nama, yang diurutkan secara alphabetical. Output harus sesuai dengan format csv yang diberikan.

Contoh:

  ![Image](https://github.com/user-attachments/assets/0b6390f7-28d2-4121-8fab-39d212691629)

  c. Mencari Nama Pokemon Tertentu

Setelah mengetahui kondisi lingkungan “Generation 9 OverUsed”, anda ingin mencari tahu statistik penggunaan dari beberapa Pokemon yang mungkin dapat bertanding baik melawan sebagian besar Pokemon yang ada di Top 10 usage. Oleh karena itu, anda membuat fitur search berdasarkan nama Pokemon. Pastikan agar search yang dimasukkan tidak memunculkan hasil yang tidak diinginkan (seperti memunculkan semua Grass type ketika mengetik search “Grass”), dan output harus sesuai dengan format csv yang diberikan dengan sort Usage%.

Contoh:

  ![Image](https://github.com/user-attachments/assets/babf5a3f-8ef3-470d-a740-9326454223d2)

  d. Mencari Pokemon Berdasarkan Filter Nama Type

Agar dapat membuat tim yang baik, anda perlu memikirkan kombinasi yang baik dari beberapa Pokemon, hal ini disebut sebagai “core” oleh komunitas Pokemon! Oleh karena itu, anda berpikiran untuk membuat fitur filter berdasarkan Type sebuah Pokemon. Output harus sesuai dengan format csv yang diberikan dengan sort Usage%

Contoh:

  ![Image](https://github.com/user-attachments/assets/83827cb9-ef56-4fea-b896-63c4ac87f8b3)

  e. Error Handling

Pastikan program yang anda buat mengecek semua kesalahan pengguna agar dapat memberikan kejelasan kepada pengguna pada setiap kasus.

Contoh:

  ![Image](https://github.com/user-attachments/assets/d64ade47-6198-4ab2-a1c4-3ac961a08be9)

  f. Help Screen Yang Menarik

Untuk memberikan petunjuk yang baik pada pengguna program, anda berpikir untuk membuat sebuah help screen yang muncul ketika mengetik -h atau --help sebagai command yang dijalankan. Kriteria yang harus ada dalam help screen pada program ini adalah:
   - ASCII Art yang menarik! Gunakan kreativitas anda untuk mencari/membuat art yang cocok untuk program yang sudah anda buat!
   - Penjelasan setiap command dan sub-command

Contoh:

  ![Image](https://github.com/user-attachments/assets/db9ace5b-029f-44ec-8068-aeec93057857)


### Soal 1**

- Membuat file poposiroyo
  ```
  nano poposiroyo.sh
  ```
- mendowload reading_data.csv
  ```
  !/bin/bash
  wget "https://drive.usercontent.google.com/u/0/uc? id=1l8fsj5LZLwXBlHa>name_file='reading_data.csv'
  ```
a. Menghitung banyak baris yang mengandung di colom pembaca
  
  ```
  echo 'abcd'
  read -p 'masukan huruf : ' pilihan
  if [[ "$pilihan" == "a" ]]; then
  awk -F, '$2 == "Chris Hemsworth" { count++ } END { print "Chris Hemsworth membaca " count " buku." }' "$name_file"
  ```
 b.Menghitung rata rata dari pengguna yang menggunakan tablet
  ```
  elif [[ "$pilihan" == "b" ]]; then
  awk -F, '$8 == "Tablet" { jumlah+=$6 ;count++} END { print "Rata-rata durasi membaca dengan Tablet adalah " jumlah / count " menit."}' "$name_file"
  ```
 c.Mencari reting tertinggi
  ```
  elif [[ "$pilihan" == "c" ]]; then
  awk -F, 'NR>1 && $7 > max { max=$7; nama=$2; judul=$3 } END { print "Pembaca dengan rating tertinggi:", nama, "-", judul, "-", max }' "$name_file"
  ```
 d. menganalisis genre populer 
  ```
  elif [[ "$pilihan" == "d" ]]; then
  awk -F, 'NR>1 && $9=="Asia" && $5 >= "2023-12-31" { genre[$4]++ } END { for (x in genre) if (genre[x] > max) { max=genre[x]; populer=x } print "Gen>else echo 'x'

   fi
  ```
### Soal 2

  ## 1. Script register.sh

a.) Header dan Variabel Awal
```
#!/bin/bash

DATA_FILE=~/arcaea/data/player.csv
SALT="arcaea_salt"
```
  - #!/bin/bash → Menandakan bahwa script ini akan dijalankan dengan Bash shell.
  - DATA_FILE → Menyimpan lokasi file database pengguna.
  - SALT → Digunakan sebagai tambahan (salt) dalam hashing password agar lebih aman.

b.) Fungsi Validasi Email
```
validate_email() {
  [[ "$1" =~ [a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]
}
```
  - Fungsi ini menerima satu parameter ($1).
  - Menggunakan regex (=~) untuk mengecek apakah email yang diberikan valid.
  - Struktur regex:
    - [a-zA-Z0-9._%+-]+ → Bagian awal email (username).
    - @ → Harus ada simbol @.
    - [a-zA-Z0-9.-]+ → Domain email.
    - \. → Harus ada titik (.) sebelum ekstensi domain.
    - [a-zA-Z]{2,}$ → Ekstensi domain (misalnya .com, .id, .org).
      
c.) Fungsi Validasi Password
```
validate_password() {
  [[ "$1" =~ [A-Z] ]] && [[ "$1" =~ [a-z] ]] && [[ "$1" =~ [0-9] ]] && [[ ${#1} -ge 8 ]]
}
```
  - Fungsi ini mengecek apakah password memenuhi aturan berikut:
    - Minimal 8 karakter (${#1} -ge 8).
    - Mengandung setidaknya 1 huruf besar ([A-Z]).
    - Mengandung setidaknya 1 huruf kecil ([a-z]).
    - Mengandung setidaknya 1 angka ([0-9]).

d.) Pengambilan dan Validasi Input
```
EMAIL="$1"
USERNAME="$2"
PASSWORD="$3"

if [[ -z "$EMAIL" || -z "$USERNAME" || -z "$PASSWORD" ]]; then
  echo "Usage: $0 <email> <username> <password>"
  exit 1
fi
```
  - $1, $2, $3 → Parameter input dari command line (email, username, password).
  - [[ -z "$EMAIL" || -z "$USERNAME" || -z "$PASSWORD" ]] → Mengecek apakah ada input yang kosong.
  - Jika ada yang kosong, program akan menampilkan pesan dan keluar (exit 1).

e.) Validasi Email dan Password
```
if ! validate_email "$EMAIL"; then
  echo "Invalid email format."
  exit 1
fi

if ! validate_password "$PASSWORD"; then
  echo "Password must be at least 8 characters long, contain one uppercase letter, one lowercase letter, and one number."
  exit 1
fi
```
  - Memanggil fungsi validate_email dan validate_password.
  - Jika email atau password tidak valid, script akan menampilkan pesan kesalahan dan keluar.

f.) Cek Apakah Email Sudah Terdaftar
```
if grep -q "^$EMAIL," "$DATA_FILE"; then
  echo "Email already registered."
  exit 1
fi
```
  - grep -q "^$EMAIL," "$DATA_FILE" → Mengecek apakah email sudah ada di dalam database (player.csv).
  - ^$EMAIL, → Memastikan bahwa email ada di awal baris (menggunakan ^).
  - Jika email sudah ada, program menampilkan pesan dan keluar.

g.) Hash Password dengan SHA-256
```
HASHED_PASSWORD=$(echo -n "$PASSWORD$SALT" | sha256sum | awk '{print $1}')
```
  - Menggunakan sha256sum untuk membuat hash dari password + salt.
  - echo -n "$PASSWORD$SALT" → Menggabungkan password dengan salt, lalu menghilangkan newline dengan -n.
  - sha256sum → Menghasilkan hash SHA-256.
  - awk '{print $1}' → Mengambil hanya hash-nya tanpa tambahan teks.

h.) Simpan Data ke File
```
echo "$EMAIL,$USERNAME,$HASHED_PASSWORD" >> "$DATA_FILE"
echo "Registration successful."
```
  - Format penyimpanan: email,username,hashed_password.
  - >> "$DATA_FILE" → Menambahkan data ke file tanpa menghapus yang lama.
  - Menampilkan pesan "Registration successful." jika berhasil.


  ## 2. Script login.sh
  
a.) Header dan Variabel Awal
```
#!/bin/bash

DATA_FILE=~/arcaea/data/player.csv
SALT="arcaea_salt"
```
  - Sama seperti register.sh, ini menentukan lokasi file data dan salt.

b.) Pengambilan dan Validasi Input
```
EMAIL="$1"
PASSWORD="$2"

if [[ -z "$EMAIL" || -z "$PASSWORD" ]]; then
  echo "Usage: $0 <email> <password>"
  exit 1
fi
```
  - $1 → Email yang dimasukkan pengguna.
  - $2 → Password yang dimasukkan pengguna.
  - Mengecek apakah input kosong (-z).

c.) Hash Password untuk Verifikasi
```
HASHED_PASSWORD=$(echo -n "$PASSWORD$SALT" | sha256sum | awk '{print $1}')
```
  - Hashing dilakukan dengan cara yang sama seperti saat registrasi.

d.) Cek Kredensial di Database
```
if grep -q "^$EMAIL,.*,$HASHED_PASSWORD$" "$DATA_FILE"; then
  echo "Login successful."
else
  echo "Invalid email or password."
  exit 1
fi
```
  - grep -q "^$EMAIL,.*,$HASHED_PASSWORD$" "$DATA_FILE":
    - ^$EMAIL, → Memastikan email ada di awal baris.
    - .* → Mengabaikan username (karena tidak digunakan dalam login).
    - ,$HASHED_PASSWORD$ → Memeriksa apakah hash password sesuai dengan yang tersimpan.
  - Jika kredensial cocok, menampilkan "Login successful.", jika tidak, menampilkan "Invalid email or password.".

  ## 3. Script core_monitor.sh

a.) Menentukan Path File Log
```
LOG_FILE="/home/remmyg0d/arcaea/log/core.log"
```
  - File log yang digunakan untuk menyimpan data pemantauan CPU.

b.) Mendapatkan Waktu Sekarang
```
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
```
  - date digunakan untuk mendapatkan waktu sekarang dalam format YYYY-MM-DD HH:MM:SS.

c.) Mengambil Penggunaan CPU (dalam persen)
```
CPU_USAGE=$(top -bn2 | grep "Cpu(s)" | tail -n 1 | awk '{print $2 + $4}')
```
  - top -bn2 menjalankan perintah top dalam mode batch 2 kali.
  - grep "Cpu(s)" mengambil baris yang berisi informasi CPU.
  - tail -n 1 mengambil hasil terbaru.
  - awk '{print $2 + $4}' menjumlahkan CPU user usage ($2) dan CPU system usage ($4) untuk mendapatkan total penggunaan CPU.

d.) Mengambil Model CPU
```
CPU_MODEL=$(grep "model name" /proc/cpuinfo | head -n 1 | awk -F ': ' '{print $2}')
```
  - grep "model name" /proc/cpuinfo mencari baris yang mengandung nama CPU.
  - head -n 1 mengambil hasil pertama.
  - awk -F ': ' '{print $2}' mengambil teks setelah model name :.

e.) Membentuk Format Output
```
LOG_ENTRY="[${TIMESTAMP}] – Core Usage [${CPU_USAGE}%] – Terminal Model [${CPU_MODEL}]"
```
  - Menyusun string log dengan format timestamp, penggunaan CPU, dan model CPU.

f.) Menyimpan Data ke Log File
```
echo "$LOG_ENTRY" >> "$LOG_FILE"
```
  - Menyimpan log ke dalam file core.log.

  ## 4. Script frag_monitor.sh

a.) Mengambil Informasi RAM (dalam KB)
```
RAM_TOTAL_KB=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
RAM_AVAILABLE_KB=$(awk '/MemAvailable/ {print $2}' /proc/meminfo)
RAM_USED_KB=$((RAM_TOTAL_KB - RAM_AVAILABLE_KB))
```
  - MemTotal menunjukkan total RAM.
  - MemAvailable menunjukkan RAM yang tersedia.
  - RAM_USED_KB dihitung sebagai Total RAM - RAM Available.

b.) Konversi ke MB
```
RAM_TOTAL=$((RAM_TOTAL_KB / 1024))
RAM_AVAILABLE=$((RAM_AVAILABLE_KB / 1024))
RAM_USED=$((RAM_USED_KB / 1024))
```
  - Mengonversi KB ke MB dengan membagi 1024.

c.) Menghitung Persentase Penggunaan RAM
```
RAM_PERCENT=$(awk "BEGIN {printf \"%.2f\", (${RAM_USED}/${RAM_TOTAL}) * 100}")
```
  - Menghitung persentase penggunaan RAM dengan format desimal 2 angka.

d.) Membentuk Format Output
```
LOG_ENTRY="[${TIMESTAMP}] – Fragment Usage [${RAM_PERCENT}%] – Fragment Count [${RAM_USED} MB] – Details [Total: ${RAM_TOTAL} MB, Available: ${RAM_AVAILABLE} MB]"
```
  - Menyusun log dengan informasi fragmentasi RAM.

e.) Menyimpan Data ke Log File
```
echo "$LOG_ENTRY" >> "$LOG_FILE"
```
  - Menyimpan log ke dalam file fragment.log

### Soal 3
- Membuat file dsotm.sh
```
nano dsotm.sh
```
- speak to me
  ```
  #!/bin/bash

param="${1#--play=}"
  echo "$param"
    if [[ "$param" == "Speak To Me" ]]; then
      clear&&curl -s https://raw.githubusercontent.com/annthurium/affirmations/refs/heads/main/affirmations.js | sed -n 's/.*"\([^"]*\)".*/\1/p' |
    while IFS= read -r line; do
        echo "$line"
    sleep 1
          done
  
- On The Run


 elif [[ "$param" == "On the Run" ]]; then
        width=40
        progress=0
        clear&&echo "Ready, set, go!"
 while [ $progress -lt $width ]; do
        sleep $(awk -v min=0.1 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')

        progress=$((progress + 2))


        if [ $progress -gt $width ]; then
                progress=$width
                fi

                percent=$((progress * 100 / width))

        printf "\r[%-*s] %d%%" "$width" "$(printf '#%.0s' $(seq 1 $progress))" "$percent"

        done
        echo -e "\nDone"
- Time


elif [[ "$param" == "Time" ]]; then
        while true; do
        clear  # Clear terminal
        date "+%Y-%m-%d %H:%M:%S"  # Show only date and time
        sleep 1  # Update every second
        done

- Money



        symbols=("💲" "€" "£" "¥" "¢" "₹" "₩" "₿" "₣" "₦" "₽")

        rows=$(tput lines)
        cols=$(tput cols)

        while true; do
                clear

                for ((i=0; i<rows; i++)); do
                        line=""
                        for ((j=0; j<cols; j+=2)); do
                                rand_index=$((RANDOM % ${#symbols[@]}))
                                line+="${symbols[$rand_index]} "
                done
                        echo -e "$line"
                done

                sleep 0.1
        done

- Brain Damage


 elif [[ "$param" == "Brain Damage" ]]; then
        get_process_info() {
            echo -e "USER\t\tPID\t%CPU\t%MEM\tVSZ\tRSS\tTTY\tSTAT\tSTART\tTIME\tCOMMAND"
            echo "-------------------------------------------------------------------------------------------------"

    for pid in /proc/[0-9]*; do
        pid=${pid##*/}

        if [[ -f "/proc/$pid/stat" ]]; then

            user=$(stat -c '%U' /proc/$pid 2>/dev/null)

            read -r _ _ _ _ pgrp session tty_nr _ flags _ _ _ _ utime stime _ _ starttime _ vsize rss _ _ _ _ _ _ _ _ _ _ _ state < "/proc/$pid/stat"

            total_time=$((utime + stime))
            uptime=$(awk '{print $1}' /proc/uptime)
            hertz=$(getconf CLK_TCK)
            seconds=$(awk -v start="$starttime" -v up="$uptime" -v hz="$hertz" 'BEGIN { print up - (start / hz) }')

         if (( $(echo "$seconds > 0" | bc -l) )); then
                cpu_usage=$(awk -v total="$total_time" -v hz="$hertz" -v sec="$seconds" 'BEGIN { print (total / hz / sec) * 100 }')
            else
                cpu_usage=0
            fi

            rss=$(awk '{print $2}' /proc/$pid/statm)
            mem_total=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
            mem_usage=$(awk -v rss="$rss" -v total="$mem_total" 'BEGIN { print (rss * 100) / total }')

            tty=$(ls -l /proc/$pid/fd 2>/dev/null | awk '/\/dev\/tty/ {print $NF; exit}')
            tty=${tty:-"?"}

            case "$state" in
                R) stat="R" ;; # Running
                S) stat="S" ;; # Sleeping
                D) stat="D" ;; # Disk sleep
                Z) stat="Z" ;; # Zombie
                T) stat="T" ;; # Stopped
                *) stat="?" ;;
            esac

            start_time=$(date -d "@$(awk -v start="$starttime" -v hz="$hertz" 'BEGIN { print int(start / hz) }')" +"%H:%M")

            time_elapsed=$(awk -v total="$total_time" -v hz="$hertz" 'BEGIN { print total / hz }')

            command=$(tr -d '\0' < /proc/$pid/cmdline 2>/dev/null)
            command=${command:-"[$(cat /proc/$pid/comm 2>/dev/null)]"}

           printf "%-10s %-6s %-5.1f %-5.1f %-8s %-6s %-8s %-4s %-6s %-6.2f %s\n" "$user" "$pid" "$cpu_usage" "$mem_usage" "$vsize" "$rss" "$tty" "$stat" "$start_time" "$time_elapsed" "$command"
                fi
    done | sort -k3 -nr | head -n 15
        }


        while true; do
                clear
                echo "Brain Damage - Task Manager"
                echo "============================"
                get_process_info
                sleep 1
        done
        else
        echo "Invalid Param"
        fi

### Soal 4

a.) Mengecek Argumen Input
```
if [ $# -lt 2 ]; then
    echo "Error: Missing arguments."
    echo "Use -h or --help for more information."
    exit 1
fi
```
   - "$#" → Menunjukkan jumlah argumen yang diberikan saat menjalankan script.
   - [ $# -lt 2 ] → Mengecek apakah jumlah argumen kurang dari 2 (minimal file dan opsi).
   - Jika kurang, akan menampilkan pesan error dan keluar (exit 1).

b.) Mengecek Keberadaan File
```
file="$1"
opsi="$2"

if [ ! -f "$file" ]; then
    echo "Error: file $file not found!"
    exit 1
fi
```
  - $1 → Argumen pertama sebagai nama file CSV.
  - $2 → Argumen kedua sebagai opsi.
  - [ ! -f "$file" ] → Mengecek apakah file tidak ditemukan, jika iya maka script berhenti.

c.) Menampilkan Bantuan (-h atau --help)
```
if [ "$opsi" = "-h" ] || [ "$opsi" = "--help" ]; then
```
  - Jika opsi -h atau --help digunakan, maka akan menampilkan cara penggunaan script.

d.) Mencari Pokémon dengan Usage% dan RawUsage Tertinggi (-i atau --info)
```
awk -F',' 'NR > 1 { if ($2+0 > max1) { max1=$2+0; name1=$1 } if ($3+0 > max2) { max2=$3+0; name2=$1 } } \
END { print "🔥 Pokemon dengan Usage% tertinggi: "; print "Highest Adjusted Usage: " name1, max1 "%"; \
print "⚡ Pokemon dengan RawUsage tertinggi: "; print "Highest Raw Usage: " name2, max2 " uses" }' "$file"
```
  - awk -F',' → Memisahkan file CSV berdasarkan koma.
  - NR > 1 → Memproses mulai dari baris kedua (menghindari header).
  - $2+0 dan $3+0 → Menjadikan kolom ke-2 dan ke-3 sebagai angka.
  - if ($2+0 > max1) { max1=$2+0; name1=$1 } → Mencari Pokémon dengan Usage% tertinggi.
  - if ($3+0 > max2) { max2=$3+0; name2=$1 } → Mencari Pokémon dengan RawUsage tertinggi.

e.) Menyortir Data (-s atau --sort <metode>)
```
if [ "$opsi" = "-s" ] || [ "$opsi" = "--sort" ]; then
```
  - declare -A pilihan → Array asosiatif untuk menentukan kolom berdasarkan metode sorting.
  - sort -t, -k${col},${col} -n "$file" → Sorting berdasarkan kolom tertentu (asc/desc).

f.) Mencari Pokémon Berdasarkan Nama (-g atau --grep <nama>)
```
awk -F',' -v name="$3" 'NR==1 || tolower($1) ~ tolower(name)' "$file"
```
  - tolower($1) ~ tolower(name) → Mencari nama Pokémon tanpa memperdulikan huruf besar/kecil.

g.) Menyaring Pokémon Berdasarkan Tipe (-f atau --filter <tipe>)
```
awk -F',' -v type="$3" 'NR > 1 && (tolower($4) == tolower(type) || tolower($5) == tolower(type))' "$file"
```
  - Menampilkan Pokémon yang memiliki tipe tertentu di kolom 4 atau 5.


### REVISI

  ## Soal Nomor 4

Pada fitur "--filter" seharusnya memiliki output error jika tidak ditemukannya tipe pokemon yang difilter.
Saat command "--filter Weavile" di run, output yang ditampilkan tidak ada atau kosong sehingga bagian filter perlu diperbaiki.

Output sebelum revisi:

  ![Image](https://github.com/user-attachments/assets/fc8e0a97-c95f-47b0-a19f-b1455e16fd66)

Output setelah revisi:

  ![Image](https://github.com/user-attachments/assets/9cbd3a95-1ac5-42e0-b334-f4c23d2bf25c)

Bagian kode yang belum diperbaiki:

```
awk -F',' -v type="$3" 'NR > 1 && (tolower($4) == tolower(type) || tolower($5) == tolower(type))' "$file"
```

Kode setelah diperbaiki:

```
  awk -F',' -v type="$3" '
    BEGIN { count = 0 }
    NR > 1 && (tolower($4) == tolower(type) || tolower($5) == tolower(type)) { print; count++ }
    END { if (count == 0) print "Warning: No Pokémon found with type " type "." }
' "$file"
```

  - count = 0 → Variabel untuk menghitung jumlah Pokémon yang cocok.
  - Jika ada Pokémon yang sesuai, akan dicetak dan count bertambah.
  


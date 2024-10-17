# Tugas-2RPL

Anggota Kelompok:
1. Fadhila Alya Syahfahlevi    2211102195
2. Isnaeni Fatmawati           2211102205
3. Indra Ghaniy Kusuma         2211102019    

PSPEC bagian untuk login website warmindo
Nama Program: LoginUser

Deskripsi Fungsionalitas: Fungsi ini menangani proses login dan logout pengguna, memeriksa apakah pengguna sudah login, dan menyimpan data pengguna dalam sesi.

Spesifikasi Input dan Output:

Input:
email: Alamat email pengguna.
password: Kata sandi pengguna.
Output:
Status login (true atau false).
Pesan kesalahan jika login gagal.
Pesan keberhasilan jika login berhasil.
Prosedur atau Algoritma:

Saat objek login dibuat, buat atau baca sesi pengguna.
Jika ada parameter logout di URL, lakukan proses logout.
Jika ada data login yang dikirim melalui POST, periksa validitasnya.
Jika email atau password kosong, beri pesan kesalahan.
Buat koneksi ke database dan periksa apakah berhasil.
Lakukan query untuk mendapatkan informasi pengguna berdasarkan email.
Jika pengguna ditemukan dan password cocok, simpan data pengguna ke sesi.
Jika tidak cocok, tampilkan pesan kesalahan.
Proses logout akan menghancurkan sesi dan memberikan pesan bahwa pengguna telah keluar.

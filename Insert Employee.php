<?php
/*
 * PSPEC:
 * File Name: insertEmployee.php
 * Purpose: Menambahkan pegawai baru ke database.
 * Inputs: Nama, Posisi, Gaji dari form.
 * Outputs: Menyimpan ke database tabel 'employees'.
 * Constraints: Semua field harus diisi.
 *
 * DPPL:
 * 1. Terima input dari form POST.
 * 2. Validasi input.
 * 3. Simpan ke tabel 'employees'.
 */
include 'functions.php';

if ($_POST) {
    $name = $_POST['name'];
    $position = $_POST['position'];
    $salary = $_POST['salary'];
    if ($name && $position && $salary) {
        insertEmployee($name, $position, $salary);
        echo "Employee added!";
    } else {
        echo "All fields are required!";
    }
}
?>


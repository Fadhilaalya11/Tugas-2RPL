<?php
/*
 * PSPEC:
 * File Name: insertCustomer.php
 * Purpose: Menambahkan pelanggan baru ke database.
 * Inputs: Nama, Alamat, No HP dari form.
 * Outputs: Menyimpan ke database tabel 'customers'.
 * Constraints: Semua field harus diisi.
 *
 * DPPL:
 * 1. Terima input dari form POST.
 * 2. Validasi input.
 * 3. Simpan ke tabel 'customers'.
 */
include 'functions.php';

if ($_POST) {
    $name = $_POST['name'];
    $address = $_POST['address'];
    $phone = $_POST['phone'];
    if ($name && $address && $phone) {
        insertCustomer($name, $address, $phone);
        echo "Customer added!";
    } else {
        echo "All fields are required!";
    }
}
?>


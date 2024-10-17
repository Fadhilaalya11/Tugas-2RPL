<?php
/*
 * PSPEC:
 * File Name: insertMenu.php
 * Purpose: Menambahkan menu baru ke database.
 * Inputs: Nama menu, harga dari form.
 * Outputs: Menyimpan ke database tabel 'menu'.
 * Constraints: Nama menu dan harga tidak boleh kosong.
 *
 * DPPL:
 * 1. Terima input dari form POST.
 * 2. Validasi input.
 * 3. Simpan ke tabel 'menu'.
 */
include 'functions.php';

if ($_POST) {
    $menu_name = $_POST['menu_name'];
    $price = $_POST['price'];
    if ($menu_name && $price) {
        insertMenu($menu_name, $price);
        echo "Menu added!";
    } else {
        echo "All fields are required!";
    }
}
?>

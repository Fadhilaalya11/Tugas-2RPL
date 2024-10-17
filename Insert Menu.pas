{
  PSPEC:
  File Name: insert_menu.pas
  Purpose: Menambahkan menu baru ke sistem.
  Inputs: Nama menu, harga.
  Outputs: Menyimpan ke array menu.
  Constraints: Nama menu dan harga harus diisi.

  DPPL:
  1. Terima input dari pengguna.
  2. Validasi input.
  3. Simpan ke array 'menu'.
}

program InsertMenu;

type
  Menu = record
    Name: string;
    Price: real;
  end;

var
  Menus: array[1..100] of Menu;
  Count: integer;

begin
  Count := 0;

  writeln('Masukkan Nama Menu:');
  readln(Menus[Count].Name);
  writeln('Masukkan Harga Menu:');
  readln(Menus[Count].Price);

  if (Menus[Count].Name <> '') and (Menus[Count].Price > 0) then
  begin
    writeln('Menu berhasil ditambahkan!');
    Count := Count + 1;
  end
  else
    writeln('Nama dan Harga tidak boleh kosong.');
end.


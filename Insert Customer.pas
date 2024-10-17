{
  PSPEC:
  File Name: insert_customer.pas
  Purpose: Menambahkan pelanggan baru ke sistem.
  Inputs: Nama, Alamat, No HP.
  Outputs: Menyimpan ke array pelanggan.
  Constraints: Semua input harus diisi.

  DPPL:
  1. Terima input dari pengguna.
  2. Validasi input.
  3. Simpan ke array 'customers'.
}

program InsertCustomer;

type
  Customer = record
    Name: string;
    Address: string;
    Phone: string;
  end;

var
  Customers: array[1..100] of Customer;
  Count: integer;

begin
  Count := 0;

  writeln('Masukkan Nama Pelanggan:');
  readln(Customers[Count].Name);
  writeln('Masukkan Alamat:');
  readln(Customers[Count].Address);
  writeln('Masukkan No HP:');
  readln(Customers[Count].Phone);

  if (Customers[Count].Name <> '') and (Customers[Count].Address <> '') and (Customers[Count].Phone <> '') then
  begin
    writeln('Pelanggan berhasil ditambahkan!');
    Count := Count + 1;
  end
  else
    writeln('Semua field harus diisi.');
end.


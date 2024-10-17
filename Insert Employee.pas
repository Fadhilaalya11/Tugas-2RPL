{
  PSPEC:
  File Name: insert_employee.pas
  Purpose: Menambahkan pegawai baru ke sistem.
  Inputs: Nama, Posisi, Gaji.
  Outputs: Menyimpan ke array pegawai.
  Constraints: Semua input harus diisi.

  DPPL:
  1. Terima input pengguna.
  2. Validasi input.
  3. Simpan ke array 'employees'.
}

program InsertEmployee;

type
  Employee = record
    Name: string;
    Position: string;
    Salary: real;
  end;

var
  Employees: array[1..100] of Employee;
  Count: integer;

begin
  Count := 0;

  writeln('Masukkan Nama Pegawai:');
  readln(Employees[Count].Name);
  writeln('Masukkan Posisi Pegawai:');
  readln(Employees[Count].Position);
  writeln('Masukkan Gaji Pegawai:');
  readln(Employees[Count].Salary);

  if (Employees[Count].Name <> '') and (Employees[Count].Position <> '') then
  begin
    writeln('Pegawai berhasil ditambahkan!');
    Count := Count + 1;
  end
  else
    writeln('Semua field harus diisi.');
end.
 
 

program soal5;
uses crt;

var
  n, i: integer;   { n = jumlah suku, i = penghitung perulangan }

{ k  = nomor suku yang dicari (parameter masukan)
  longint = tipe hasil, dipilih agar muat untuk angka yang besar }
function Fibonacci(k: integer): longint;
begin

{jika suku ke-1 atau ke-2, nilainya langsung satu. jika suju ke 3 dan seterusnya, panggil 
dirinya sendiri untuk suku sebelumnya, di tambah suku dua tingkat sebelumnya.}

  if (k = 1) or (k = 2) then
    Fibonacci := 1                                  
  else
    Fibonacci := Fibonacci(k - 1) + Fibonacci(k - 2);  
end;


  { Rumus suku ke-k = 2^(k-1).
  Dihitung dengan perulangan: 1 dikalikan 2 sebanyak (k-1) kali. }
function PangkatDua(k: integer): longint;
var
  j: integer;
  hasil: longint;
begin
  hasil := 1;                    { nilai awal = 1 (2 pangkat 0) }
  for j := 1 to k - 1 do
    hasil := hasil * 2;          { kalikan 2 setiap putaran }
  PangkatDua := hasil;           { kembalikan hasil ke pemanggil }
end;


 { Rumus suku ke-k = k * k. }
function Kuadrat(k: integer): longint;
begin
{nomor suku di kali dirinya sendiri}
  Kuadrat := k * k;
end;


 { Rumus suku ke-k = k * (k + 1). }
function Deret4(k: integer): longint;
begin
  Deret4 := k * (k + 1);
end;

{ program utama }
begin
  { Meminta input jumlah suku }
  write('Masukkan jumlah suku (n): ');
  readln(n);
  writeln;

  { a. Menampilkan deret Fibonacci }
  write('a. ');
  for i := 1 to n do
  begin
    write(Fibonacci(i));         { panggil fungsi untuk suku ke-i }
    if i < n then write(', ');   { koma di antara suku, bukan di akhir }
  end;
  writeln;

  { b. Menampilkan deret pangkat 2 }
  write('b. ');
  for i := 1 to n do
  begin
    write(PangkatDua(i));
    if i < n then write(', ');
  end;
  writeln;

  { c. Menampilkan deret kuadrat }
  write('c. ');
  for i := 1 to n do
  begin
    write(Kuadrat(i));
    if i < n then write(', ');
  end;
  writeln;

  { d. Menampilkan deret k*(k+1) }
  write('d. ');
  for i := 1 to n do
  begin
    write(Deret4(i));
    if i < n then write(', ');
  end;
  writeln;

  readln;   { menahan layar agar hasil terlihat }
end.
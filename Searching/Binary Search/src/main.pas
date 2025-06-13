program TestBinarySearch;

uses
  BinarySearch;

var
  data: arr;
  pData: aptr;
  i: Integer;

begin
  for i := 0 to 9 do
    data[i] := i * 5; // contoh isi: 0, 5, 10, 15, ..., 45

  pData := @data;

  writeln('Mencari angka 25...');
  binary_search(pData, 0, 9, 25);

  writeln('Mencari angka 33...');
  binary_search(pData, 0, 9, 33);
end.

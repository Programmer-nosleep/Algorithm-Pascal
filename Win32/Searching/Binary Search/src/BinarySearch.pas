unit BinarySearch;

interface

type
  aptr = ^arr;
  arr = array[0..128] of Integer;

procedure binary_search(a: aptr; low, high, key: Integer);

implementation

uses
  SysUtils;

procedure binary_search(a: aptr; low, high, key: Integer);
var
  mid: Integer;
begin
  if (low <= high) then
  begin
    mid := (low + high) div 2;

    if (a^[mid] = key) then
      writeln(Format('Element found at index : %d', [mid]))
    else if (key < a^[mid]) then
      binary_search(a, low, mid - 1, key)
    else if (a^[mid] < key) then
      binary_search(a, mid + 1, high, key);
  end
  else if (low > high) then
    writeln('Element array tidak di temukan');
end;

end.

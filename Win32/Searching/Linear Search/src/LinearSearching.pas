unit LinearSearching;

interface

type
  PtrHeap = ^Integer;

function LinearSearchHeap(arr: PtrHeap; n, key: Integer): Integer;
function LinearSearchStack(arr: array of Integer; n, key: Integer): Integer;

implementation

uses
  sysutils;


function LinearSearchHeap(arr: PtrHeap; n, key: Integer): Integer;
var
  i, count: Integer;
begin
  count := 0;

  for i := 0 to n - 1 do
  begin
    if arr[i] = key then
    begin
      WriteLn(Format('Element ditemukan di posisi ke-%d', [i + 1]));
      count := count + 1;
    end;
  end;

  if count = 0 then
  begin
    WriteLn('Element tidak ditemukan dalam array.');
  end;

  LinearSearchHeap := count;
end;

function LinearSearchStack(arr: array of Integer; n, key: Integer): Integer;
var
  i, count: Integer;
begin
  count := 0;

  for i := 0 to n - 1 do
  begin
    if arr[i] = key then
    begin
      WriteLn(Format('Element ditemukan di posisi ke-%d', [i + 1]));
      count := count + 1;
    end;
  end;

  if count = 0 then
  begin
    WriteLn('Element tidak ditemukan dalam array.');
  end;

  LinearSearchStack := count;
end;


end.

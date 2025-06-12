unit BinarySearch;

interface

type
  Ptr = ^Integer;
  Stack = array[1..25] of Integer;

function BinarySearchHeap(arr: Ptr; n, key: Integer): Integer;
function BinarySearchStack(arr: Stack; n, key: Integer): Integer;

implementation

uses
  SysUtils;

function BinarySearchHeap(arr: Ptr; n, key: Integer): Integer;
var
  return: Integer;
begin
  writeln('binary search');
  return := 0;
end;

function BinarySearchStack(arr: Stack; n, key: Integer): Integer;
var
  return: Integer;
begin
  writeln('binary search');
  return := 0;
end;

end.

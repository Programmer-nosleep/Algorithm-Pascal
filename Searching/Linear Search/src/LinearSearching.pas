unit LinearSearching;

interface
type
  PtrHeap = ^Integer;

function LinerSearchHeap(n, key: Integer): Integer;
function LinerSearchStack(n, key: Integer): Integer;

implementation

uses
  sysutils;

function LinearSearchHeap(arr: PtrHeap; n, key: Integer): Integer;
var
  i, count : Integer;
begin
  count := 0;
  
  for i := 0 to n do
  begin
    if (arr[i] = key)
      begin
        writeln(Format('element ini telah di temukan berada %d', [i + 1]))
        count = count + 1;
      end;
  end;

  if (count = 0)
    begin
      writeln('elmenet tidak di tunjukan di sebuah array');
    end;
end;

function LinerSearchStack(arr: Array[1..10]; n, key: Integer): Integer;
begin

end;

end.
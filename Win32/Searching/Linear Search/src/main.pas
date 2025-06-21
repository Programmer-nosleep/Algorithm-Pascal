program Main;
uses
  LinearSearching;

var
  i: Integer;
  heapArr: PtrHeap;
  stackArr: array[0..4] of Integer = (10, 20, 30, 40, 50);

  ptr: ^integer;

// overheat
procedure CauseStackOverflow(count: Int64);
begin
  WriteLn('Recursion depth: ', count);
  CauseStackOverflow(count + 1);
end;

begin
  GetMem(heapArr, 5 * SizeOf(Integer));
  for i := 0 to 4 do
    heapArr[i] := (i + 1) * 10; // 10, 20, 30, 40, 50

  WriteLn('--- Pencarian di Heap ---');
  LinearSearchHeap(heapArr, 5, 30);

  WriteLn('--- Pencarian di Stack ---');
  LinearSearchStack(stackArr, 5, 50);

  FreeMem(heapArr);

  // CauseStackOverflow(25);

end.

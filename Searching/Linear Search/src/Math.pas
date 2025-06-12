unit Math;

interface

function SQRT(n: REAL): REAL;
procedure LN();

implementation

uses
  SysUtils;

const
  epsilon = 0.0001;

function SQRT(n: REAL): REAL;
var
  low, high, mid: REAL;
begin
  if n < 0 then
    writeln('Tidak bisa menghitung akar kuadrat dari bilangan negatif');

  low := 0;
  high := n;
  
  if n < 1 then
    high := 1;

  repeat
    mid := (low + high) / 2;
    if mid * mid > n then
      high := mid
    else
      low := mid;
  until abs(mid * mid - n) < epsilon;

  SQRT := mid;
end;

procedure LN();
var
  a, y, numerator, denominator,
  difference, cum: real;
begin
 write('number ? ');
  read(a);

  y := (a - 1) / (a + 1);

  numerator := 2 * y;
  denominator := 1;

  difference := numerator / denominator;
  cum := 0;

  while difference <> 0 do
    begin
      cum := cum + difference;
      numerator := numerator * y * y;
      denominator := denominator + 2;
      difference := numerator / denominator;
    end;

  // writeln('ln(', a:0:2, ') = ', cum:0:10);
  writeln(Format('ln %.2f = %.10f', [a, cum]));
end;

end.

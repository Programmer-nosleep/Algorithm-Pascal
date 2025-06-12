program LinearSearch;

uses
  sysutils,
  crt;

CONST
  initialNum = 0;
  divisor    = 2;

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

end.
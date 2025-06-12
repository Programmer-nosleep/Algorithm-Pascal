unit Header;

interface
procedure MyProcedure();
implementation

uses
  sysutils;
  
procedure MyProcedure();
var
  data, num : Integer;
  hours, wageRate, weeksPay, total : real;
begin
  total := 0;
  repeat
    write('enter value : ');
    read(num, hours, wageRate);
    weeksPay := hours * wageRate;

    writeln(Format('%38.2f'), [weeksPay]);

    total := total + weeksPay;
  until (num = 0);

  writeln('-----' :38);
  writeln('total wages for week = $' :29, total:9:2);
  writeln('=====' :38);
end;
end.
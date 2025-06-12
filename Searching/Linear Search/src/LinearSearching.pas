unit LinearSearching;

interface
function MyFunction(x: Integer): Integer;
function LinerSearch(data: Integer): Integer;

procedure list(data: Integer);

implementation

uses
  sysutils;

function MyFunction(x: Integer): Integer;
begin
  writeln('teto');
  MyFunction := x * x;
end;

end.
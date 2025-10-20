unit grades;

interface

function HitungGrade(na: real): char;

implementation

function HitungGrade(na: real): char;
var
    nilai: integer;
begin
    nilai := trunc(na);
    case nilai of
        80..100: HitungGrade := 'A';
        70..79:  HitungGrade := 'B';
        60..69:  HitungGrade := 'C';
        50..59:  HitungGrade := 'D';
    else
        HitungGrade := 'E';
    end;
end;

end.
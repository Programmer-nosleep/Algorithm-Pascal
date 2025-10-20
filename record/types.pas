unit types;

interface

type
    PMhs = ^Mhs;
    Mhs = record
        nim: string[10];
        nama: string[30];
        tugas, uts, uas, na: real;
        grade: char;
        next: PMhs;
    end;

implementation

end.
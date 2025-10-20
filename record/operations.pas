unit operations;

interface

uses types;

procedure TambahDataMahasiswa(var head, tail: PMhs);
procedure TampilkanSemuaData(head: PMhs);
procedure CariDanTampilkanData(head: PMhs);

implementation

uses crt, grades;

procedure TambahDataMahasiswa(var head, tail: PMhs);
var
    baru: PMhs;
begin
    new(baru);
    write('NIM  : ');
    readln(baru^.nim);
    write('Nama  : ');
    readln(baru^.nama);
    repeat
        write('Tugas (0-100): '); readln(baru^.tugas);
    until (baru^.tugas >= 0) and (baru^.tugas <= 100);

    repeat
        write('UTS (0-100)  : '); readln(baru^.uts);
    until (baru^.uts >= 0) and (baru^.uts <= 100);

    repeat
        write('UAS (0-100)  : '); readln(baru^.uas);
    until (baru^.uas >= 0) and (baru^.uas <= 100);

    baru^.na := (baru^.tugas + baru^.uts + baru^.uas) / 3;
    baru^.grade := HitungGrade(baru^.na);
    baru^.next := nil;

    if head = nil then
    begin
        head := baru;
        tail := baru;
    end
    else
    begin
        tail^.next := baru;
        tail := baru;
    end;
    writeln('Data mahasiswa berhasil ditambahkan!');
    readln;
end;

procedure TampilkanSemuaData(head: PMhs);
var
    bantu: PMhs;
    no: integer;
begin
    clrscr;
    writeln('-------------------------------------------------------------------------');
    writeln('NO NIM         NAMA            TUGAS       UTS     UAS     NA      GRADE');
    writeln('-------------------------------------------------------------------------');
    bantu := head;
    no := 1;
    if bantu = nil then
    begin
        writeln('Tidak ada data untuk ditampilkan.');
    end
    else
    begin
        while bantu <> nil do
        begin
            writeln(no:2, ' ', bantu^.nim:8, ' ', bantu^.nama:15, bantu^.tugas:7:2, bantu^.uts:7:2, bantu^.uas:7:2, bantu^.na:7:2, ' ', bantu^.grade);
            bantu := bantu^.next;
            inc(no);
        end;
    end;
    writeln('--------------------------------------------------------------------------');
    readln;
end;

procedure CariDanTampilkanData(head: PMhs);
var
    bantu: PMhs;
    nim_cari: string[10];
    ditemukan: boolean;
begin
    clrscr;
    write('Masukkan NIM yang dicari: ');
    readln(nim_cari);
    
    bantu := head;
    ditemukan := false;
    while (bantu <> nil) and not ditemukan do
    begin
        if bantu^.nim = nim_cari then
        begin
            ditemukan := true;
        end
        else
        begin
            bantu := bantu^.next;
        end;
    end;

    if ditemukan then
    begin
        writeln('Data Mahasiswa Ditemukan:');
        writeln('NIM   : ', bantu^.nim);
        writeln('Nama  : ', bantu^.nama);
        writeln('Tugas : ', bantu^.tugas:0:2);
        writeln('UTS   : ', bantu^.uts:0:2);
        writeln('UAS   : ', bantu^.uas:0:2);
        writeln('NA    : ', bantu^.na:0:2);
        writeln('Grade : ', bantu^.grade);
    end
    else
    begin
        writeln('Mahasiswa dengan NIM ', nim_cari, ' tidak ditemukan.');
    end;
    readln;
end;

end.
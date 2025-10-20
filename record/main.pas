program NilaiMahasiswaLinkedList;

uses
    crt, types, operations;

var
    head, tail: PMhs;
    pilihan: integer;

procedure TampilkanMenu;
begin
    clrscr;
    writeln('MENU UTAMA');
    writeln('1. Tambah Data Mahasiswa');
    writeln('2. Tampilkan Semua Data Mahasiswa');
    writeln('3. Cari Data Mahasiswa');
    writeln('0. Keluar');
    write('Pilih menu: ');
end;

begin
    head := nil;
    tail := nil;
    repeat
        TampilkanMenu;
        readln(pilihan);
        case pilihan of
            1: TambahDataMahasiswa(head, tail);
            2: TampilkanSemuaData(head);
            3: CariDanTampilkanData(head);
            0: writeln('Terima kasih!');
        else
            writeln('Pilihan tidak valid.');
            readln;
        end;
    until pilihan = 0;
end.
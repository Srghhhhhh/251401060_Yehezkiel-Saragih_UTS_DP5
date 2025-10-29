program bintang_idamanku; //judul program
uses crt; //memanggil unit crt
var i,j : integer; //menggunakn tipe data integer
    begin //memulai program
    clrscr; //membersihkan layar
    for i := 1 to 3 do // menggunakan perulangan untuk membuet bintang
        begin //memulai perulangan
            for j := 1 to i do // nested for
                begin //memulai nested for
                    write('*'); // menampilkan bintang
                end; //mengakhiri nested for
                  writeln; //buat writeln agar menjadi pola bintang segitiga
                end; //mengakhiri perulangan
    for i := 8 downto 6 do //gunakan for lagi untuk membuat bintang pola 1 = 8 bntng,pola 2 = 7,pola 3=6 dan menurun
       begin //memulai perulangan
        for j := 1 to i do //perulangan bercabang
            begin //memulai nested for
                write('*'); //menampilkan bintang
            end; //mengakhiri nested for
                writeln; //buat writeln agar membuat baris baru
            end; //mengakhiri perulangan
    for i := 7 to 8 do //gunakan for untuk membuat pola naik dari 7 bintang ke 8 bintang
        begin //memulai perulangan
            for j := 1 to i do //nested for
                begin //memulai nested for
                    write('*'); //menampilkan bintang
                end; //mengakhiri nested for
                    writeln; //buat writeln agar membuat baris baru
                end; //mengakhiri perulangan
            end. //mengakhiri program   
                
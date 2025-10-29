program tebak_angka_rahasia; //judul program
uses crt; //memanggil unit crt
label a; //menggunakan label a karena ingin menggunakan goto
var angka : integer; //menggunakan tipe data integer
    begin //memulai program
    clrscr; //membersihkan layar
a : write('Masukkan tebakan = '); //menampilkan perintah yang akan dimasukkan
    readln(angka); //masukan angka tebakan
    if (angka = 3) then //percabangan
        begin //pengelompokan perintah
        writeln('Selamat, kamu benar!'); //akan tampil seperti ini jika masukan yg kita input benar sesuai perintah dan program berhenti
        end //pengelompokan perintah
    else if (angka > 3) then //percabangan
        begin //pengelompokan perintah
        writeln('Telalu Besar!'); //jika menampilkan seperti ini program akan mengulang sampai angka yg kita inputkan bener
        goto a; //akan mengulang dari line 7
        end //pengelompokan perintah
    else //percabangan
        begin //pengelompokan perintah
        writeln('Terlalu Kecil!'); //sama seperti line 15
        goto a; // akan mengulang dari line 7
        end; //pengelompokan perintah
    end. //mengakhiri program
        
        
    
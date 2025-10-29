program cici_punya_toko; //judul program
uses crt; //memanggil unit crt
var pottambah,buku,pulpen,pensil,penggaris,penghapus : longint; //jenis tipe data yg digunakan
    jmlhbuku,jmlhpulpen,jmlhpensil,jmlhpenggaris,jmlhpenghapus : integer; //jenis tipe data yg digunakan
    totalbelanja,totalkeseluruhan,totalsetelahdiskon : real; //jenis tipe data yg digunakan
    diskon,pajak : real; //jenis tipe data yg digunakan
    pembayaran : string; //jenis tipe data yg digunakan

    begin //memulai program
    clrscr; //untuk membersihkan layar
    pottambah := 5000;  // menyimpan data terlebih dulu untuk nanti dikurangkan
    buku := 25000; //harga suatu barang
    pulpen := 5000; //harga suatu barang
    pensil := 3000; //harga suatu barang
    penghapus := 2000; //harga suatu barang
    penggaris := 4000; //harga suatu barang

    writeln('1.buku = ',buku); //menampilkan kembali daftar barang beserta harganya
    writeln('2.pulpen = ',pulpen); //menampilkan kembali daftar barang beserta harganya
    writeln('3.pensil = ',pensil); //menampilkan kembali daftar barang beserta harganya
    writeln('4.penghapus = ',penghapus); //menampilkan kembali daftar barang beserta harganya
    writeln('5.penggaris = ',penggaris); //menampilkan kembali daftar barang beserta harganya

    write('Masukkan jumlah buku      = '); //menampilkan perintah yang akan kita masukkan
    readln(jmlhbuku); //menginput masukan berupa tipe data integer
    write('Masukkan jumlah pulpen    = '); //menampilkan perintah yang akan kita masukkan
    readln(jmlhpulpen); //menginput masukan berupa tipe data integer
    write('Masukkan jumlah pensil    = '); //menampilkan perintah yang akan kita masukkan
    readln(jmlhpensil); //menginput masukan berupa tipe data integer
    write('Masukkan jumlah penghapus = '); //menampilkan perintah yang akan kita masukkan
    readln(jmlhpenghapus); //menginput masukan berupa tipe data integer
    write('Masukkan jumlah penggaris = '); //menampilkan perintah yang akan kita masukkan
    readln(jmlhpenggaris); //menginput masukan berupa tipe data integer

    totalbelanja := (buku*jmlhbuku)+(pulpen*jmlhpulpen)+(pensil*jmlhpensil)+(penghapus*jmlhpenghapus)+(penggaris*jmlhpenggaris); //mengalikan,lalu menjumlahkan semua keseluruhan
    
    if (totalbelanja >= 100000) then //percabangan
        begin //pengelompokan perintah
        diskon := 0.1*totalbelanja; //0.1 dikali total belanja menghasilkan sebuah diskon
        totalsetelahdiskon := totalbelanja - diskon;   //total belanja dikurangi diskon     
        end //pengelompokan perintah
    else //percabangan
        begin //pengelompokan perintah
        diskon := 0; //dikon = 0 karena minimal dapat diskon jika total belanja lebih atau sama dengan 500000
        totalsetelahdiskon := totalbelanja - diskon; //total belanja dikurangi diskon
        end; //pengelompokan perintah
    write('masukan metode pembayaran (QRIS/Tunai =) '); //buat perintah masukan
    readln(pembayaran); //input jenis pembayaran
    
    if(pembayaran = 'QRIS') then //if kondisi
        begin //pengelompokan perintah
        totalkeseluruhan := totalsetelahdiskon - pottambah; //total setelah diskon - pottambah yang telah disimpan sebelumnya diawal
        end; //pengelompokan perintah
    if(pembayaran = 'Tunai') then //if kondisi
        begin //pengelompokan perintah
        pajak := 0.05 * totalbelanja; // 5% dikali total belanja sebelumnya
        totalkeseluruhan := totalsetelahdiskon + pajak; //total setelah diskon - pajak
        end; //pengelompokan perintah
    
    writeln('Total harga sebelum discount = ',totalbelanja:0:0); //tampilkan total harga sebelum diskon
    writeln('Seluruh potongan dan discount = ',pottambah + diskon:0:0); //tampilkan seluruh potongan dan diskon
    writeln('Total Akhir = ',totalkeseluruhan:0:0); // tampilan total akhir nya
    end. //mengakhiri program
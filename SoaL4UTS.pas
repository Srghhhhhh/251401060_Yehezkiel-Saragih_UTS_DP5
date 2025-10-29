program fibonacci; //judul program
uses crt; //memanggil unit crt
var n,i,jumlah,suku1,suku2,dst : integer; //tipe data yg digunakan integer
   begin //memulai program
    clrscr; //membersihkan layar
    suku1 := 1; //menyimpan nilai yang nanti digunakan
    suku2 := 0; //menyimpan nilai yang nanti digunakan

    write('masukkan nilai N : '); //menampilkan perintah yang nanti diinput
    readln(n); //input nilai
    write('Sequence = '); //menampilakn perintah urutan sebelum for
    for i := 1 to n do // perulangan,untuk n sesuai nilai yg kita input
    begin // memulai perulangan
      write(suku2,' '); //tampilan nilai yang disimpan di suku2 = 0 terlebih dahulu
      dst := suku1 + suku2; //var dst digunakan untuk menyimpan nilai suku1 + suku2
      suku1 := suku2; // nilai suku1 di switch dengan suku2
      suku2 := dst; //nilai dst di switch ke suku2  
                     // dan terus berulang sampai n
    end; //mengakhiri perulangan

      writeln; //untuk membuat baris baru
      jumlah := dst + suku1 - 1; //var jumlah menyimpan dst + suku1 -1  //jika tidak dikurangi 1 maka hasil jumlahnya 21
      writeln('Total = ',jumlah); //tampilkan jumlah dari bilangan fibonacci yang diinput n
   end. //mengakhiri program
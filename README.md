# SKRINSOT ADA DI FOLDER IMAGES

Penjelasan :
- hal tersebut terjadi karena kita menggunakan widget InkWell untuk memberikan interaksi pada gambar yang ditampilkan. Ketika kita men-tap pada gambar tersebut, maka onTap yang terdapat pada InkWell akan dipanggil, kemudian akan menjalankan fungsi setState() untuk mengubah nilai variabel count yang menyebabkan tampilan angka pada tampilan berubah. Karena setState() memicu pembuatan ulang tampilan, maka angka pada tampilan pun berubah secara otomatis setiap kali kita men-tap pada gambar tersebut.
- Dalam kode tersebut, onTap diganti dengan onDoubleTap dan onLongPress. onDoubleTap akan dipicu ketika pengguna mengetuk layar dua kali dengan cepat, sementara onLongPress akan dipicu ketika pengguna menekan dan menahan layar selama beberapa waktu. Kedua fungsi tersebut akan memicu penambahan nilai variabel count ketika terpicu.

<h1>Laporan hasil pelatihan bootcame mobile app dev minggu pertama hari kelima</h1>
Hari ini jum'at tanggal 7 Februari 2020, seperti biasanya saya mengikuti kegiatan pelatihan di bootcame praxis academy.<br>
Seperti biasa setiap hari akan ada latihan dan kasus yang harus saya selesaikan sebagai bentuk latihan saya untuk menjadi developer mobile app yang baik.<br>
Materi kali ini yang kami pelajari adalah mengenai Asynchronous Programming, Konkurensi, dan Tooling.<br>
Apa sajakah yang dipelajari pada materi Asynchronous Programming, Konkurensi, dan Tooling.<br>
<ol>
    <li>Artikel di Wikipedia tentang Asynchronous I/O memberikan ringkasan komprehensif tentang pengertian asynchronous I/O. Baca dan pahami juga penjelasan di StackOverflow. Artikel byte archer ini juga memberikan gambaran yang cukup umum tentang blocking (synchronous) dan non-blocking (asynchronius) I/O. Artikel lain.</li>
    <li>Pendapat beberapa praktisi tentang asynchronous programming.</li>
    <li>Asynchrony support di Dart</li>
    <li>API dart:async - Futures dan Stream menjelaskan API Dart untuk menangani asynchronous programming.</li>
    <li>Contoh program untuk async/await di Dart.</li>
    <li>Tutorial di web Dart untuk Futures</li>
    <li>Tutorial di web Dart untuk Streams</li>
    <li>Pelajari Tools and Techniques pada dokumentasi Dart - menu sebelah kiri.</li>
    <li>Pelajari Dart platforms untuk mengetahui berbagai tools untuk berbagai platform.</li>
    <li>Penjelasan tentang cara memakai packages di Dart menggunakan pub</li>
    <li>Penjelasan tentang instalasai shared packages.</li>
</ol>
<br>
Setelah mempelajari materi diatas, barulah saya mengejakan kasus mengenai membuat program untuk mengakses / mengambil konten pada suatu endpoint / URL di Web menggunakan non-blocking I/O (asynchronous). Hasil dari pengambilan itu disimpan dalam suatu file teks.<br>
<h4>Langkah yang perlu dikerjakan</h4>
<ul>
    <li>Pertama buka <kbd>VS Code</kbd> kemudia buat file baru dengan nama <kbd>main.dart</kbd></li>
    <li>Setelah itu kamu tuliskan script dibawah ini:</li>
</ul>

<pre>
<kode>
        import 'dart:async';
        import 'dart:io';
        import 'dart:convert';

        Future<void> printUsers() async {
        var request = await HttpClient()
            .getUrl(Uri.parse('https://jsonplaceholder.typicode.com/photos')); //API
        var response = await request.close();
        var contents;

        await for (var contents2 in response.transform(Utf8Decoder())) {
            contents = contents2;
        }

        var file = File('file.txt');
        var contents2;
        file.writeAsString(contents);

        // readFile
        contents2 = await file.readAsString();
        print(contents2);

        // writeFile
        var fileCopy = await File('file-copy.txt').writeAsString(contents2);
        print(await fileCopy.exists());
        print(await fileCopy.length());
        }

        main() async {
        printUsers();
        }

</kode>
</pre>

<ul>
    <li>Setelah itu save dan buka terminal ketikan <kbd>dart main.dart</kbd> tekan enter</li>
    <li>Kemudian akan tampil hasilnya seperti berikut : </li>
</ul>
<pre>
    [
      {
        "albumId": 1,
        "id": 1,
        "title": "accusamus beatae ad facilis cum similique qui sunt",
        "url": "https://via.placeholder.com/600/92c952",
        "thumbnailUrl": "https://via.placeholder.com/150/92c952"
      },
      {
        "albumId": 1,
        "id": 2,
        "title": "reprehenderit est deserunt velit ipsam",
        "url": "https://via.placeholder.com/600/771796",
        "thumbnailUrl": "https://via.placeholder.com/150/771796"
      },
      {
        "albumId": 1,
        "id": 3,
        "title": "officia porro iure quia iusto qui ipsa ut modi",
        "url": "https://via.placeholder.com/600/24f355",
        "thumbnailUrl": "https://via.placeholder.com/150/24f355"
      },
    ]
</pre>
<ul>
    <li>Selanjutnya akan terbuat file baru dengan nama <kbd>file.txt</kbd> dan file copy nya dengan nama <kbd>file-copy.txt</kbd></li>
</ul>
Begitulan cara membuat program untuk mengakses / mengambil konten pada suatu endpoint / URL di Web menggunakan non-blocking I/O (asynchronous). Hasil dari pengambilan itu disimpan dalam suatu file teks.
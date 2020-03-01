<h1>Aksebilitas</h1>
Kali ini dengan menggunakan minimal 3 aplikasi yang telah saya buat pada hari-hari sebelumnya, saya akan memeriksa
dengan menggunakan Accessibility Scanner dan memperbaiki aplikasi yang telah saya buat sehingga menjadi aplikasi
dengan Aksebilitas yang baik.
<h2>Weather App</h2>
Yang pertama ada aplikasi <a
    href="https://github.com/arari3s/praxis-academy/tree/master/novice/03-01/latihan/stetmeneg">weather app.</a>
<br> <br>
<img src="img/1.jpg" width="300" alt="gambar weather app 1"> <br><br>
Pada aplikasi ini terdapat saran perbaikan yaitu pada text contrast<br><br>
<img src="img/2.jpg" width="300" alt="gambar weather app 2">
<img src="img/3.jpg" width="300" alt="gambar weather app 2">
<br>
kemudian perbaiki pada <a
    href="https://github.com/arari3s/praxis-academy/blob/master/novice/03-01/latihan/stetmeneg/lib/pages/weather_search_page.dart"><kbd>lib/pages/weather_search_page.dart</kbd></a>
<br>
<pre>
    <code>
    decoration: InputDecoration(
        hintText: "Enter a city",
        labelText: "Enter a City",
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: Icon(Icons.search),
        labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        ),
    ),
    </code>
</pre>
kemudian akan tampil seperti berikut : <br><br>
<img src="img/5.jpg" width="300" alt="gambar setelah diperbaiki">
<img src="img/4.jpg" width="300" alt="gambar setelah diperbaiki">
<br><br>
<h2>Baby Name Votes</h2>
pada aplikasi Baby Name Votes ini no suggestions atau tidak ada yang perlu diperbaiki. <br><br>
<img src="img/6.jpg" width="300" alt="tampilan Baby name Votes">
<img src="img/4.jpg" width="300" alt="tampilan Baby name Votes">
<br><br>
<h2>Android Device Info</h2>
Pada aplikasi ini juga tidak ditemukan yang perlu diperbaiki karena sudah memiliki Aksebilitas yang baik <br><br>
<img src="img/7.jpg" width="300" alt="tampilan aplikasi Android Device info ">
<img src="img/4.jpg" width="300" alt="tampilan no suggestions pada aplikasi Android Device info ">
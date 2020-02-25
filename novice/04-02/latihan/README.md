<h1>Paket dan Plugin</h1>
<h2>Cara penggunaan packages</h2>
Ekosistem Dart menggunakan packages untuk mengelola perangkat lunak bersama seperti perpustakaan dan alat. Untuk
mendapatkan packages dart, anda bisa menggunakan <b>pub package manager</b>. Anda dapat menemukan packages yang
tersedia untuk umum di <a href="https://pub.dev/">situs pub.dev</a> atau anda dapat memuat packages dari sistem file
lokal atau ditempat lain, seperti repositori Git. Dari mana pun packages Anda berasal, pub mengelola dependensi
versi, membantu anda mendapatkan bersi paket yang saling bekerja sama dan dengan versi SDK anda. <br><br>
Untuk menggunakan package, lakukan hal berikut:
<ul>
    <li>Buat pubspec(file bernama pubspec.yaml yang mencantumkan dependensi package dan menyertakan metadata
        lainnya, seperti nomor versi)</li>
    <li>Gunakan pub untuk mendapatkan dependensi package anda</li>
    <li>Jika kode Dart anda tergantung pada perpustakaan dalam package, import ke perpustakaan</li>
</ul>
<br>
<h2>Membuat Pubspec</h2>
Pubspec adalah file bernama pubspec.yaml yang ada di direktori teratas aplikasi anda. Pubspec yang mungkin paling
sederhana hanya mencantumkan nama package:
<pre>
    <code>
        name: my_app
    </code>
</pre>
Berikut adalah contoh dari pubspec yang menyatakan dependensi pada dua paket(js dan intl) yang dihost di situs
pub.dev:
<pre>
    <code>
        name: my_app
        dependdencies:
            js: ^0.6.0
            intl: ^0.15.8
    </code>
</pre>
Untuk detail tentang cara membuat pubspec, lihat <a href="https://dart.dev/tools/pub/pubspec">pubspec
    documentation</a> dan dokumentasi untuk paket yang ingin anda gunakan.
<h2>Getting packages</h2>
Setelah anda memiliki pubspec, anda dapat menjalankan pub get dari direktori teratas aplikasi anda:
<pre>
    <code>
        $ cd &lt;path-to-my_app&gt;
        $ pub get
    </code>
</pre>
Proses ini disebut mendapatkan dependensi.
<h2>Mengimpor libraries dari packages</h2>
Untuk mengimpor libraries yang ditemukan dalam package, gunakan package awalah:
<pre>
    <code>
        import 'package:js/js.dart' as js;
        import 'package:intl/intl.dart';
    </code>
</pre>
Dart runtime mengambil semuanya setelahnya package: dan mencarinya di dalam .packagesfile untuk aplikasi Anda.
<h2>Contoh Menggunakan package css_colors</h2>
package <kbd>css_colors</kbd> mendefinisikan konstanta warna untuk warna CSS, jadi gunakan konstanta dimanapun
kerangka Flutter mengharapkan jenis warna. <br><br>
Untuk menggunakan paket package ini:
<ol>
    <li>Buat proyek baru <kbd>cssdemo</kbd></li>
    <li>Buka <kbd>pubspec.yaml</kbd> dan tambahkan <kbd>css-colors</kbd> dipendency:</li>
    <pre>
        <code>
        dependencies:
        flutter:
            sdk: flutter
        css_colors: ^1.0.0
        </code>
    </pre>
    <li>Jalankan flutter pub get di terminal</li>
    <li>Buka <kbd>lib/main.dart</kbd> dan ganti kontek lengkapnya dengan:</li>
    <pre>
        <code>
        import 'package:css_colors/css_colors.dart';
        import 'package:flutter/material.dart';
        void main() {
            runApp(MyApp());
        }
        class MyApp extends StatelessWidget {
            @override
            Widget build(BuildContext context) {
            return MaterialApp(
                home: DemoPage(),
            );
            }
        }
        class DemoPage extends StatelessWidget {
            @override
            Widget build(BuildContext context) {
            return Scaffold(body: Container(color: CSSColors.orange));
            }
        }               
        </code>
    </pre>
    <li>Jalankan aplikasi, latar belakang aplikasi sekarang berwarna orange</li>
</ol>
<img src="img/1.png">
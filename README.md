# FeetBalls
FeetBalls

### Author
- Name: Muhammad Nadhif Ibrahim
- NPM: 2406398324
- Class: PBP C

---

## Tugas Individu 7 - PBP Ganjil 2025/2026

### Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.

Dalam Flutter, semua elemen UI adalah widget (text, button, column, dll). Widget-widget tersebut disusun secara hierarkis seperti pohon, itulah mengapa disebut Widget Tree. Parent adalah widget yang membungkus atau menampung child. Misalnya Center(child: Text("Halo!"),). Di sini parent-nya adalah Center dan Text adalah child di mana parent menentukan posisi child tersebut di tengah.

### Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.

1. MaterialApp: Struktur dasar aplikasi Flutter berbasis Material Design (tema, navigasi, font, dsb).
2. ThemeData: Mengatur tema global aplikasi seperti warna primer, sekunder, dsb.
3. ColorScheme: Menentukan skema warna aplikasi, misalnya warna utama/sekunder.
4. Scaffold: Kerangka utama layar dalam Material App.
5. AppBar: Bagian header aplikasi.
6. Padding: Inner spacing.
7. Column: Menyusun widget secara vertikal.
8. Row: Menyusun widget secara horizontal.
9. SizedBox: Member jarak kosong antar widget.
10. Center: Memusatkan widget ke tengah.
11. GridView.count: Menampilkan widget dalam bentuk grid.
12. Card: Widget berbentuk kartu.
13. Container: Widget serbaguna.
14. Text: Menampilkan teks.
15. Icon: Menampilkan ikon.
16. Material: Memberikan efek visual Material Design pada widget.
17. InkWell: Menangani event ketika widget diklik.
18. SnackBar: Menampilkan notifikasi pop-up.
19. ScaffoldMessenger: Mengelola SnackBar yang muncul di dalam Scaffold.
20. MediaQuery: Mengambil informasi ukuran layar.
21. EdgeInsets: Memberi padding atau margin.
22. IconData: Ikon yang dipakai di Icon.
23. StatelessWidget: Dasar untuk membuat widget yang tidak berubah selama runtime.

### Apa fungsi dari widget `MaterialApp`? Jelaskan mengapa widget ini sering digunakan sebagai widget root.

MaterialApp adalah widget untuk membangun aplikasi dengan gaya Material Design (standar desain Android). Fungsinya adalah memberikan struktur dasar aplikasi, menyediakan Theme secara global, menangani navigasi antar halaman, mengatur locale & text direction, menyiapkan debugging, dan mengatur home. Karena fungsi-fungsi tersebutlah MaterialApp dijadikan sebagai widget root.

### Jelaskan perbedaan antara `StatelessWidget` dan `StatefulWidget`. Kapan kamu memilih salah satunya?

`StatelessWidget` tidak memiliki state (data) yang dapat berubah setelah dibuat sehingga cocok untuk tampilan statis. `StatefulWidget` memiliki state (data) yang dapat berubah selama aplikasi berjalan sehingga ketika state berubah, UI otomatis direbuild. Pilih `StatelessWidget` untuk UI statis dan tidak berubah atau `StatefulWidget` untuk UI yang perlu diperbarui seiring waktu.

### Apa itu `BuildContext` dan mengapa penting di Flutter? Bagaimana penggunaannya di metode `build`?

`BuildContext` adalah objek yang menunjukkan posisi sebuah widget di widget tree dan dipakai untuk mengakses tema, navigasi, MediaQuery, dan ScaffoldMessenger. Di metode `build`, context digunakan untuk membangun UI sesuai environment tempat widget berada.

### Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".

Hot reload adalah fitur yang memungkinkan developer melihat perubahan kode secara langsung tanpa kehilangan state aplikasi. Perubahan UI atau logic akan langsung muncul di layar. Hot restart harus me-restart aplikasi dari awal, termasuk menghapus semua state yang tersimpan di memori.

---

## Tugas Individu 8 - PBP Ganjil 2025/2026

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?

Dalam routing, terdapat suatu stack route yang dikelola oleh Navigator. Navigator.push() akan menambahkan route ditambahkan pada paling atas stack, sehingga route yang baru ditambah akan muncul dan ditampilkan ke pengguna. Navigator.pushReplacement() bekerja dengan menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route. Ketika ingin Add Product, kita cukup menggunakan push, maka ketika kita ingin kembali ke halaman sebelumnya (posisinya belum add product), kita bisa langsung Navigator.pop() saja. Tetapi ketika kita sudah menambah produk tersebut, kita gunakan pushReplacement agar tidak ke halaman saat kita Add Product lagi.

### Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?

Saya memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk menjaga konsistensi struktur antar halaman.
Scaffold berperan sebagai kerangka utama halaman yang menampung elemen-elemen standar seperti AppBar dan Drawer.
AppBar digunakan untuk menampilkan judul dan aksi halaman dengan gaya yang seragam, sedangkan Drawer menyediakan navigasi global agar pengguna dapat berpindah antar halaman dengan mudah.
Dengan kombinasi ketiganya, setiap halaman dalam aplikasi memiliki tampilan dan navigasi yang konsisten.

### Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

Padding dapat memberi jarak antar elemen form dan dari tepi layar. Seandainya saya tidak memakai Padding di ProductFormPage, semua TextFormField akan berdempetan dengan satu sama lain. SingleChildScrollView mengizinkan halaman untuk di-scroll ketika kontennya terlalu panjang. Lalu ListView berguna untuk menampung banyak item dalam bentuk list vertikal dan bisa di-scroll ketika item-nya terlalu banyak.

### Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

Saya membiarkan appBar dari ProductFormPage menjadi warna biru, sama seperti appBar dari HomePage.

## Tugas Individu 9 - PBP Ganjil 2025/2026

### Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan `Map<String, dynamic>` tanpa model (terkait validasi tipe, null-safety, maintainability)?

Kita perlu membuat model Dart karena model memberikan struktur data yang jelas, aman, dan terprediksi saat memproses JSON dari Django. Jika hanya menggunakan `Map<String, dynamic>`, semua data menjadi dynamic sehingga rawan typo pada key, rentan error runtime ketika tipe data berubah, dan sulit ditangani oleh null-safety. Dengan model, setiap field memiliki tipe yang pasti, parsing JSON terpusat di satu tempat, dan kode lebih mudah dirawat serta digunakan kembali di banyak halaman. Tanpa model, aplikasi akan lebih sulit dimaintain dan jauh lebih rentan terhadap bug tersembunyi.

### Apa fungsi package `http` dan `CookieRequest` dalam tugas ini? Jelaskan perbedaan peran `http` vs `CookieRequest`.

Package http digunakan untuk melakukan request HTTP dasar seperti GET dan POST tanpa menyimpan cookie atau informasi sesi, sehingga cocok untuk komunikasi stateless atau endpoint publik. Sebaliknya, CookieRequest dari package pbp_django_auth dirancang khusus untuk berinteraksi dengan Django karena ia menyimpan dan mengirimkan cookie session secara otomatis, memungkinkan proses login, autentikasi, dan akses endpoint yang membutuhkan user login. Dengan kata lain, http hanya mengirim request biasa, sementara CookieRequest mengelola sesi autentikasi sehingga Flutter bisa tetap dianggap “logged in” oleh Django di setiap request.

### Jelaskan mengapa instance `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

Instance CookieRequest perlu dibagikan ke seluruh komponen Flutter karena objek ini menyimpan cookie sesi (sessionid), status login, dan informasi autentikasi yang digunakan untuk setiap request ke Django. Jika tiap halaman membuat instance baru, cookie tidak akan ikut terbawa sehingga Django menganggap pengguna belum login dan semua endpoint yang membutuhkan autentikasi akan gagal. Dengan membagikan satu instance melalui Provider, seluruh halaman berbagi sesi yang sama, sehingga login hanya dilakukan sekali, dan semua request berikutnya otomatis dianggap berasal dari user yang sudah terautentikasi.

### Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan `10.0.2.2` pada `ALLOWED_HOSTS`, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?

Agar Flutter dapat berkomunikasi dengan Django, diperlukan beberapa konfigurasi penting seperti menambahkan 10.0.2.2 ke ALLOWED_HOSTS karena Android emulator menggunakan alamat itu untuk mengakses localhost Django, mengaktifkan CORS agar Django mengizinkan request dari aplikasi Flutter yang berasal dari origin berbeda, serta mengatur SameSite dan cookie agar session login bisa dikirim dan diterima dengan benar. Selain itu Android perlu diberi izin internet melalui AndroidManifest.xml. Jika konfigurasi ini tidak dilakukan dengan benar, request dari Flutter akan ditolak, cookie tidak akan terbaca sehingga login gagal, dan aplikasi tidak bisa mengambil atau mengirim data ke Django.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Mekanisme pengiriman data dimulai ketika pengguna memasukkan informasi di Flutter, lalu nilai dari form dikirim ke Django melalui CookieRequest menggunakan metode GET atau POST. Django menerima request tersebut, memprosesnya melalui view yang sesuai, mengambil atau menyimpan data pada database, lalu mengembalikannya dalam format JSON. Flutter menerima JSON tersebut, mengubahnya menjadi objek Dart melalui model seperti ProductEntry, lalu objek ini diteruskan ke widget seperti ListView atau DetailPage untuk ditampilkan. Dengan alur ini, data mengalir dari input pengguna, diproses oleh Django, lalu kembali ke Flutter dalam bentuk yang siap dirender ke layar.

### Jelaskan mekanisme autentikasi dari `login`, `register`, hingga `logout`. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Mekanisme autentikasi dimulai ketika pengguna memasukkan username dan password di Flutter, lalu data tersebut dikirim ke Django melalui CookieRequest ke endpoint login atau register. Django memvalidasi kredensial, membuat akun jika register, atau membuat session baru jika login berhasil, lalu mengembalikan response JSON berisi status autentikasi bersama cookie session. CookieRequest otomatis menyimpan cookie tersebut sehingga setiap request berikutnya dianggap berasal dari user yang sudah login. Flutter mengecek request.loggedIn, dan jika berhasil, aplikasi menampilkan halaman menu utama. Untuk logout, Flutter memanggil endpoint logout di Django, Django menghapus session, dan CookieRequest menghapus cookie lokal, sehingga Flutter kembali ke halaman login. Dengan alur ini, proses autentikasi berjalan penuh dari input pengguna, validasi Django, penyimpanan session, hingga tampilnya menu setelah user berhasil login.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

1. Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
Ubah URL di Flutter menjadi web PWS, push ke PWS, buka web nya, tes endpoint-endpoint yang sudah ditambahkan kayak auth/login, dll.

2. Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
Untuk mengimplementasikan fitur registrasi akun di Flutter, aku membuat halaman RegisterPage yang berisi form input username, password, dan konfirmasi password. Setelah pengguna mengisi form, Flutter mengirim data tersebut ke endpoint /auth/register/ di Django menggunakan request.postJson() dari CookieRequest. Django memproses data, memvalidasi kecocokan password, memastikan username belum dipakai, lalu membuat user baru jika valid. Flutter kemudian membaca respons JSON dari Django, menampilkan SnackBar sebagai notifikasi keberhasilan atau kegagalan, dan melakukan navigasi otomatis kembali ke halaman login setelah registrasi berhasil.

3. Membuat halaman login pada proyek tugas Flutter.
Untuk membuat halaman login pada proyek Flutter, aku membangun LoginPage yang berisi form username dan password, lalu memproses input pengguna menggunakan request.login() dari CookieRequest. Flutter mengirim data kredensial tersebut ke endpoint /auth/login/ di Django, yang kemudian memverifikasi username dan password menggunakan sistem autentikasi bawaan Django. Jika login berhasil, Django mengembalikan cookie sesi yang otomatis disimpan oleh CookieRequest, sehingga status login tersinkronisasi di seluruh aplikasi. Flutter kemudian menampilkan notifikasi keberhasilan dan melakukan navigasi ke halaman menu utama, sedangkan jika gagal aplikasi menampilkan dialog error. Dengan mekanisme ini, login di Flutter terhubung langsung dan aman dengan sistem autentikasi Django.

4. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Untuk mengintegrasikan sistem autentikasi Django dengan Flutter, aku menggunakan package pbp_django_auth dan memastikan semua permintaan login, register, dan logout dikirim melalui CookieRequest, yang menangani penyimpanan cookie sesi Django secara otomatis. Flutter mengirim data kredensial ke endpoint Django (/auth/login/ dan /auth/register/), lalu Django memprosesnya menggunakan sistem autentikasi bawaan dan mengembalikan cookie sesi jika berhasil. Cookie ini disertakan pada setiap request berikutnya sehingga server dapat mengenali pengguna yang sedang login, termasuk ketika mengambil data yang terasosiasi dengan user. Di Flutter, instance CookieRequest aku bagikan ke seluruh widget melalui Provider, sehingga seluruh bagian aplikasi dapat mengetahui status login dan mengakses endpoint Django yang membutuhkan autentikasi. Dengan cara ini, Flutter dan Django dapat saling berkomunikasi menggunakan sesi yang sama seperti aplikasi web Django biasanya.

5. Membuat model kustom sesuai dengan proyek aplikasi Django.
Untuk membuat model kustom di Flutter yang sesuai dengan model Django, aku mulai dengan melihat struktur JSON yang dikembalikan oleh endpoint /json/ pada Django. Berdasarkan field yang ada di model Product (seperti id, name, price, description, thumbnail, category, dan sebagainya), aku membuat kelas Dart ProductEntry lengkap dengan constructor, tipe data yang tepat, serta metode fromJson() dan toJson(). Model ini memastikan setiap respons JSON dikonversi menjadi objek Dart yang aman tipe (null-safe), sehingga aplikasi Flutter lebih mudah di-maintain dan tidak rentan error. Dengan memiliki model kustom, seluruh bagian aplikasi bisa menggunakan representasi data yang konsisten dan mudah dipakai untuk menampilkan daftar produk, detail produk, dan lainnya.

6. Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
Untuk menampilkan daftar seluruh item dari endpoint JSON Django, aku membuat halaman ProductEntryListPage di Flutter yang melakukan request ke endpoint deployment Django, misalnya https://muhammad-nadhif41-footballshop.pbp.cs.ui.ac.id/json/. Pada halaman ini, aku menggunakan FutureBuilder untuk memanggil request.get() melalui CookieRequest, lalu mengubah setiap elemen JSON menjadi objek ProductEntry menggunakan model Dart yang sudah dibuat. Setelah datanya diterima, aku menampilkannya dalam ListView.builder dengan widget ProductEntryCard untuk menampilkan informasi seperti nama, harga, kategori, dan thumbnail. Dengan cara ini, Flutter menampilkan semua item yang sudah dideploy di Django secara real-time.

7.  Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Untuk membuat halaman detail setiap item, aku membuat widget ProductDetailPage yang menerima satu objek ProductEntry sebagai parameter. Di halaman ini, semua atribut item seperti nama, harga, deskripsi, brand, kategori, stok, rating, dan thumbnail ditampilkan secara lengkap dan rapi. Pada halaman daftar item (ProductEntryListPage), aku menambahkan aksi onTap pada ProductEntryCard sehingga ketika sebuah kartu ditekan, aplikasi akan melakukan Navigator.push() menuju ProductDetailPage sambil membawa data produk terkait. Dengan begitu, setiap item dalam list memiliki halaman detail yang menampilkan seluruh informasinya secara terpisah.
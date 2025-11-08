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
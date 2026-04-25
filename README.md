# 📚 Toko Buku Rama

> Sistem Informasi Penjualan dan Manajemen Toko Buku Berbasis Web

---

## 📖 Deskripsi

**Toko Buku Rama** adalah aplikasi berbasis web yang dirancang untuk membantu proses pengelolaan penjualan buku secara efisien dan terstruktur.
Aplikasi ini menyediakan fitur untuk pengguna dalam melakukan pembelian serta fitur admin untuk mengelola produk, stok, dan data pelanggan.

---

## 🎯 Fitur Utama

### 👤 User

* 🛒 Melakukan pembelian buku
* 📜 Melihat riwayat transaksi
* 💳 Melakukan pembayaran

### 🛠️ Admin

* 📦 Manajemen produk (tambah, edit, hapus)
* 📊 Pengelolaan stok barang
* 👥 Manajemen data pelanggan

---

## 🖥️ Tampilan Sistem

> (Tambahkan screenshot di sini untuk meningkatkan kualitas README)

---

## 🛠️ Teknologi yang Digunakan

* PHP (Native / Framework)
* MySQL / MariaDB
* HTML, CSS, JavaScript
* Bootstrap (UI Framework)
* XAMPP (Web Server Lokal)

---

## ⚙️ Instalasi & Menjalankan Aplikasi

1. Install **XAMPP**

2. Jalankan **Apache** dan **MySQL**

3. Clone repository:

   ```bash
   git clone https://github.com/username/toko-buku-rama.git
   ```

4. Pindahkan folder project ke:

   ```bash
   C:\xampp\htdocs\
   ```

5. Import database:

   * Buka `http://localhost/phpmyadmin`
   * Buat database baru (misal: `toko_buku_rama`)
   * Import file `.sql` yang tersedia

6. Jalankan aplikasi:

   ```bash
   http://localhost/toko-buku-rama
   ```

---

## 🔐 Akun Login (Default)

| Role  | Username | Password |
| ----- | -------- | -------- |
| Admin | admin    | admin123 |
| User  | user     | user123  |

---

## 📁 Struktur Project

```bash
toko-buku-rama/
│── assets/        # CSS, JS, gambar
│── config/        # Koneksi database
│── controllers/   # Logika aplikasi
│── views/         # Tampilan (UI)
│── models/        # Pengolahan data
│── database/      # File SQL
│── index.php      # Entry point
```

---

## 🔄 Alur Sistem

1. User melakukan login
2. User memilih buku dan melakukan pembelian
3. Sistem mencatat transaksi
4. User melakukan pembayaran
5. Admin mengelola produk, stok, dan pelanggan

---

## 📌 Kelebihan Aplikasi

* Interface sederhana dan mudah digunakan
* Mendukung manajemen data secara terpusat
* Mempermudah proses transaksi penjualan buku

---

## 🚀 Pengembangan Selanjutnya

* Integrasi payment gateway
* Fitur laporan penjualan
* Sistem notifikasi transaksi
* Responsive mobile UI

---

## 👨‍💻 Author

* **Nama**: Ramasya Raihan
* **Program**: UJK Junior Web Programmer
* **Tahun**: 2026

---

## 📄 Lisensi

Proyek ini dibuat untuk keperluan pembelajaran dan ujian.

---

## ⭐ Penutup

Terima kasih telah menggunakan **Toko Buku Rama**.
Semoga aplikasi ini dapat membantu dalam pengelolaan toko buku secara efektif 🙏

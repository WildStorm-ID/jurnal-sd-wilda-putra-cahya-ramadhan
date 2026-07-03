# FINAL REPORT: LAPORAN KONTRIBUSI INDIVIDU
**Mata Kuliah:** Software Development (Minggu 16)  
**Proyek Kelompok:** Website Showroom Motor

---

## 1. Profil Mahasiswa
* **Nama Lengkap:** Wilda Putra Cahya Ramadhan
* **NIM:** 2313020203
* **Peran dalam Tim:** Backend Developer

---

## 2. Kontribusi Spesifik (16 Minggu)

Pengembangan sebagai tim menjadi sebuah tantangan yang cukup unik dan melatih koordinasi saya dalam mengembangkan dan berkontribusi pada hasil project tim kami. dari 16 minggu pengerjaan tersebut ada beberapa kontribusi yang menurut saya paling memberikan *impact* pada proses dan hasil akhir project sebagai berikut:
* Menggunakan Framework CodeIgniter4 (CI4) pada repositori tim sehingga memudahkan pembagian working directory masing masing peran dengan rapi
* Penyusunan Database pada CI4 dengan fitur Migration dan Seeder memudahkan teman satu tim dalam mereplikasi kondisi maupun skema dari database sesuai dengan database_schema yang diminta Product Lead
* Penyusunan Docker Compose Production Final yang akan dipakai sebagai versi final yang dimana database volume wajib bisa jalan tanpa kehilangan data ketika di compose up maupun down tanpa mengganggu/menghilangkan hasil migration dan seeder di awal  

### Kontribusi Teknis / Fitur yang Dikembangkan:
* **Implementasi Framework CodeIgniter4:** Struktur project jadi rapi, aman dari konflik, dan proses development bisa dijalankan bersama sama dengan Product Lead, Backend Developer, dan Frontend Developer
* **Migration dan Seeder:** Frontend Developer tidak perlu pusing dengan inkonsistensi data karena dengan adanya Migration dan Seeder sesuai ``api_contract.md`` dari CI4 maka tidak akan terjadi miskomunikasi.
* **Docker Volume:** Dengan adanya Volume docker pada final ``docker.compose.prod.yml`` maka kombo Migration dan Seeder+docker volume akan meminimalisir resiko mismatch database dan masalah classic "_it works on my machine_".

### Kontribusi Non-Teknis / Kolaborasi:
* Menyusun dokumentasi API contract, mengonfigurasi Dockerfile dan berdiskusi dalam pengambilan keputusan menentukan isi dan ketentuan bersama pada dokumen di docs terutama ``database_schema.md``, ``api_contract.md``, dan ``DESIGN.md``.
* Membantu proses penyelarasan issue di GitHub Projects bersama Product Lead hingga semua issue dan projects berstatus Done.

---

## 3. Daftar Commit Terbaik (Bukti Kontribusi)
*Sertakan tautan (link) langsung menuju commit terbaik yang mencerminkan kualitas kode dan etika kerjamu di repositori kelompok.*

1. **Struktur Kerja Framework CI4:** Fitur: Setup Enviroment direktori kerja tim.

   * [Link Commit Framework](https://github.com/pidz14/website-showroom-sepeda-motor-/commit/6da9673de578874e02ece1c8b1bf2473c4e9c7ce)

2. **Fitur/Perbaikan Skema Database:** Refactor: Optimalisasi skema database dan pengisian data otomatis via migration dan seeder.

   * [Link Commit Skema Database](https://github.com/pidz14/website-showroom-sepeda-motor-/commit/3b9ad40fb795d4729b1555689e368ed893bcbb4b)

   * [Link Commit Migration](https://github.com/pidz14/website-showroom-sepeda-motor-/commit/296361c0d35cf3c6e32e470482525a8f598a3089)

   * [Link Commit Seeder](https://github.com/pidz14/website-showroom-sepeda-motor-/commit/3e335d8edd351120af020da56ae1593238d5b6b3)

3. **Model dan Perbaikan ``docker.compose.prod.yml``:** Menambahkan Model supaya data database bisa diolah ke controllers dan dan views serta perbaikan ``docker.compose.prod.yml`` pada bagian penyambungan skema database dari mysql ke docker.

   * [Link Commit Model](https://github.com/pidz14/website-showroom-sepeda-motor-/commit/fb22183206860b2cd237aba031e27fbec9be84a5)

   * [Link Commit Compose](https://github.com/pidz14/website-showroom-sepeda-motor-/commit/cb3368f534db18268cb7fae932ec9a6a6b1c16fb)

---

## 4. Refleksi Akhir & Pembelajaran

> Selama 16 minggu pengerjaan proyek ini, saya mendapatkan gambaran nyata mengenai bagaimana alur kerja software development di dunia industri berjalan, khususnya dalam koordinasi tim multi-peran. Sebagai Backend Developer, saya belajar bahwa menjaga konsistensi data dan lingkungan kerja adalah hal yang krusial. Penggunaan fitur *Migration* dan *Seeder* pada CodeIgniter 4 yang dipadukan dengan implementasi Docker Volume terbukti sangat efektif untuk mengeliminasi masalah klasik "*it works on my machine*" saat berintegrasi dengan Frontend. Selain itu, kolaborasi intensif melalui Git/GitHub mengajarkan saya pentingnya kedisiplinan dalam menulis *commit history* yang rapi dan penyusunan dokumentasi teknis yang jelas (seperti *``API Contract``*) demi kelancaran proses pengembangan yang berkelanjutan (*sustainable development*).
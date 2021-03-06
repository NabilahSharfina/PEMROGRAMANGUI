# π» KELOMPOK 9
  Terdiri dari 3 anggota, sebagai berikut:
  |  | Nama | NIM | Kelas | Tugas |
  | - | - | - | - | - |
  | π¨βπ | **Sofiyudin Pamungkas** | 19104001 | S1 SE-03-A | Mengusulkan ide projek, menyusun laporan ide projek, dan membuat *prototype* di Figma |
  | π¨βπ | **Ibnu Adha N.** | 19104020 | S1 SE-03-A | Membuat desain GUI dan koneksi *database* ke *Python* pada menu *login* & *register* |
  | π©βπ | **Nabilah Sharfina** | 19104025 | S1 SE-03-A | Menyusun laporan ide projek, membuat desain *database*, membuat *use case diagram*, membuat desain GUI, koneksi *database* ke *Python*, dan menyusun dokumentasi di *github* |

# π SOAL UAS 
    1.  Pilihlah sebuah kasus untuk diselesaikan menggunakan aplikasi GUI! 
    2.  Buatlah sebuah aplikasi dengan menerapkan bahasa pemrograman Python
        dengan framework PyQt sesuai dengan kasus yang dipilih pada nomor (1)!
    3.  Lengkapi dokumen perancangan aplikasi seperti:
            a.  Use case diagram (role yang tersedia pada aplikasi);
            b.  Desain *database*;
    4.  Terapkan beberapa fitur pada PyQT dalam aplikasi Anda seperti:
            a.  Kelas kontrol (widget) / non kontrol;
            b.  Form / dialog;
            c.  Multimedia;
            d.  Terkoneksi dengan database;
    5.  Upload aplikasi melalui github dan berikan panduan penggunan serta
        screenshot pada readme yang lengkap dan jelas!

# π₯ APLIKASI "*CHECK UP*"
  **A.  GAMBARAN UMUM**
      
      Aplikasi βCheck Up Kesehatan Manusiaβ yang bertujuan untuk memudahkan pengguna dalam periksa kondisi kesehatan fisik. 
      Kami terinspirasi dari kondisi pandemi Covid-19 yang muncul pada akhir tahun 2019 hingga saat ini. Harapan kami, 
      ide ini bisa menjadi solusi demi meminimalisir penyebaran Covid-19 yang belum juga reda hingga bagaimana caranya 
      agar tubuh manusia tetap terjaga. Aplikasi ini bisa digunakan oleh seluruh kalangan dengan tidak memandang usia, 
      derajat maupun jenis kelamin. Melalui aplikasi ini, pengguna dapat mengakses beragam informasi terkait program kesehatan 
      yang diselenggarakan oleh pemerintah secara cepat, mudah, pelayanan yang optimal, di mana pun, kapan pun.

**Didukung oleh:**

<a href="https://www.apachefriends.org/index.html">
  <img src="https://img.shields.io/badge/Xampp-F37623?style=for-the-badge&logo=xampp&logoColor=white">
</a>
<a href="https://www.mysql.com/">
  <img src="https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white">
</a>
<a href="https://www.python.org/">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white">
</a>
<a href="https://www.qt.io/">
  <img src="https://img.shields.io/badge/Qt-41CD52?style=for-the-badge&logo=qt&logoColor=white">
</a>

  **B.  USE CASE DIAGRAM**
  
![use case](https://user-images.githubusercontent.com/58089002/127747524-1c7acb13-3e47-403c-8865-1f7f09006bfb.png)

  **C.  DESAIN DATABASE**
  
![database](https://user-images.githubusercontent.com/58089002/127747526-66a20c75-2e20-4e8f-93ec-d6e3354304d5.png)

  **D.  DEMO PROGRAM**
     
      1.  Install PyMySQL
          Sebelum membuat koneksi ke database mysql, perlu meng-install package PyMySQL yang akan menghubungkan 
          python ke database yang telah dibuat. Tuliskan perintah berikut pada command prompt:
![install pymysql](https://user-images.githubusercontent.com/58089002/127750174-2984a684-828d-432b-8c38-86eff8b40fab.png)
          
          Tunggu sampai prosesnya selesai, jika sudah selesai untuk mengecek package sudah ter-install 
          dengan benar atau belum, caranya dengan menuliskan perintah seperti di bawah ini:
![import pymysql](https://user-images.githubusercontent.com/58089002/127750171-f838b200-6ec2-4572-964b-037a0b2c464c.png)

          Jika hasilnya seperti gambar di atas, maka instalasi dinyatakan telah berhasil.

      2.  Konversi .ui ke .py
          Pertama, membuat desain ui menggunakan Qt Designer. Kemudian, konversi file .ui dari Qt Designer yang telah dibuat 
          sebelumnya menjadi file .py. Untuk mengkonversinya, ketikkan perintah seperti di bawah ini pada command prompt:
![konversi ui ke py](https://user-images.githubusercontent.com/58089002/127750175-4b950ec0-a781-4f97-b47d-0553c023d237.png)

      3.  Menampilkan menu dashboard
          Sebelum:
![dashboard](https://user-images.githubusercontent.com/58089002/128672937-58c0e572-e73d-4e09-90d3-6992881f9706.png)

          Sesudah:
          
          
      4.  Menampilkan menu artikel kesehatan untuk dibaca oleh pasien
          Sebelum:
![artikel](https://user-images.githubusercontent.com/58089002/128672926-ddb92b02-8ba0-4395-a963-b8436a944f8f.png)

          Sesudah:
          
          
      5.  Menampilkan menu chat antara pasien dan dokter
          Sebelum:
![chat](https://user-images.githubusercontent.com/58089002/128672933-df064ee3-4caa-43fb-be94-ea8e85011cc9.png)

          Sesudah:
          
          
      6.  Menampilkan menu scan suhu tubuh untuk pasien
          Sebelum:
![scan](https://user-images.githubusercontent.com/58089002/128672907-4296f966-2d44-4b90-9a8d-baec64afb465.png)

          Sesudah:
          
          
      7.  Menampilkan menu tes laboratorium / cek kesehatan oleh pasien dan dokter / pasien dan laborat
          Sebelum:
![tesLab](https://user-images.githubusercontent.com/58089002/128672919-425bf249-cd1f-405e-96e2-7d31f6e8bc9a.png)

          Sesudah:
          
          
      8.  Menampilkan menu janji medis yang dilakukan oleh pasien dan dokter
          Sebelum:
![janji](https://user-images.githubusercontent.com/58089002/128672941-6fa83ee4-b980-445e-b945-61c0cb011255.png)

          Sesudah:


      9.  Menampilkan menu layanan asuransi bagi pasien
          Sebelum:
![asuransi](https://user-images.githubusercontent.com/58089002/128672930-4c980d14-2853-4dfe-8eb0-febaa33bf072.png)

          Sesudah:
          
          
      10.  Menampilkan menu tagihan transaksi yang ditujukan pada pasien
           Sebelum:
![transaksi](https://user-images.githubusercontent.com/58089002/128672923-c1f11cfe-8e49-4e71-a0c2-7c02f182b50a.png)
          
           Sesudah:
          

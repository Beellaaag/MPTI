-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2022 pada 09.14
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2022_05_yayasanhuripbagjagasanka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_admin`
--

CREATE TABLE `data_admin` (
  `id_data_admin` int(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `level` enum('Administrator') NOT NULL,
  `status` enum('Active','Non-Active') NOT NULL,
  `session` text DEFAULT NULL,
  `terakhir_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_admin`
--

INSERT INTO `data_admin` (`id_data_admin`, `username`, `password`, `nama`, `jenis_kelamin`, `avatar`, `level`, `status`, `session`, `terakhir_login`) VALUES
(1, 'arpateam', '$2y$10$xejyFf89oZrpJJBIqW9gQu6z0lY.IAR6NSF7q8p/nQTwh4DKvU/mW', 'Administrator Yayasan Hurip Bagja Gasanka', 'Laki-Laki', 'administrator-yayasan-hurip-bagja-gasanka-administrator.png', 'Administrator', 'Active', NULL, '2022-05-26 22:21:30'),
(2, 'pegawai02', '$2y$10$tDUb.ZESAwFTIa9l42VjW.sW58beJs8k8RjywB5Vuinv7Fa6BERrG', 'Pegawai 2121', 'Laki-Laki', 'pegawai-2121-administrator.png', 'Administrator', 'Active', NULL, '2022-03-30 19:34:19'),
(5, 'admin', '$2y$10$gDBHPeDBjBQQdR1t9ei1x.rws.mK.qkx6WCR1auS5deJqLzXtP7LC', 'Administrator Yayasan Hurip Bagja Gasanka', 'Laki-Laki', 'administrator-yayasan-hurip-bagja-gasanka-administrator.png', 'Administrator', 'Active', 'f87f405941cf41f0c2b5b1939e8a1f9edac7e03c7ceb1491ca5ef467f3bdc6dbb27c6ace4694a5892bb91a55998cc1ee276d17a92e5f590d9e6f6de791c61c6e', '2022-07-02 13:23:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(10) NOT NULL,
  `id_galeri_judul` int(4) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_galeri_judul`, `ket`, `gambar`, `tgl_update`) VALUES
(7, 2, 'Perpustakaan 2', '2-perpustakaan-perpustakaan-2.jpeg', '2022-05-27'),
(9, 2, 'Perpustakaan 1', '2-perpustakaan-perpustakaan-1.jpeg', '2022-05-27'),
(18, 1, 'Rapat Kepengurusan 3', '1-rapat-kepengurusan-rapat-kepengurusan-3.jpeg', '2022-05-27'),
(19, 1, 'Rapat Kepengurusan 2', '1-rapat-kepengurusan-rapat-kepengurusan-2.jpeg', '2022-05-27'),
(20, 1, 'Rapat Kepengurusan 1', '1-rapat-kepengurusan-rapat-kepengurusan-1.jpeg', '2022-05-27'),
(21, 1, 'Rapat Kepengurusan 4', '1-rapat-kepengurusan-rapat-kepengurusan-4.jpeg', '2022-05-27'),
(22, 3, 'Kegiatan Menanam Tanaman 1', '3-kegiatan-cinta-tanaman-kegiatan-menanam-tanaman.jpeg', '2022-05-27'),
(23, 3, 'Menanam Tanaman 2', '3-kegiatan-cinta-tanaman-menanam-tanaman-2.jpeg', '2022-05-27'),
(24, 3, 'Tanaman', '3-kegiatan-cinta-tanaman-tanaman.jpeg', '2022-05-27'),
(25, 4, 'Kegiatan Mengaji 1', '4-mengaji-kegiatan-mengaji-1.jpeg', '2022-05-27'),
(26, 4, 'Kegiatan Mengaji 2', '4-mengaji-kegiatan-mengaji-2.jpeg', '2022-05-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_judul`
--

CREATE TABLE `galeri_judul` (
  `id_galeri_judul` int(4) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri_judul`
--

INSERT INTO `galeri_judul` (`id_galeri_judul`, `judul`, `slug`, `tgl_update`) VALUES
(1, 'Rapat Kepengurusan', 'rapat-kepengurusan', '2022-05-25'),
(2, 'Perpustakaan', 'perpustakaan', '2022-05-25'),
(3, 'Kegiatan Cinta Tanaman', 'kegiatan-cinta-tanaman', '2022-05-27'),
(4, 'Mengaji', 'mengaji', '2022-05-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabar`
--

CREATE TABLE `kabar` (
  `id_kabar` int(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slider` enum('Yes','No') NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `keyword` text NOT NULL,
  `description` text NOT NULL,
  `tgl_terbit` date NOT NULL,
  `tgl_update` date NOT NULL,
  `id_sitemap` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kabar`
--

INSERT INTO `kabar` (`id_kabar`, `judul`, `slider`, `gambar`, `deskripsi`, `slug`, `keyword`, `description`, `tgl_terbit`, `tgl_update`, `id_sitemap`) VALUES
(9, 'Pendaftaran Fasilitator Yayasan', 'Yes', 'pendaftaran-fasilitator-yayasan.jpeg', '<p>Dalam rangka menyambut bulan Ramadha 1443 H. Yayasan Hurip Bagja Gasanka akan membuat Sakola Hurip Bagja Gasanka Sukaratu (Banuresmi, dekat situ Bagendit II). Maka dari itu, Kami membuka kesempatan untuk ibu/bapak/Akang/Teteh yang berminat sebagai fasilitator pendidikan Sakola Hurip Bagja (Setara TK, SD, SMP).</p>', 's-kpendaftaran-fasilitator-hurip-bagja-bandung', 's&amp;kpendaftaran-fasilitator-hurip-bagja-bandung', 's&amp;kpendaftaran-fasilitator-hurip-bagja-bandung', '2022-05-26', '2022-07-02', 19),
(10, 'Kegiatan Ngaji Bareng Anak-anak', 'Yes', 'kegiatan-ngaji-bareng-anak-anak.jpeg', '<p>Sekolah non-formal yang membawa misi perubahan akhlak menjadi Akhlakul Karimah. Para pegiat dan fasilitator di Sakola Hurip Bagja akan selalu berusaha meneladani dan menjadi pengurus misi Baginda Rasul yang diutus untuk menyempurnakan akhlak umatnya. </p>', 'ngaji-bareng-sakola-hurip-bagja', 'ngaji-bareng-sakola-hurip-bagja', 'ngaji-bareng-sakola-hurip-bagja', '2022-05-26', '2022-07-02', 20),
(11, 'Sanlat Ramadhan Asyik', 'Yes', 'sanlat-ramadhan-asyik.jpeg', '<p>Menyambut ramadhan 1443 H dengan kegiatan sanlat di sakola Hurip Bagja (SOHIB). 4 s/d 28 April 2022. Sekitar 30 anak usia 6 s/d 13 th di ikut serta belajar bersama fasilitator. Mereka membawa tanaman dari rumah sebagai mahar dari peserta, yang akan dirawat bersama-sama.</p>', 'sanlat-ramadhan-asyik-yayasan-hurip-bagja-gasanka', 'sanlat ramadhan asyik yayasan hurip bagja gasanka bandung', 'sanlat-ramadhan-asyik-yayasan-hurip-bagja-gasanka', '2022-05-26', '2022-07-02', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `page`
--

CREATE TABLE `page` (
  `id_page` int(4) NOT NULL,
  `jenis_page` enum('All','Gambar','Deskripsi','SEO') NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `img_share` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` text NOT NULL,
  `description` text NOT NULL,
  `tgl_update` date NOT NULL,
  `id_sitemap` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `page`
--

INSERT INTO `page` (`id_page`, `jenis_page`, `judul`, `gambar`, `img_share`, `deskripsi`, `slug`, `title`, `keyword`, `description`, `tgl_update`, `id_sitemap`) VALUES
(1, 'SEO', 'Beranda', 'beranda.png', 'beranda-img-share.png', NULL, 'beranda', 'Title Beranda', 'Key Beranda', 'Desc Beranda', '2022-05-26', 1),
(2, 'All', 'Visi dan Misi', 'visi-dan-misi.jpeg', 'visi-dan-misi-img-share.png', '<h1>VISI</h1><p>Menjadi Lembaga Penggerak Masyarakat di bidang Keagamaan, Pendidikan, Kesehatan, Lingkungan, Sosial dan Ekonomu yang berbassis pada potensi warga dan kebutuhan masyarakat untuk mewujudkan masyarakat yang bertakea,sehat,sejahteram dan berdaya di daerahnya sendiri.</p><h1>MISI</h1><ol><li>&nbsp;Membina kehidupan beragama di masyarakat agar menjadi komunitas yang bertakwa berahlak Karimah peduli terhadap sesama dan semesta alam</li><li>Mendirikan lembaga pendidikan komunitas berbasis Fitrah yang sesuai kebutuhan masyarakat setempat</li><li>Menggali dan mengembangkan potensi alam, ekonomi dan sumber daya masyarakat tempat sehingga bermanfaat untuk kesehatan dan kesejahteraan diri, keluarga, alam dan lingkungannyaserta mampu berdaya dii daerahnya sendiri.</li><li>Menggali dan melestarikan budaya dan bahasa daerah yang selaras dengan tuntunan agama sebagai akar budaya masyarakat setempat</li><li>Membangun kerja sama kolaborasi dengan warga setempat paraahli dan pratis, lembaga pemerintah dan lembaga lain yang se-Visi untuk mewujudkan Misi lembaga</li><li>Menjadi lembaga rujukan sebagai Penggerak masyarakat mengelola potensi alam dan lingkungan yang terintegrasi baik dalam sekalah kecil maupun kominal.</li></ol>', 'visi-dan-misi', 'Title Visi dan Misi', 'Keyword Visi dan Misi', 'Desc Visi dan Misi', '2022-05-27', 2),
(3, 'All', 'Arti Nama Yayasan', 'arti-nama-yayasan.jpeg', 'arti-nama-yayasan-img-share.png', '<p><strong>ARTI NAMA YAYASAN</strong></p><p><strong><br></strong></p><p>Hurip : Hidup Sehat Sejahtera</p><p>Bagja : Bahagia Lahir Batin</p><p>Gasanka : Tak Sangka</p><p>&nbsp; &nbsp; &nbsp; &nbsp;Yayasan Hurip Bagja Gasanka adalah wadah pribadi dan keluarga yang bercita-cita menjadi sekumpulan insan yang bertakwa, sehingga bisa hidup segar, sejahtera, sehat dan bahagia lahir batin, disertai keberlimpahan rejeki yang tak disangka.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Dari yayasan ini diharapkan lahir pribadi dan pemimpin mau melejitkan potensi diri untuk terus menebar manfaat,merawat,mengolah dan menjaga bumi untuk kebermanfaatan dirinya pada keluarga dan lingkungan sekitar.</p><p><br></p><p><br></p><p><br></p><p><br></p>', 'arti-nama-yayasan', 'Title Arti Nama Yayasan', 'Key Arti Nama Yayasan', 'Des Arti Nama Yayasan', '2022-05-27', 3),
(4, 'Gambar', 'Struktur Pengurus', 'struktur-pengurus.jpeg', 'struktur-pengurus-img-share.jpeg', NULL, 'struktur-pengurus', 'Title Struktur Pengurus', 'Key Struktur Pengurus', 'Desc Struktur Pengurus', '2022-05-27', 4),
(5, 'All', 'Fasilitas', 'fasilitas.jpeg', 'fasilitas-img-share.png', '<p><strong>FASILITAS&nbsp;</strong></p><ol><li>Ruang dan Sarana Belajar/Workshop</li><li>Ruang Serbaguna</li><li>Homestay</li><li>Kantor Yayasan</li><li>Resto/Cafe</li><li>Perpustakaan</li><li>Bulk Store</li><li>Bank Sampah Mini</li><li>Kebon Permakultur</li><li>Area Parkir &amp; Olahraga</li><li>Rumah Pengelola Harian</li></ol>', 'fasilitas', 'Title Fasilitas', 'Key Fasilitas', 'Desc Fasilitas', '2022-05-27', 5),
(6, 'All', 'Program', 'program.jpeg', 'program-img-share.png', '<p>PROGRAM KERJA TERDEKAT</p><ol><li>Sanlat Ramadhan 1443H</li><li>Penataan Lingkungan Sekitar</li><li>Perpustakaan Masyarakat</li></ol><p>PROGRAM KERJA</p><ol><li>Mengadakan kegiatan pendekatan dan pembinaan masyarakat sekitar Yayasan</li><li>Merintis kegiatan pendidikan , keagamaan dan lingkungan hidup di sekitar lokasi Yayasan dgn fokus kegiatan pada kelompok anak, pemuda dan ibu - ibu</li><li>Menyiapkan sarana kantor dan sarana belajar sementara sebelum sarana milik Yayasan sendiri siap digunakan</li><li>Menyiapkan lahan untuk digunakan kegiatan belajar, kantor, kebun, homestay dan usaha lain yang terintegrasi dan ramah lingkungan</li><li>Mendirikan PKBM Alam Hurip Bagja<ol><li>Program Belajar Al - Qur&#39;an dan AL - Islam</li><li>PAUD / TK / RA untuk usia 5-6 tahun</li><li>Sekolah Ayah Bunda ( Parenting )&nbsp;</li><li>Program Paket kelas kesetaraan A, B, dan C</li><li>Program Life Skills : mencukur, memasak &amp; pengawetan makanan, petualangan air, pariwista, homestay, hospitality, digital marketing, photograpi, mengolah jamu dan massage terapi, finance literacy, handycraft, trading &amp; investment literacy, dll</li><li>Kursus &amp; Workshop Lingkungan Panen Air Hujan, Berkebun Permakultur, Mengolah &amp; Mengelola Sampah</li><li>Pelatihan Beladiri Tapak Suci / Silat / Karate</li><li>Kelas Seni Budaya &amp; Bahasa Sunda</li><li>Kelas Bahas Asing</li><li>Kelas Pelatihan Pengelolaan Wisata, dll </li></ol></li></ol><p><br></p>', 'program', 'Title Program', 'Key Program', 'Desc Program', '2022-07-02', 6),
(7, 'SEO', 'Galeri', 'galeri.jpeg', 'galeri-img-share.png', NULL, 'galeri', 'Title Galeri', 'Key Galeri', 'Desc Galeri', '2022-05-26', 7),
(8, 'SEO', 'Kontak', 'kontak.jpeg', 'kontak-img-share.png', NULL, 'kontak', 'Title Kontak', 'Key Kontak', 'Desc Kontak', '2022-05-26', 8),
(9, 'SEO', 'Kabar', 'kabar.jpeg', 'kabar-img-share.png', NULL, 'kabar', 'Title Kabar', 'Key Kabar', 'Desc Kabar', '2022-05-26', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_pengaturan` int(4) NOT NULL,
  `no_urut` int(4) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `jenis_pengaturan` enum('Gambar','Deskripsi','Teks','Textarea') NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` enum('Active','Non-Active') NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id_pengaturan`, `no_urut`, `judul`, `jenis_pengaturan`, `gambar`, `deskripsi`, `status`, `tgl_update`) VALUES
(1, 1, 'Icon Website', 'Gambar', 'icon-website.png', NULL, 'Active', '2022-05-08'),
(2, 2, 'Logo Website (Versi Desktop)', 'Gambar', 'logo-website-versi-desktop.png', NULL, 'Active', '2022-05-08'),
(3, 3, 'Logo Website (Versi Mobile)', 'Gambar', 'logo-website-mobile.png', NULL, 'Active', '2022-07-01'),
(4, 4, 'Nomor WhatsApp', 'Teks', NULL, '+62 853 3850 8220', 'Active', '2022-07-02'),
(5, 5, 'Nomor Telp./SMS', 'Teks', NULL, '085338508220', 'Active', '2022-05-30'),
(6, 6, 'Instagram', 'Teks', NULL, 'https://instagram.com/yayasannhuripbagjagasanka', 'Active', '2022-05-26'),
(7, 7, 'Facebook', 'Teks', NULL, 'https://web.facebook.com/', 'Active', '2022-03-28'),
(8, 8, 'Twitter', 'Teks', NULL, '#', 'Non-Active', '2022-03-28'),
(9, 9, 'YouTube', 'Teks', NULL, 'https://www.youtube.com/', 'Non-Active', '2022-03-28'),
(10, 10, 'Email', 'Teks', NULL, 'yayasanhuripbagja@gmail.com', 'Active', '2022-07-02'),
(11, 11, 'Google Maps', 'Textarea', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126681.21753644828!2d107.85499175408047!3d-7.150488921293918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68b13d10a05777%3A0x1dbe1f6150c7d90b!2sSakola%20Hurip%20Bagja!5e0!3m2!1sid!2sid!4v1656743439948!5m2!1sid!2sid\" width=\"1550\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Active', '2022-07-02'),
(12, 12, 'Alamat', 'Textarea', NULL, 'Desa sukaratu Banyuresmi, Garut satu, Jawa Barat', 'Active', '2022-07-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `status` enum('Read','Unread') NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama`, `email`, `pesan`, `status`, `tgl_update`) VALUES
(3, 'Farhan Radhiansyah Razak', 'farhanrrazak@gmail.com', 'test', 'Read', '2022-05-30'),
(4, 'beella', 'beellaaag.12@gmail.com', 'Hai', 'Unread', '2022-07-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sitemap`
--

CREATE TABLE `sitemap` (
  `id_sitemap` int(10) NOT NULL,
  `id_sub_sitemap` int(4) NOT NULL,
  `loc` varchar(255) NOT NULL,
  `lastmod` date NOT NULL,
  `priority` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sitemap`
--

INSERT INTO `sitemap` (`id_sitemap`, `id_sub_sitemap`, `loc`, `lastmod`, `priority`) VALUES
(1, 1, 'http://localhost/project/2022/05_2022/yayasan-hurip-bagja-gasanka/beranda/', '2022-05-26', '1.00'),
(2, 1, 'http://localhost/yayasan-hurip-bagja-gasanka/visi-dan-misi/', '2022-05-27', '1.00'),
(3, 1, 'http://localhost/yayasan-hurip-bagja-gasanka/arti-nama-yayasan/', '2022-05-27', '1.00'),
(4, 1, 'http://localhost/yayasan-hurip-bagja-gasanka/struktur-pengurus/', '2022-05-27', '1.00'),
(5, 1, 'http://localhost/yayasan-hurip-bagja-gasanka/fasilitas/', '2022-05-27', '1.00'),
(6, 1, 'http://localhost/yayasan-hurip-bagja-gasanka/program/', '2022-07-02', '1.00'),
(7, 1, 'http://localhost/project/2022/05_2022/yayasan-hurip-bagja-gasanka/galeri/', '2022-05-26', '1.00'),
(8, 1, 'http://localhost/project/2022/05_2022/yayasan-hurip-bagja-gasanka/kontak/', '2022-05-26', '1.00'),
(9, 1, 'http://localhost/project/2022/05_2022/yayasan-hurip-bagja-gasanka/kabar/', '2022-05-26', '1.00'),
(10, 2, 'http://localhost/project/2022/05_2022/yayasan-hurip-bagja-gasanka/kabar/', '2022-05-26', '1.00'),
(19, 2, 'http://localhost/yayasan-hurip-bagja-gasanka/kabar/s-kpendaftaran-fasilitator-hurip-bagja-bandung/', '2022-07-02', '0.80'),
(20, 2, 'http://localhost/yayasan-hurip-bagja-gasanka/kabar/ngaji-bareng-sakola-hurip-bagja/', '2022-07-02', '0.80'),
(21, 2, 'http://localhost/yayasan-hurip-bagja-gasanka/kabar/sanlat-ramadhan-asyik-yayasan-hurip-bagja-gasanka/', '2022-07-02', '0.80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_sitemap`
--

CREATE TABLE `sub_sitemap` (
  `id_sub_sitemap` int(4) NOT NULL,
  `halaman` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_sitemap`
--

INSERT INTO `sub_sitemap` (`id_sub_sitemap`, `halaman`, `slug`) VALUES
(1, 'Pages', 'pages'),
(2, 'Kabar', 'kabar');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id_data_admin`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_galeri_judul` (`id_galeri_judul`);

--
-- Indeks untuk tabel `galeri_judul`
--
ALTER TABLE `galeri_judul`
  ADD PRIMARY KEY (`id_galeri_judul`);

--
-- Indeks untuk tabel `kabar`
--
ALTER TABLE `kabar`
  ADD PRIMARY KEY (`id_kabar`),
  ADD KEY `id_sitemap` (`id_sitemap`);

--
-- Indeks untuk tabel `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`),
  ADD KEY `id_sitemap` (`id_sitemap`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`id_sitemap`),
  ADD KEY `id_sub_sitemap` (`id_sub_sitemap`);

--
-- Indeks untuk tabel `sub_sitemap`
--
ALTER TABLE `sub_sitemap`
  ADD PRIMARY KEY (`id_sub_sitemap`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id_data_admin` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `galeri_judul`
--
ALTER TABLE `galeri_judul`
  MODIFY `id_galeri_judul` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kabar`
--
ALTER TABLE `kabar`
  MODIFY `id_kabar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_pengaturan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `id_sitemap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `sub_sitemap`
--
ALTER TABLE `sub_sitemap`
  MODIFY `id_sub_sitemap` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_galeri_judul`) REFERENCES `galeri_judul` (`id_galeri_judul`);

--
-- Ketidakleluasaan untuk tabel `kabar`
--
ALTER TABLE `kabar`
  ADD CONSTRAINT `kabar_ibfk_1` FOREIGN KEY (`id_sitemap`) REFERENCES `sitemap` (`id_sitemap`);

--
-- Ketidakleluasaan untuk tabel `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `page_ibfk_1` FOREIGN KEY (`id_sitemap`) REFERENCES `sitemap` (`id_sitemap`);

--
-- Ketidakleluasaan untuk tabel `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `sitemap_ibfk_1` FOREIGN KEY (`id_sub_sitemap`) REFERENCES `sub_sitemap` (`id_sub_sitemap`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

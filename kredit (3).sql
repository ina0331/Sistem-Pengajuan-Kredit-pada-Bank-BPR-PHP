-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 29 Agu 2020 pada 08.02
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `kredit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` char(25) NOT NULL,
  `username` char(15) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` char(35) NOT NULL,
  `email` char(35) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `alamat` text NOT NULL,
  `fotoprofil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `alamat`, `fotoprofil`) VALUES
('ADM007', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Rohimah Muthmainnah', 'rohimahmuthmainnah03@gmail.com', '083805934468', 'Perum Taman Persada Blok D11 No 15 RT 004/009 Desa Cibarusah Kota Kec.Cibarusah Kota Kab.Bekasi 17340', 'gambar1594260451.jpg'),
('ADM008', 'haris', 'c0ba88b8bca79ca3b50b96abdf431766', 'Muhammad Haris Muda', 'haris20@gmail.com', '085284196123', 'Perum Firdaus Residence Blok A12 no 19 RT 007/01 Kec. Cibarusah Kab.Bekasi 17340', 'gambar1594260572.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aplikasi`
--

CREATE TABLE IF NOT EXISTS `aplikasi` (
  `id_aplikasi` char(50) NOT NULL,
  `id_province` char(2) NOT NULL,
  `id_regencies` char(4) NOT NULL,
  `id_pemohon` char(25) NOT NULL,
  `nama_lengkap` char(35) NOT NULL,
  `jenis_kelamin` char(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` char(25) NOT NULL,
  `kode_pos` char(10) NOT NULL,
  `status` text NOT NULL,
  `telp` char(15) NOT NULL,
  `pendidikan` char(10) NOT NULL,
  `tgl_beli` date NOT NULL,
  `status_perkawinan` char(15) DEFAULT NULL,
  `nama_pasangan` char(35) NOT NULL,
  `jml_tanggungan` int(8) NOT NULL,
  `ibu_kandung` char(35) NOT NULL,
  `agama` char(15) NOT NULL,
  `pihak_dihubungi` char(35) NOT NULL,
  `hub_kel` char(15) NOT NULL,
  `alamat_kel` text NOT NULL,
  `telp_kel` varchar(15) NOT NULL,
  `tipe_pendapatan` char(15) NOT NULL,
  `jenis_pekerjaan` char(25) NOT NULL,
  `nama_perusahaan` char(25) NOT NULL,
  `alamat_per` text NOT NULL,
  `lama_bekerja` int(8) NOT NULL,
  `pendapatan` char(20) NOT NULL,
  `SIUP` char(25) NOT NULL,
  `NPWP_per` char(25) NOT NULL,
  `jumlah_kredit` char(25) NOT NULL,
  `jangka_waktu` int(8) NOT NULL,
  `tujuan_kredit` char(25) NOT NULL,
  `angsuran_perbulan` char(25) NOT NULL,
  PRIMARY KEY (`id_aplikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aplikasi`
--

INSERT INTO `aplikasi` (`id_aplikasi`, `id_province`, `id_regencies`, `id_pemohon`, `nama_lengkap`, `jenis_kelamin`, `tgl_lahir`, `alamat`, `tempat_lahir`, `kode_pos`, `status`, `telp`, `pendidikan`, `tgl_beli`, `status_perkawinan`, `nama_pasangan`, `jml_tanggungan`, `ibu_kandung`, `agama`, `pihak_dihubungi`, `hub_kel`, `alamat_kel`, `telp_kel`, `tipe_pendapatan`, `jenis_pekerjaan`, `nama_perusahaan`, `alamat_per`, `lama_bekerja`, `pendapatan`, `SIUP`, `NPWP_per`, `jumlah_kredit`, `jangka_waktu`, `tujuan_kredit`, `angsuran_perbulan`) VALUES
('PJ026', '32', '3216', 'PMHN20005', 'Rohimah Muthmainnah Nasution', 'Perempuan', '1998-03-31', 'Perum Taman Persada Blok D11 no.15 RT004/009 Deesa Cibarusah Kota', 'Jakarta', '17340', 'Telah diverifikasi, dan dalam pengecekan dokumen', '083805934468', 'D3', '2020-06-14', 'Belum Meni', '-', 0, 'Nurmaisyarah', 'Islam', 'haris muda', 'Saudara Kandung', 'Cibarusah', '085345646454', 'Gaji', 'Karyawan', 'PT BOS SECURITY INDONESIA', 'Cicau Cikarang Selatan', 1, '8.000.000', '-', '-', '75.000.000', 24, 'Investasi', '4.625.000,00'),
('PJ027', '32', '3216', 'PMHN20006', 'Rohimah Muthmainnah', 'Perempuan', '1998-03-31', 'Perum Taman Persada Blok D11 no 15 RT 004/009 Desa Cibarusah kota', 'Jakarta', '17340', 'Approved', '083805934468', 'D3', '2020-07-07', 'Menikah', 'hanbin kim', 0, 'Nurmaisyarah Lubis', 'Islam', 'Ichwan Mahmud', 'Saudara Kandung', 'Perum Taman Persada Blok D11 no 15 RT 004/009 Desa Cibarusah Kota', '081312345678', 'gaji', 'PNS', 'RADIO REPUBLIK INDONESIA', 'Jl. Merdeka Barat no.45 Jakarta pusat', 2, '10.000.000', '', '', '75000000', 24, 'Konsumtif (Biaya Sekolah)', '4.625.000,00'),
('PJ028', '12', '1275', 'PMHN20006', 'Rohimah Muthmainnah', 'Perempuan', '1998-03-31', 'Perum Taman Persada Blok D11 no 15 RT 004/009 Desa Cibarusah kota', 'Bekasi', '17340', 'Rejected', '083805934468', 'S1', '2020-07-07', 'Belum Menikah', '-', 0, 'Nur Maisyarah', 'Islam', 'Ichwan Mahmud', 'Saudara Kandung', 'Perum Firdaus Blok A12 no.05', '08132346123', 'gaji', 'Karyawan', 'RRI PRO 3', 'Jl. Merdeka Barat No.45 Jakarta Pusat', 2, '12.000.000', '08H23B-17D12', '', '100000000', 36, 'Modal Usaha', '4.777.777,78'),
('PJ029', '32', '3271', 'PMHN20006', 'Rohimah Muthmainnah', 'Perempuan', '1998-03-03', 'Perum Taman Persada Blok D11 no 15 RT 004/009 Desa Cibarusah kota', 'Bekasi', '17340', 'Telah diverifikasi, dan dalam pengecekan dokumen', '083805934468', 'SMA', '2020-07-07', 'Belum Menikah', '-', 0, 'Nurmaisyarah Lubis', 'Islam', 'Haris Muda Nasution', 'Saudara Kandung', 'Jl. Raya Ciracas No.29 Jakarta Timur', '08382656771', 'Gaji', 'Karyawan swasta', 'PT BOS SECURITY INDONESIA', 'Jl. raya Cicau no.29 Cikarang selatan', 5, '9.000.000', 'SH-023MM21KW2', 'N210-31K 001', '50000000', 36, 'Lainnya', '2.388.888,89');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas`
--

CREATE TABLE IF NOT EXISTS `berkas` (
  `kd_berkas` char(25) NOT NULL,
  `id_pemohon` char(25) NOT NULL,
  `id_aplikasi` char(25) NOT NULL,
  `ktp` varchar(150) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `pasfoto` varchar(100) NOT NULL,
  `npwp` varchar(150) NOT NULL,
  `rekening_listrik` varchar(150) NOT NULL,
  `struk_gaji` varchar(255) NOT NULL,
  `berkas_agunan` varchar(255) NOT NULL,
  `jaminan` char(25) NOT NULL,
  PRIMARY KEY (`kd_berkas`),
  KEY `ktp` (`ktp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berkas`
--

INSERT INTO `berkas` (`kd_berkas`, `id_pemohon`, `id_aplikasi`, `ktp`, `kk`, `pasfoto`, `npwp`, `rekening_listrik`, `struk_gaji`, `berkas_agunan`, `jaminan`) VALUES
('BKS017', 'PMHN20007', '', 'berkas1591881659.jpg', 'berkas15918816591.jpg', 'berkas15918816592.jpg', 'berkas15918816593.jpg', 'berkas15918816594.jpg', 'berkas15918816596.jpg', 'berkas15918816596.jpg', 'Sertifikat HGB/HM'),
('BKS018', 'PMHN20013', '', 'berkas1592206309.jpg', 'berkas15922063091.jpg', 'berkas15922063092.jpg', 'berkas15922063093.jpg', 'berkas15922063094.jpg', 'berkas15922063096.jpg', 'berkas15922063096.jpg', 'BPKB'),
('BKS019', 'PMHN20006', 'PJ027', 'berkas1594131649.jpg', 'berkas15941316491.jpg', 'berkas15941316492.jpg', 'berkas15941316493.jpg', 'berkas15941316494.jpg', 'berkas15941316495.jpg', 'berkas15941316496.jpg', 'BPKB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE IF NOT EXISTS `buku_tamu` (
  `no_bukutamu` int(8) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` char(35) NOT NULL,
  `email` char(35) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`no_bukutamu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`no_bukutamu`, `nama_lengkap`, `email`, `pesan`) VALUES
(1, 'Dwi Prihartono', 'dwihartono09@gmail.com', 'bogosipda~');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(10) NOT NULL AUTO_INCREMENT,
  `kategori` char(25) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Concox'),
(2, 'Meitrack'),
(3, 'TopFly'),
(4, 'Server');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kredit`
--

CREATE TABLE IF NOT EXISTS `kredit` (
  `id_kedit` int(25) NOT NULL AUTO_INCREMENT,
  `id_pemohon` char(25) NOT NULL,
  `id_aplikasi` char(25) NOT NULL,
  `jenis_kredit` char(25) NOT NULL,
  `jumlah_kredit` char(25) NOT NULL,
  `jangka_waktu` int(8) NOT NULL,
  `tujuan_kredit` varchar(50) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `status` char(50) NOT NULL,
  PRIMARY KEY (`id_kedit`),
  KEY `id_aplikasi` (`id_aplikasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `kredit`
--

INSERT INTO `kredit` (`id_kedit`, `id_pemohon`, `id_aplikasi`, `jenis_kredit`, `jumlah_kredit`, `jangka_waktu`, `tujuan_kredit`, `tgl_pengajuan`, `status`) VALUES
(4, 'PMHN20011', '', '', '50.000.000', 24, '2127083f032d0d86d3cb32934', '2020-06-14', 'Sedang dalam tahap survey'),
(5, 'PMHN20005', '', '', '75.000.000', 36, 'a1a7a4cb044196dea2f920f1a5f0118a', '2020-06-14', 'Belum diverifikasi'),
(6, 'PMHN20012', '', '', '35.000.000', 36, 'a1a7a4cb044196dea2f920f1a5f0118a', '2020-06-14', 'Belum diverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemohon`
--

CREATE TABLE IF NOT EXISTS `pemohon` (
  `id_pemohon` char(25) NOT NULL,
  `id_provinces` char(2) NOT NULL,
  `id_regencies` char(4) NOT NULL,
  `username` char(15) NOT NULL,
  `email` char(35) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` char(35) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` char(10) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `aktif` char(5) NOT NULL,
  PRIMARY KEY (`id_pemohon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemohon`
--

INSERT INTO `pemohon` (`id_pemohon`, `id_provinces`, `id_regencies`, `username`, `email`, `password`, `nama_lengkap`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `foto`, `aktif`) VALUES
('PMHN20005', '32', '3216', 'ina03', 'inaainaa03@gmail.com', '0f6f93d7c70f88baaf2c9912f5abcc84', 'Rohimah Muthmainnah Nasution', 'Perum Taman Persada Blok D11no 15 RT 004/009 Desa Cibarusah kota Kec.Cibarusah 17340', '17340', '083805934468', '2020-06-08', 'gambar1594125996.jpg', 'YES'),
('PMHN20006', '32', '3216', 'ina', 'rohimahmuthmainnah03@gmail.com', '0f6f93d7c70f88baaf2c9912f5abcc84', 'Rohimah Muthmainnah', 'Perum Taman Persada Blok D11 no 15 RT 004/009 Desa Cibarusah kota', '17340', '083805934468', '2020-07-07', 'gambar1594129658.jpg', 'NO'),
('PMHN20007', '32', '3216', 'evita', 'evita27@gmail.com', 'c5c1a9443bfb2279643a2f8c0416fb0e', 'evita vilianti', 'perum KSB ', '17341', '0897878767667', '2020-08-03', '', 'NO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id_pesan` int(8) NOT NULL AUTO_INCREMENT,
  `id_admin` char(25) NOT NULL,
  `id_pemohon` char(25) NOT NULL,
  `email` char(35) NOT NULL,
  `subjek` varchar(75) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `status_kirim` char(25) NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_admin`, `id_pemohon`, `email`, `subjek`, `tgl_kirim`, `status_kirim`) VALUES
(1, '3', '', 'inaainaa03@gmail.com', 'Pengajuan anda telah disetujui\r\nMohon Untuk Datang kekantor kami dengan mem', '2020-06-14', 'Telah Dikirim'),
(2, '3', '', 'inaainaa03@gmail.com', 'Pengajuan anda telah disetujui\r\nMohon Untuk Datang kekantor kami dengan mem', '2020-06-14', 'Telah Dikirim'),
(3, '3', '', 'inaainaa03@gmail.com', 'Pengajuan anda telah disetujui\r\nMohon Untuk Datang kekantor kami dengan mem', '2020-06-14', 'Telah Dikirim'),
(4, '3', '', 'inaainaa03@gmail.com', 'telah disetujui.\r\nsilahkan datang ke kantor BPR WMJ Cabang Cibarusah pada :', '2020-06-14', 'Telah Dikirim'),
(14, 'ADM007', 'PMHN20006', 'rohimahmuthmainnah03@gmail.com', 'oke sipp', '2020-07-10', 'Telah Dikirim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(10) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(25) NOT NULL,
  `judul` char(50) NOT NULL,
  `harga` int(25) NOT NULL,
  `stok` int(25) NOT NULL,
  `isi` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal` int(30) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `judul`, `harga`, `stok`, `isi`, `gambar`, `tanggal`) VALUES
(1, 1, 'TR06', 900000, 10, '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; font-size: 13px; line-height: 20px;">Gps Tracker TR06 versi terbaru ini merupakan keluaran terbaru dari Concox yang menyempurnakan produk TR06 dengan versi sebelumnya. Versi terbarunya memiliki fitur tambahan yaitu bisa mengecek Pulsa melalui SMS.</span></p>\r\n', '1a2f650294374bc30612e8e9c1ec7860.jpg,4d9f095821175dc39b1684805d9e33b5.jpg,bb7ea7a9781d1d8caf8b690dfb7f0b97.jpg,c983ba267c87e2af011537654d9d28b4.jpg,c983ba267c87e2af011537654d9d28b4.jpg', 1461251423),
(2, 1, 'TR02', 800000, 10, '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	Anda memerlukan gps tracker handal dengan harga terjangkau? bisa di monitor lewat website atau dengan sms dari Gadget/Ponsel Anda. Yang lebih pentingnya lagi yaitu cara pemasangan pun cukup mudah sekali.<br style="box-sizing: border-box; outline: none;" />\r\n	GPS Tracker TR02 hadir melindungi kendaraan Anda khususnya para pemilik sepeda motor / mobil yang khawatir kendaraannya dicuri ataupun dirampok. Dengan Web monitoring www.gps-trace.com</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	GPS Tracker yang telah didesain untuk sepeda motor Anda. Dengan Tegangan Daya yang rendah dan ukuran lebih kecil, memungkinkan Anda memasang GPS Tracker ini pada Sepeda Motor Anda.</p>\r\n', '3da9186bbebfecf4f32c791965fc3952.jpg,a17da73129d77738a64ee7aa8fa469c3.jpg,a91f9091a5b84d58f46188a28a016846.jpg,e40f5d259dd729608c6b240f872e39da.jpg,e40f5d259dd729608c6b240f872e39da.jpg', 1461336776),
(3, 1, 'GT02D', 500000, 101, '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	Dapatkan GPS Tracker untuk sepeda motor, dengan teknologi Super Saving Power bisa menghemat aki motor Anda sehingga tidak ada lagi gejala aki habis dan motor tidak bisa di starter.&nbsp;<br style="box-sizing: border-box; outline: none;" />\r\n	Dengan fitur Terbaru Super saving Power arus yg dipakai hanya 1 - 2 mA jauh lebih hemat dibanding GPS Tracker tipe lain dan mulai sekarang aki motor Anda tidak akan kehabisan lagi.&nbsp;<br style="box-sizing: border-box; outline: none;" />\r\n	GPS Pelacak Kendaraan GT02D, Kami berperan dalam menyediakan GPS kepada pelanggan setia kami dengan kualitas yang sangat baik.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	Untuk mobil dengan kaca film V-Cool disarankan menggunakan GPS Tracker GT02D karena sinyalnya lebih kuat dan menggunakan Antena + Chipset Khusus.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	GPS Tracker yang telah didesain untuk sepeda motor Anda. Dengan Tegangan Daya yang rendah dan ukuran lebih kecil, memungkinkan Anda memasang GPS Tracker ini pada Sepeda Motor Anda.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	NB: Hasil Test dengan tegangan 12 Volt, arus listrik yang dipakai pada Mode Power Saving adalah 1 Miliampere.</p>\r\n', '1dd11680978d96b9769c795322714a82.jpg,93b599ce4bb1f14ac17ee5b13853335a.jpg,f5b61d4c32f2c39c14bcadf5bbb65bb8.jpg,f5b61d4c32f2c39c14bcadf5bbb65bb8.jpg,f5b61d4c32f2c39c14bcadf5bbb65bb8.jpg', 1462744244),
(4, 2, 'MVT800', 1600000, 20, '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	Bosan dengan GPS Tracker biasa yang ngaku Canggih??? Kita siapkan!!!<br style="box-sizing: border-box; outline: none;" />\r\n	GPS Tracker Canggih dengan fasilitas Super Lengkap!!!</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	MVT800 adalah salah satu pelacak GPS terbaru yang telah ditambahkan ke merek Meitrack. MVT800 dapat digambarkan sebagai kaliber tinggi GPS tracker, banyak fitur dan aksesoris yang menawarkan. MVT800 sangat sempurna untuk pelacakan armada karena kemampuannya untuk memantau konsumsi bahan bakar dan suhu jika diperlukan.&nbsp;<br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	Melacak kendaraan secara real time, juga memantau apa yang terjadi di dalam kabin dengan fitur listen-in, memiliki fitur percakapan dua arah dengan menambahkan aksesoris speaker dan mikrofon. MVT800, GPS pelacak kendaraan dengan salah satu yang terbaik pelacak yang tahan air untuk kendaraan, mobil ataupun alat berat di pasar saat ini.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	MVT800 adalah merek baru GPS tracker yang mendukung dua protokol Meitrack dan Meiligao protokol. Mendukung anti-pencurian mobil pribadi dan mobil dinas.</p>\r\n', '1279c5d7822a2d977e4abacd9131b7e3.jpg,e3cc0db9e49db1bda299f19a8550e8c3.jpg,0d661b1d9a4a9d901198e19e7ab4a931.jpg,97ef640a0e1b2df219d253ec1430772b.jpg,97ef640a0e1b2df219d253ec1430772b.jpg', 1462746169),
(5, 2, 'MVT600', 1500000, 20, '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	Sebuah kendaraan GPS tracker benar-benar unik, yang MVT600 memiliki banyak fungsi dan fitur. The MVT600 dapat memungkinkan seseorang untuk memantau interior kendaraan dengan melampirkan kamera opsional. Kamera ini dapat mengambil snapshot ketika peristiwa tertentu terjadi seperti, mobil mulai bergerak, membuka atau menutup pintu. Jenis lain dari aksesoris dapat ditambahkan seperti sensor bahan bakar, dan bahkan pembaca RFID.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	sensor suhu sangat penting jika kendaraan memiliki unit pendingin yang perlu dipantau, sensor dapat mengirim peringatan jika suhu tiba-tiba berfluktuasi. RFID memungkinkan untuk kendaraan yang akan dioperasikan oleh individu terpilih yang membawa kartu RFID, ini merupakan salah satu ukuran keamanan yang lebih untuk memiliki kendaraan yang hanya harus dioperasikan oleh personil yang dipilih.</p>\r\n', '49c41eff3101cb6e879e7006a5e3aaf6.jpg,2d1516d8544b8f578e32c30dae845cd6.jpg,f81eb87a5e7ff44101d705fd90b4bf38.jpg,d5557d3527ada33eb9628b8249a4e7a2.jpg,d5557d3527ada33eb9628b8249a4e7a2.jpg', 1462746398),
(6, 2, 'MVT380', 1100000, 20, '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; font-size: 13px; line-height: 20px;">GPS Tracker MVT 380 adalah alat pelacak GPS / GSM / GPRS yang khusus dirancang untuk mengetahui posisi kendaraan secara langsung.Dapat berguna untuk fungsi pengawasan dan pengamanan, serta menghindari dari pencurian kendaraan.</span></p>\r\n', '89ff01176d1dd758c55521a53f268bf9.jpg,b76227033f12fa722f150a6187329837.jpg,37f51beceeb10a3183f17225f7380d9d.jpg,8387558d20e44ec25dd93a5d8eab6801.jpg,8387558d20e44ec25dd93a5d8eab6801.jpg', 1462746523),
(8, 3, 'T8803', 600000, 10, '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; font-size: 13px; line-height: 20px;">GPS TRACKER T8803 INI mempunyai tingkat kestabilan tinggi dari GPS dan GSM Module. Keakuratan perangkat dapat tercapai antara 5-10 meter dan tahan terhadap air.</span></p>\r\n', '6af593ed84c160bd407d58624205fafa.jpg,31d4c87f6821234ff0e610ad5082d5a2.jpg,31d4c87f6821234ff0e610ad5082d5a2.jpg,31d4c87f6821234ff0e610ad5082d5a2.jpg,31d4c87f6821234ff0e610ad5082d5a2.jpg', 1462746634),
(10, 1, 'GPS Tracker GT06N', 800000, 10, '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; font-size: 13px; line-height: 20px;">Gps Tracker GT06N versi terbaru ini merupakan keluaran terbaru dari Concox yang menyempurnakan produk GT06N dengan versi sebelumnya. Versi terbarunya memiliki fitur tambahan yaitu bisa mengecek Pulsa melalui SMS.</span></p>\r\n', '5725a7967b94a662c25538bef15b9c29.jpg,9041de7f9f92eb7b4af94777f86d01b3.jpg,bf1d73b2d2d68a78c5d62962fdc3ca70.jpg,1d571a4b72b3427b988b3b5766c4ec4c.jpg,1d571a4b72b3427b988b3b5766c4ec4c.jpg', 1462747128),
(11, 1, 'GPS Tracker ET200', 500000, 10, '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	GPS Tracker handal dengan harga yang terjangkau. Bisa di monitor lewat website(server) atau dengan sms dari gadget/ponsel Anda. Cara pemasangan pun cukup mudah sekali. Karena ukurannya yang kecil dan ringan, ET200 mudah untuk disembunyikan dan mudah untuk dipasang.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	Tegangan lebih rendah dari GPS lain (Posisi standby ET200 0,3 Ampere).<br style="box-sizing: border-box; outline: none;" />\r\n	Cocok untuk Anda khususnya para pemilik sepeda motor.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	<span style="font-size:14px;"><strong>Fitur ET200 :</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	- Cek posisi via sms dan webtracking<br style="box-sizing: border-box; outline: none;" />\r\n	- Mematikan dan menghidupkan mesin<br style="box-sizing: border-box; outline: none;" />\r\n	- Laporan mesin mati/hidup (sms dan Web)<br style="box-sizing: border-box; outline: none;" />\r\n	- Laporan SOS bila alat di sabotase<br style="box-sizing: border-box; outline: none;" />\r\n	- Riwayat perjalanan 30hari<br style="box-sizing: border-box; outline: none;" />\r\n	- Lihat kecepatan<br style="box-sizing: border-box; outline: none;" />\r\n	- Pembatasan kecepatan (speed limit)<br style="box-sizing: border-box; outline: none;" />\r\n	- Pembatasan area (geofence)<br style="box-sizing: border-box; outline: none;" />\r\n	- Cek pulsa<br style="box-sizing: border-box; outline: none;" />\r\n	- Backup Baterai<br style="box-sizing: border-box; outline: none;" />\r\n	- Free Server (gps-trace)<br style="box-sizing: border-box; outline: none;" />\r\n	- Water resistance (Tahan cipratan air dan debu).</p>\r\n', '28b3736c53b7e1903e58fdb11940ed1f.jpg,5b8b1b62b06f281bd1fd676922bff976.jpg,5b8b1b62b06f281bd1fd676922bff976.jpg,5b8b1b62b06f281bd1fd676922bff976.jpg,5b8b1b62b06f281bd1fd676922bff976.jpg', 1462747242),
(12, 2, 'VT300', 1100000, 101, '<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	GPS Tracker / GPS Tracking VT 300 adalah alat pelacak GPS / GSM / GPRS yang khusus dirancang untuk mengetahui posisi kendaraan secara langsung. Biasanya berguna untuk fungsi pengawasan dan pengamanan, serta menghindari dari pencurian kendaraan.</p>\r\n<p style="box-sizing: border-box; outline: none; margin: 0px 0px 15px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 20px; font-family: ''Open Sans'', sans-serif; font-size: 13px; color: rgb(102, 102, 102);">\r\n	Dengan modul GPS dan GPRS kualitas terbaik, GPS Tracker / GPS Tracking VT 300 memiliki kepekaan signal satelit yang sangat baik dan performa stabil. Akurasi yang sangat tepat bahkan di tempat-tempat terpencil.</p>\r\n', 'a14e6178de25ab8110bb7a48ef8365b8.jpg,a14e6178de25ab8110bb7a48ef8365b8.jpg,a14e6178de25ab8110bb7a48ef8365b8.jpg,a14e6178de25ab8110bb7a48ef8365b8.jpg,a14e6178de25ab8110bb7a48ef8365b8.jpg', 1462746556),
(13, 4, 'Cootrack', 0, 0, 'Info lebih lanjut, silahkan hubungi Kami.', 'cootrack1.jpg,cootrack2.jpg,cootrack3.jpg,cootrack4.jpg,', 1462746556),
(14, 4, 'ID-GPSTracker', 0, 0, 'Info lebih lanjut, silahkan hubungi Kami.', 'idgps.jpg,idgps1.jpg,idgps.jpg2,idgps3.jpg,', 1462746556),
(15, 4, 'TRAX.CENTER', 0, 0, 'TRAX Center, server lokal dengan banyak fitur. Seperti; Realtime Update, Push Notification, dan Mail Notification & Remote Cut Off.\r\nDi situs resminya, Anda juga disuguhkan User Interface yang cukup menarik. Adanya video ilustrasi, contoh penggunaan dan bahkan cara pemasangan GPS Tracker memungkin bagi kaum awam mudah memahaminya.\r\n', 'trax.jpg,trax (1).jpg,,,', 0),
(16, 4, 'track.powertrack.co.id', 0, 0, 'POWERTrack, memungkinkan untuk mengakses fitur pengaturan dan pelacakan yang paling umum, memonitor posisi objek di peta, mendapatkan informasi rinci seperti; kecepatan, koordinat, alamat, riwayat pergerakan dan banyak lagi', 'power.jpg,,,,', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('11', 'ACEH\r'),
('12', 'SUMATERA UTARA\r'),
('13', 'SUMATERA BARAT\r'),
('14', 'RIAU\r'),
('15', 'JAMBI\r'),
('16', 'SUMATERA SELATAN\r'),
('17', 'BENGKULU\r'),
('18', 'LAMPUNG\r'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU\r'),
('31', 'DKI JAKARTA\r'),
('32', 'JAWA BARAT\r'),
('33', 'JAWA TENGAH\r'),
('34', 'DI YOGYAKARTA\r'),
('35', 'JAWA TIMUR\r'),
('36', 'BANTEN\r'),
('51', 'BALI\r'),
('52', 'NUSA TENGGARA BARAT\r'),
('53', 'NUSA TENGGARA TIMUR\r'),
('61', 'KALIMANTAN BARAT\r'),
('62', 'KALIMANTAN TENGAH\r'),
('63', 'KALIMANTAN SELATAN\r'),
('64', 'KALIMANTAN TIMUR\r'),
('65', 'KALIMANTAN UTARA\r'),
('71', 'SULAWESI UTARA\r'),
('72', 'SULAWESI TENGAH\r'),
('73', 'SULAWESI SELATAN\r'),
('74', 'SULAWESI TENGGARA\r'),
('75', 'GORONTALO\r'),
('76', 'SULAWESI BARAT\r'),
('81', 'MALUKU\r'),
('82', 'MALUKU UTARA\r'),
('91', 'PAPUA BARAT\r'),
('94', 'PAPUA\r');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regencies`
--

CREATE TABLE IF NOT EXISTS `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regencies_province_id_index` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE\r'),
('1102', '11', 'KABUPATEN ACEH SINGKIL\r'),
('1103', '11', 'KABUPATEN ACEH SELATAN\r'),
('1104', '11', 'KABUPATEN ACEH TENGGARA\r'),
('1105', '11', 'KABUPATEN ACEH TIMUR\r'),
('1106', '11', 'KABUPATEN ACEH TENGAH\r'),
('1107', '11', 'KABUPATEN ACEH BARAT\r'),
('1108', '11', 'KABUPATEN ACEH BESAR\r'),
('1109', '11', 'KABUPATEN PIDIE\r'),
('1110', '11', 'KABUPATEN BIREUEN\r'),
('1111', '11', 'KABUPATEN ACEH UTARA\r'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES\r'),
('1114', '11', 'KABUPATEN ACEH TAMIANG\r'),
('1115', '11', 'KABUPATEN NAGAN RAYA\r'),
('1116', '11', 'KABUPATEN ACEH JAYA\r'),
('1117', '11', 'KABUPATEN BENER MERIAH\r'),
('1118', '11', 'KABUPATEN PIDIE JAYA\r'),
('1171', '11', 'KOTA BANDA ACEH\r'),
('1172', '11', 'KOTA SABANG\r'),
('1173', '11', 'KOTA LANGSA\r'),
('1174', '11', 'KOTA LHOKSEUMAWE\r'),
('1175', '11', 'KOTA SUBULUSSALAM\r'),
('1201', '12', 'KABUPATEN NIAS\r'),
('1202', '12', 'KABUPATEN MANDAILING NATA'),
('1203', '12', 'KABUPATEN TAPANULI SELATA'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA\r'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR\r'),
('1207', '12', 'KABUPATEN LABUHAN BATU\r'),
('1208', '12', 'KABUPATEN ASAHAN\r'),
('1209', '12', 'KABUPATEN SIMALUNGUN\r'),
('1210', '12', 'KABUPATEN DAIRI\r'),
('1211', '12', 'KABUPATEN KARO\r'),
('1212', '12', 'KABUPATEN DELI SERDANG\r'),
('1213', '12', 'KABUPATEN LANGKAT\r'),
('1214', '12', 'KABUPATEN NIAS SELATAN\r'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDU'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT\r'),
('1217', '12', 'KABUPATEN SAMOSIR\r'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA\r'),
('1220', '12', 'KABUPATEN PADANG LAWAS UT'),
('1221', '12', 'KABUPATEN PADANG LAWAS\r'),
('1222', '12', 'KABUPATEN LABUHAN BATU SE'),
('1223', '12', 'KABUPATEN LABUHAN BATU UT'),
('1224', '12', 'KABUPATEN NIAS UTARA\r'),
('1225', '12', 'KABUPATEN NIAS BARAT\r'),
('1271', '12', 'KOTA SIBOLGA\r'),
('1272', '12', 'KOTA TANJUNG BALAI\r'),
('1273', '12', 'KOTA PEMATANG SIANTAR\r'),
('1274', '12', 'KOTA TEBING TINGGI\r'),
('1275', '12', 'KOTA MEDAN\r'),
('1276', '12', 'KOTA BINJAI\r'),
('1277', '12', 'KOTA PADANGSIDIMPUAN\r'),
('1278', '12', 'KOTA GUNUNGSITOLI\r'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTA'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK\r'),
('1304', '13', 'KABUPATEN SIJUNJUNG\r'),
('1305', '13', 'KABUPATEN TANAH DATAR\r'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM\r'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN\r'),
('1310', '13', 'KABUPATEN SOLOK SELATAN\r'),
('1311', '13', 'KABUPATEN DHARMASRAYA\r'),
('1312', '13', 'KABUPATEN PASAMAN BARAT\r'),
('1371', '13', 'KOTA PADANG\r'),
('1372', '13', 'KOTA SOLOK\r'),
('1373', '13', 'KOTA SAWAH LUNTO\r'),
('1374', '13', 'KOTA PADANG PANJANG\r'),
('1375', '13', 'KOTA BUKITTINGGI\r'),
('1376', '13', 'KOTA PAYAKUMBUH\r'),
('1377', '13', 'KOTA PARIAMAN\r'),
('1401', '14', 'KABUPATEN KUANTAN SINGING'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU\r'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN\r'),
('1405', '14', 'KABUPATEN S I A K\r'),
('1406', '14', 'KABUPATEN KAMPAR\r'),
('1407', '14', 'KABUPATEN ROKAN HULU\r'),
('1408', '14', 'KABUPATEN BENGKALIS\r'),
('1409', '14', 'KABUPATEN ROKAN HILIR\r'),
('1410', '14', 'KABUPATEN KEPULAUAN MERAN'),
('1471', '14', 'KOTA PEKANBARU\r'),
('1473', '14', 'KOTA D U M A I\r'),
('1501', '15', 'KABUPATEN KERINCI\r'),
('1502', '15', 'KABUPATEN MERANGIN\r'),
('1503', '15', 'KABUPATEN SAROLANGUN\r'),
('1504', '15', 'KABUPATEN BATANG HARI\r'),
('1505', '15', 'KABUPATEN MUARO JAMBI\r'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG '),
('1507', '15', 'KABUPATEN TANJUNG JABUNG '),
('1508', '15', 'KABUPATEN TEBO\r'),
('1509', '15', 'KABUPATEN BUNGO\r'),
('1571', '15', 'KOTA JAMBI\r'),
('1572', '15', 'KOTA SUNGAI PENUH\r'),
('1601', '16', 'KABUPATEN OGAN KOMERING U'),
('1602', '16', 'KABUPATEN OGAN KOMERING I'),
('1603', '16', 'KABUPATEN MUARA ENIM\r'),
('1604', '16', 'KABUPATEN LAHAT\r'),
('1605', '16', 'KABUPATEN MUSI RAWAS\r'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN\r'),
('1607', '16', 'KABUPATEN BANYU ASIN\r'),
('1608', '16', 'KABUPATEN OGAN KOMERING U'),
('1609', '16', 'KABUPATEN OGAN KOMERING U'),
('1610', '16', 'KABUPATEN OGAN ILIR\r'),
('1611', '16', 'KABUPATEN EMPAT LAWANG\r'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LE'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTAR'),
('1671', '16', 'KOTA PALEMBANG\r'),
('1672', '16', 'KOTA PRABUMULIH\r'),
('1673', '16', 'KOTA PAGAR ALAM\r'),
('1674', '16', 'KOTA LUBUKLINGGAU\r'),
('1701', '17', 'KABUPATEN BENGKULU SELATA'),
('1702', '17', 'KABUPATEN REJANG LEBONG\r'),
('1703', '17', 'KABUPATEN BENGKULU UTARA\r'),
('1704', '17', 'KABUPATEN KAUR\r'),
('1705', '17', 'KABUPATEN SELUMA\r'),
('1706', '17', 'KABUPATEN MUKOMUKO\r'),
('1707', '17', 'KABUPATEN LEBONG\r'),
('1708', '17', 'KABUPATEN KEPAHIANG\r'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU\r'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT\r'),
('1802', '18', 'KABUPATEN TANGGAMUS\r'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR\r'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH\r'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA\r'),
('1807', '18', 'KABUPATEN WAY KANAN\r'),
('1808', '18', 'KABUPATEN TULANGBAWANG\r'),
('1809', '18', 'KABUPATEN PESAWARAN\r'),
('1810', '18', 'KABUPATEN PRINGSEWU\r'),
('1811', '18', 'KABUPATEN MESUJI\r'),
('1812', '18', 'KABUPATEN TULANG BAWANG B'),
('1813', '18', 'KABUPATEN PESISIR BARAT\r'),
('1871', '18', 'KOTA BANDAR LAMPUNG\r'),
('1872', '18', 'KOTA METRO\r'),
('1901', '19', 'KABUPATEN BANGKA\r'),
('1902', '19', 'KABUPATEN BELITUNG\r'),
('1903', '19', 'KABUPATEN BANGKA BARAT\r'),
('1904', '19', 'KABUPATEN BANGKA TENGAH\r'),
('1905', '19', 'KABUPATEN BANGKA SELATAN\r'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR\r'),
('1971', '19', 'KOTA PANGKAL PINANG\r'),
('2101', '21', 'KABUPATEN KARIMUN\r'),
('2102', '21', 'KABUPATEN BINTAN\r'),
('2103', '21', 'KABUPATEN NATUNA\r'),
('2104', '21', 'KABUPATEN LINGGA\r'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMB'),
('2171', '21', 'KOTA B A T A M\r'),
('2172', '21', 'KOTA TANJUNG PINANG\r'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIB'),
('3171', '31', 'KOTA JAKARTA SELATAN\r'),
('3172', '31', 'KOTA JAKARTA TIMUR\r'),
('3173', '31', 'KOTA JAKARTA PUSAT\r'),
('3174', '31', 'KOTA JAKARTA BARAT\r'),
('3175', '31', 'KOTA JAKARTA UTARA\r'),
('3201', '32', 'KABUPATEN BOGOR\r'),
('3202', '32', 'KABUPATEN SUKABUMI\r'),
('3203', '32', 'KABUPATEN CIANJUR\r'),
('3204', '32', 'KABUPATEN BANDUNG\r'),
('3205', '32', 'KABUPATEN GARUT\r'),
('3206', '32', 'KABUPATEN TASIKMALAYA\r'),
('3207', '32', 'KABUPATEN CIAMIS\r'),
('3208', '32', 'KABUPATEN KUNINGAN\r'),
('3209', '32', 'KABUPATEN CIREBON\r'),
('3210', '32', 'KABUPATEN MAJALENGKA\r'),
('3211', '32', 'KABUPATEN SUMEDANG\r'),
('3212', '32', 'KABUPATEN INDRAMAYU\r'),
('3213', '32', 'KABUPATEN SUBANG\r'),
('3214', '32', 'KABUPATEN PURWAKARTA\r'),
('3215', '32', 'KABUPATEN KARAWANG\r'),
('3216', '32', 'KABUPATEN BEKASI\r'),
('3217', '32', 'KABUPATEN BANDUNG BARAT\r'),
('3218', '32', 'KABUPATEN PANGANDARAN\r'),
('3271', '32', 'KOTA BOGOR\r'),
('3272', '32', 'KOTA SUKABUMI\r'),
('3273', '32', 'KOTA BANDUNG\r'),
('3274', '32', 'KOTA CIREBON\r'),
('3275', '32', 'KOTA BEKASI\r'),
('3276', '32', 'KOTA DEPOK\r'),
('3277', '32', 'KOTA CIMAHI\r'),
('3278', '32', 'KOTA TASIKMALAYA\r'),
('3279', '32', 'KOTA BANJAR\r'),
('3301', '33', 'KABUPATEN CILACAP\r'),
('3302', '33', 'KABUPATEN BANYUMAS\r'),
('3303', '33', 'KABUPATEN PURBALINGGA\r'),
('3304', '33', 'KABUPATEN BANJARNEGARA\r'),
('3305', '33', 'KABUPATEN KEBUMEN\r'),
('3306', '33', 'KABUPATEN PURWOREJO\r'),
('3307', '33', 'KABUPATEN WONOSOBO\r'),
('3308', '33', 'KABUPATEN MAGELANG\r'),
('3309', '33', 'KABUPATEN BOYOLALI\r'),
('3310', '33', 'KABUPATEN KLATEN\r'),
('3311', '33', 'KABUPATEN SUKOHARJO\r'),
('3312', '33', 'KABUPATEN WONOGIRI\r'),
('3313', '33', 'KABUPATEN KARANGANYAR\r'),
('3314', '33', 'KABUPATEN SRAGEN\r'),
('3315', '33', 'KABUPATEN GROBOGAN\r'),
('3316', '33', 'KABUPATEN BLORA\r'),
('3317', '33', 'KABUPATEN REMBANG\r'),
('3318', '33', 'KABUPATEN PATI\r'),
('3319', '33', 'KABUPATEN KUDUS\r'),
('3320', '33', 'KABUPATEN JEPARA\r'),
('3321', '33', 'KABUPATEN DEMAK\r'),
('3322', '33', 'KABUPATEN SEMARANG\r'),
('3323', '33', 'KABUPATEN TEMANGGUNG\r'),
('3324', '33', 'KABUPATEN KENDAL\r'),
('3325', '33', 'KABUPATEN BATANG\r'),
('3326', '33', 'KABUPATEN PEKALONGAN\r'),
('3327', '33', 'KABUPATEN PEMALANG\r'),
('3328', '33', 'KABUPATEN TEGAL\r'),
('3329', '33', 'KABUPATEN BREBES\r'),
('3371', '33', 'KOTA MAGELANG\r'),
('3372', '33', 'KOTA SURAKARTA\r'),
('3373', '33', 'KOTA SALATIGA\r'),
('3374', '33', 'KOTA SEMARANG\r'),
('3375', '33', 'KOTA PEKALONGAN\r'),
('3376', '33', 'KOTA TEGAL\r'),
('3401', '34', 'KABUPATEN KULON PROGO\r'),
('3402', '34', 'KABUPATEN BANTUL\r'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL\r'),
('3404', '34', 'KABUPATEN SLEMAN\r'),
('3471', '34', 'KOTA YOGYAKARTA\r'),
('3501', '35', 'KABUPATEN PACITAN\r'),
('3502', '35', 'KABUPATEN PONOROGO\r'),
('3503', '35', 'KABUPATEN TRENGGALEK\r'),
('3504', '35', 'KABUPATEN TULUNGAGUNG\r'),
('3505', '35', 'KABUPATEN BLITAR\r'),
('3506', '35', 'KABUPATEN KEDIRI\r'),
('3507', '35', 'KABUPATEN MALANG\r'),
('3508', '35', 'KABUPATEN LUMAJANG\r'),
('3509', '35', 'KABUPATEN JEMBER\r'),
('3510', '35', 'KABUPATEN BANYUWANGI\r'),
('3511', '35', 'KABUPATEN BONDOWOSO\r'),
('3512', '35', 'KABUPATEN SITUBONDO\r'),
('3513', '35', 'KABUPATEN PROBOLINGGO\r'),
('3514', '35', 'KABUPATEN PASURUAN\r'),
('3515', '35', 'KABUPATEN SIDOARJO\r'),
('3516', '35', 'KABUPATEN MOJOKERTO\r'),
('3517', '35', 'KABUPATEN JOMBANG\r'),
('3518', '35', 'KABUPATEN NGANJUK\r'),
('3519', '35', 'KABUPATEN MADIUN\r'),
('3520', '35', 'KABUPATEN MAGETAN\r'),
('3521', '35', 'KABUPATEN NGAWI\r'),
('3522', '35', 'KABUPATEN BOJONEGORO\r'),
('3523', '35', 'KABUPATEN TUBAN\r'),
('3524', '35', 'KABUPATEN LAMONGAN\r'),
('3525', '35', 'KABUPATEN GRESIK\r'),
('3526', '35', 'KABUPATEN BANGKALAN\r'),
('3527', '35', 'KABUPATEN SAMPANG\r'),
('3528', '35', 'KABUPATEN PAMEKASAN\r'),
('3529', '35', 'KABUPATEN SUMENEP\r'),
('3571', '35', 'KOTA KEDIRI\r'),
('3572', '35', 'KOTA BLITAR\r'),
('3573', '35', 'KOTA MALANG\r'),
('3574', '35', 'KOTA PROBOLINGGO\r'),
('3575', '35', 'KOTA PASURUAN\r'),
('3576', '35', 'KOTA MOJOKERTO\r'),
('3577', '35', 'KOTA MADIUN\r'),
('3578', '35', 'KOTA SURABAYA\r'),
('3579', '35', 'KOTA BATU\r'),
('3601', '36', 'KABUPATEN PANDEGLANG\r'),
('3602', '36', 'KABUPATEN LEBAK\r'),
('3603', '36', 'KABUPATEN TANGERANG\r'),
('3604', '36', 'KABUPATEN SERANG\r'),
('3671', '36', 'KOTA TANGERANG\r'),
('3672', '36', 'KOTA CILEGON\r'),
('3673', '36', 'KOTA SERANG\r'),
('3674', '36', 'KOTA TANGERANG SELATAN\r'),
('5101', '51', 'KABUPATEN JEMBRANA\r'),
('5102', '51', 'KABUPATEN TABANAN\r'),
('5103', '51', 'KABUPATEN BADUNG\r'),
('5104', '51', 'KABUPATEN GIANYAR\r'),
('5105', '51', 'KABUPATEN KLUNGKUNG\r'),
('5106', '51', 'KABUPATEN BANGLI\r'),
('5107', '51', 'KABUPATEN KARANG ASEM\r'),
('5108', '51', 'KABUPATEN BULELENG\r'),
('5171', '51', 'KOTA DENPASAR\r'),
('5201', '52', 'KABUPATEN LOMBOK BARAT\r'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH\r'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR\r'),
('5204', '52', 'KABUPATEN SUMBAWA\r'),
('5205', '52', 'KABUPATEN DOMPU\r'),
('5206', '52', 'KABUPATEN BIMA\r'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT\r'),
('5208', '52', 'KABUPATEN LOMBOK UTARA\r'),
('5271', '52', 'KOTA MATARAM\r'),
('5272', '52', 'KOTA BIMA\r'),
('5301', '53', 'KABUPATEN SUMBA BARAT\r'),
('5302', '53', 'KABUPATEN SUMBA TIMUR\r'),
('5303', '53', 'KABUPATEN KUPANG\r'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SE'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UT'),
('5306', '53', 'KABUPATEN BELU\r'),
('5307', '53', 'KABUPATEN ALOR\r'),
('5308', '53', 'KABUPATEN LEMBATA\r'),
('5309', '53', 'KABUPATEN FLORES TIMUR\r'),
('5310', '53', 'KABUPATEN SIKKA\r'),
('5311', '53', 'KABUPATEN ENDE\r'),
('5312', '53', 'KABUPATEN NGADA\r'),
('5313', '53', 'KABUPATEN MANGGARAI\r'),
('5314', '53', 'KABUPATEN ROTE NDAO\r'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH\r'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAY'),
('5318', '53', 'KABUPATEN NAGEKEO\r'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA\r'),
('5321', '53', 'KABUPATEN MALAKA\r'),
('5371', '53', 'KOTA KUPANG\r'),
('6101', '61', 'KABUPATEN SAMBAS\r'),
('6102', '61', 'KABUPATEN BENGKAYANG\r'),
('6103', '61', 'KABUPATEN LANDAK\r'),
('6104', '61', 'KABUPATEN MEMPAWAH\r'),
('6105', '61', 'KABUPATEN SANGGAU\r'),
('6106', '61', 'KABUPATEN KETAPANG\r'),
('6107', '61', 'KABUPATEN SINTANG\r'),
('6108', '61', 'KABUPATEN KAPUAS HULU\r'),
('6109', '61', 'KABUPATEN SEKADAU\r'),
('6110', '61', 'KABUPATEN MELAWI\r'),
('6111', '61', 'KABUPATEN KAYONG UTARA\r'),
('6112', '61', 'KABUPATEN KUBU RAYA\r'),
('6171', '61', 'KOTA PONTIANAK\r'),
('6172', '61', 'KOTA SINGKAWANG\r'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BA'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TI'),
('6203', '62', 'KABUPATEN KAPUAS\r'),
('6204', '62', 'KABUPATEN BARITO SELATAN\r'),
('6205', '62', 'KABUPATEN BARITO UTARA\r'),
('6206', '62', 'KABUPATEN SUKAMARA\r'),
('6207', '62', 'KABUPATEN LAMANDAU\r'),
('6208', '62', 'KABUPATEN SERUYAN\r'),
('6209', '62', 'KABUPATEN KATINGAN\r'),
('6210', '62', 'KABUPATEN PULANG PISAU\r'),
('6211', '62', 'KABUPATEN GUNUNG MAS\r'),
('6212', '62', 'KABUPATEN BARITO TIMUR\r'),
('6213', '62', 'KABUPATEN MURUNG RAYA\r'),
('6271', '62', 'KOTA PALANGKA RAYA\r'),
('6301', '63', 'KABUPATEN TANAH LAUT\r'),
('6302', '63', 'KABUPATEN KOTA BARU\r'),
('6303', '63', 'KABUPATEN BANJAR\r'),
('6304', '63', 'KABUPATEN BARITO KUALA\r'),
('6305', '63', 'KABUPATEN TAPIN\r'),
('6306', '63', 'KABUPATEN HULU SUNGAI SEL'),
('6307', '63', 'KABUPATEN HULU SUNGAI TEN'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTA'),
('6309', '63', 'KABUPATEN TABALONG\r'),
('6310', '63', 'KABUPATEN TANAH BUMBU\r'),
('6311', '63', 'KABUPATEN BALANGAN\r'),
('6371', '63', 'KOTA BANJARMASIN\r'),
('6372', '63', 'KOTA BANJAR BARU\r'),
('6401', '64', 'KABUPATEN PASER\r'),
('6402', '64', 'KABUPATEN KUTAI BARAT\r'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR\r'),
('6405', '64', 'KABUPATEN BERAU\r'),
('6409', '64', 'KABUPATEN PENAJAM PASER U'),
('6411', '64', 'KABUPATEN MAHAKAM HULU\r'),
('6471', '64', 'KOTA BALIKPAPAN\r'),
('6472', '64', 'KOTA SAMARINDA\r'),
('6474', '64', 'KOTA BONTANG\r'),
('6501', '65', 'KABUPATEN MALINAU\r'),
('6502', '65', 'KABUPATEN BULUNGAN\r'),
('6503', '65', 'KABUPATEN TANA TIDUNG\r'),
('6504', '65', 'KABUPATEN NUNUKAN\r'),
('6571', '65', 'KOTA TARAKAN\r'),
('7101', '71', 'KABUPATEN BOLAANG MONGOND'),
('7102', '71', 'KABUPATEN MINAHASA\r'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGI'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAU'),
('7105', '71', 'KABUPATEN MINAHASA SELATA'),
('7106', '71', 'KABUPATEN MINAHASA UTARA\r'),
('7107', '71', 'KABUPATEN BOLAANG MONGOND'),
('7108', '71', 'KABUPATEN SIAU TAGULANDAN'),
('7109', '71', 'KABUPATEN MINAHASA TENGGA'),
('7110', '71', 'KABUPATEN BOLAANG MONGOND'),
('7111', '71', 'KABUPATEN BOLAANG MONGOND'),
('7171', '71', 'KOTA MANADO\r'),
('7172', '71', 'KOTA BITUNG\r'),
('7173', '71', 'KOTA TOMOHON\r'),
('7174', '71', 'KOTA KOTAMOBAGU\r'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAU'),
('7202', '72', 'KABUPATEN BANGGAI\r'),
('7203', '72', 'KABUPATEN MOROWALI\r'),
('7204', '72', 'KABUPATEN POSO\r'),
('7205', '72', 'KABUPATEN DONGGALA\r'),
('7206', '72', 'KABUPATEN TOLI-TOLI\r'),
('7207', '72', 'KABUPATEN BUOL\r'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG\r'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA\r'),
('7210', '72', 'KABUPATEN SIGI\r'),
('7211', '72', 'KABUPATEN BANGGAI LAUT\r'),
('7212', '72', 'KABUPATEN MOROWALI UTARA\r'),
('7271', '72', 'KOTA PALU\r'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAY'),
('7302', '73', 'KABUPATEN BULUKUMBA\r'),
('7303', '73', 'KABUPATEN BANTAENG\r'),
('7304', '73', 'KABUPATEN JENEPONTO\r'),
('7305', '73', 'KABUPATEN TAKALAR\r'),
('7306', '73', 'KABUPATEN GOWA\r'),
('7307', '73', 'KABUPATEN SINJAI\r'),
('7308', '73', 'KABUPATEN MAROS\r'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN '),
('7310', '73', 'KABUPATEN BARRU\r'),
('7311', '73', 'KABUPATEN BONE\r'),
('7312', '73', 'KABUPATEN SOPPENG\r'),
('7313', '73', 'KABUPATEN WAJO\r'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPA'),
('7315', '73', 'KABUPATEN PINRANG\r'),
('7316', '73', 'KABUPATEN ENREKANG\r'),
('7317', '73', 'KABUPATEN LUWU\r'),
('7318', '73', 'KABUPATEN TANA TORAJA\r'),
('7322', '73', 'KABUPATEN LUWU UTARA\r'),
('7325', '73', 'KABUPATEN LUWU TIMUR\r'),
('7326', '73', 'KABUPATEN TORAJA UTARA\r'),
('7371', '73', 'KOTA MAKASSAR\r'),
('7372', '73', 'KOTA PAREPARE\r'),
('7373', '73', 'KOTA PALOPO\r'),
('7401', '74', 'KABUPATEN BUTON\r'),
('7402', '74', 'KABUPATEN MUNA\r'),
('7403', '74', 'KABUPATEN KONAWE\r'),
('7404', '74', 'KABUPATEN KOLAKA\r'),
('7405', '74', 'KABUPATEN KONAWE SELATAN\r'),
('7406', '74', 'KABUPATEN BOMBANA\r'),
('7407', '74', 'KABUPATEN WAKATOBI\r'),
('7408', '74', 'KABUPATEN KOLAKA UTARA\r'),
('7409', '74', 'KABUPATEN BUTON UTARA\r'),
('7410', '74', 'KABUPATEN KONAWE UTARA\r'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR\r'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUA'),
('7413', '74', 'KABUPATEN MUNA BARAT\r'),
('7414', '74', 'KABUPATEN BUTON TENGAH\r'),
('7415', '74', 'KABUPATEN BUTON SELATAN\r'),
('7471', '74', 'KOTA KENDARI\r'),
('7472', '74', 'KOTA BAUBAU\r'),
('7501', '75', 'KABUPATEN BOALEMO\r'),
('7502', '75', 'KABUPATEN GORONTALO\r'),
('7503', '75', 'KABUPATEN POHUWATO\r'),
('7504', '75', 'KABUPATEN BONE BOLANGO\r'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO\r'),
('7601', '76', 'KABUPATEN MAJENE\r'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA\r'),
('7604', '76', 'KABUPATEN MAMUJU\r'),
('7605', '76', 'KABUPATEN MAMUJU UTARA\r'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH\r'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH\r'),
('8104', '81', 'KABUPATEN BURU\r'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU\r'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BA'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TI'),
('8108', '81', 'KABUPATEN MALUKU BARAT DA'),
('8109', '81', 'KABUPATEN BURU SELATAN\r'),
('8171', '81', 'KOTA AMBON\r'),
('8172', '81', 'KOTA TUAL\r'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGA'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA\r'),
('8204', '82', 'KABUPATEN HALMAHERA SELAT'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI\r'),
('8208', '82', 'KABUPATEN PULAU TALIABU\r'),
('8271', '82', 'KOTA TERNATE\r'),
('8272', '82', 'KOTA TIDORE KEPULAUAN\r'),
('9101', '91', 'KABUPATEN FAKFAK\r'),
('9102', '91', 'KABUPATEN KAIMANA\r'),
('9103', '91', 'KABUPATEN TELUK WONDAMA\r'),
('9104', '91', 'KABUPATEN TELUK BINTUNI\r'),
('9105', '91', 'KABUPATEN MANOKWARI\r'),
('9106', '91', 'KABUPATEN SORONG SELATAN\r'),
('9107', '91', 'KABUPATEN SORONG\r'),
('9108', '91', 'KABUPATEN RAJA AMPAT\r'),
('9109', '91', 'KABUPATEN TAMBRAUW\r'),
('9110', '91', 'KABUPATEN MAYBRAT\r'),
('9111', '91', 'KABUPATEN MANOKWARI SELAT'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFA'),
('9171', '91', 'KOTA SORONG\r'),
('9401', '94', 'KABUPATEN MERAUKE\r'),
('9402', '94', 'KABUPATEN JAYAWIJAYA\r'),
('9403', '94', 'KABUPATEN JAYAPURA\r'),
('9404', '94', 'KABUPATEN NABIRE\r'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR\r'),
('9410', '94', 'KABUPATEN PANIAI\r'),
('9411', '94', 'KABUPATEN PUNCAK JAYA\r'),
('9412', '94', 'KABUPATEN MIMIKA\r'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL\r'),
('9414', '94', 'KABUPATEN MAPPI\r'),
('9415', '94', 'KABUPATEN ASMAT\r'),
('9416', '94', 'KABUPATEN YAHUKIMO\r'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINT'),
('9418', '94', 'KABUPATEN TOLIKARA\r'),
('9419', '94', 'KABUPATEN SARMI\r'),
('9420', '94', 'KABUPATEN KEEROM\r'),
('9426', '94', 'KABUPATEN WAROPEN\r'),
('9427', '94', 'KABUPATEN SUPIORI\r'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA\r'),
('9429', '94', 'KABUPATEN NDUGA\r'),
('9430', '94', 'KABUPATEN LANNY JAYA\r'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGA'),
('9432', '94', 'KABUPATEN YALIMO\r'),
('9433', '94', 'KABUPATEN PUNCAK\r'),
('9434', '94', 'KABUPATEN DOGIYAI\r'),
('9435', '94', 'KABUPATEN INTAN JAYA\r'),
('9436', '94', 'KABUPATEN DEIYAI\r'),
('9471', '94', 'KOTA JAYAPURA\r');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

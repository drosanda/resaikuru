-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 30 Okt 2017 pada 23.39
-- Versi Server: 5.6.14
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaiman_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_config`
--

CREATE TABLE `a_config` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) NOT NULL COMMENT 'kode website',
  `title_default` varchar(255) NOT NULL,
  `keyword_default` varchar(255) NOT NULL,
  `deskripsi_default` varchar(255) NOT NULL,
  `web_register` int(1) DEFAULT '1',
  `web_login` int(1) NOT NULL DEFAULT '1',
  `web_cart` int(1) NOT NULL DEFAULT '1',
  `web_checkout` int(1) NOT NULL DEFAULT '1',
  `web_alamat` varchar(255) NOT NULL,
  `web_kodepos` varchar(10) NOT NULL,
  `web_kecamatan` varchar(150) NOT NULL,
  `web_kabkota` varchar(150) NOT NULL,
  `web_provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='untuk menyimpan konfigurasi';

--
-- Dumping data untuk tabel `a_config`
--

INSERT INTO `a_config` (`id`, `kode`, `title_default`, `keyword_default`, `deskripsi_default`, `web_register`, `web_login`, `web_cart`, `web_checkout`, `web_alamat`, `web_kodepos`, `web_kecamatan`, `web_kabkota`, `web_provinsi`) VALUES
(1, 'main', 'Jangiman.com | Jasa Kirim Makanan', 'kirim makanan', 'Jasa kirim makanan untuk reseller', 1, 1, 1, 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_gudang`
--

CREATE TABLE `a_gudang` (
  `id` int(11) NOT NULL,
  `kode` varchar(2) NOT NULL DEFAULT '00',
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabkota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `negara` varchar(3) NOT NULL,
  `kodepos` varchar(9) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel gudang';

--
-- Dumping data untuk tabel `a_gudang`
--

INSERT INTO `a_gudang` (`id`, `kode`, `nama`, `alamat`, `kecamatan`, `kabkota`, `provinsi`, `negara`, `kodepos`, `is_active`) VALUES
(1, 'BL', 'Balong', 'Tegalkembang', 'Kutawaringin', 'Kab. Bandung', 'Jawa Barat', 'IDN', '40900', 1),
(12, 'CT', 'Citiru 1', 'Citiru', 'Soreang', 'Kabupaten Bandung', 'Jawa Barat', 'IDN', '40900', 1),
(13, 'BW', 'Bojong Waru', 'Bojongwaru', 'Japara', 'Kabupaten Kuningan', 'Jawa Barat', 'IDN', '40900', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_jenis`
--

CREATE TABLE `a_jenis` (
  `id` int(11) NOT NULL,
  `kode` varchar(2) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='jenis barang untuk ERP';

--
-- Dumping data untuk tabel `a_jenis`
--

INSERT INTO `a_jenis` (`id`, `kode`, `nama`, `is_active`) VALUES
(1, 'BQ', 'Keju Balok', 1),
(2, 'LU', 'Lumpia', 1),
(3, 'WP', 'Wadah Plastik', 1),
(4, 'DT', 'Perekat Double Tape', 1),
(5, 'ST', 'Perekat Single Tape', 1),
(6, 'KP', 'Kantong Plastik', 1),
(7, 'GK', 'Gelas Kaca', 1),
(8, 'GP', 'Gelas Plastik', 1),
(9, 'PP', 'Piring Plastik', 1),
(10, 'SE', 'Sendok', 1),
(11, 'KM', 'Kertas Minyak', 1),
(12, 'KS', 'Kertas Sticker', 1),
(13, 'PQ', 'Produk Keju', 1),
(14, 'KM', 'Kerupuk Mentah', 1),
(15, 'PK', 'Produk Kerupuk', 1),
(16, 'AA', 'Ali Agrem', 1),
(17, 'PA', 'Produk Ali Agrem', 1),
(18, 'KH', 'Kertas HVS', 1),
(19, 'RE', 'Kendaraan Roda Empat', 1),
(20, 'RD', 'Kendaraan Roda Dua', 1),
(21, 'QP', 'Keju Potong', 1),
(22, 'KJ', 'Semua jenis Keju', 1),
(23, 'B0', 'Bensin Premium (BBM)', 1),
(24, 'B1', 'Bensin Pertalite (BBM)', 1),
(25, 'B2', 'Bensin Pertamax (BBM)', 1),
(26, 'B3', 'Bensin Pertamax Plus (BBM)', 1),
(27, 'B4', 'Bensin Pertamax Turbo (BBM)', 1),
(28, 'B5', 'Solar (BBM)', 1),
(29, 'B6', 'Solar Dexlite (BBM)', 1),
(30, 'B7', 'Solar Pertamina Dex (BBM)', 1),
(31, 'B8', 'Minyak Tanah', 1),
(32, 'B9', 'Tabung Gas Elpiji', 1),
(33, 'HB', 'H-Banner', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_modules`
--

CREATE TABLE `a_modules` (
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT '',
  `level` int(1) NOT NULL DEFAULT '0' COMMENT 'depth level of menu, 0 mean outer 3 deeper submenu',
  `has_submenu` int(1) NOT NULL DEFAULT '0' COMMENT '1 mempunyai submenu, 2 tidak mempunyai submenu',
  `children_identifier` varchar(255) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` enum('allowed','denied') NOT NULL DEFAULT 'denied',
  `is_visible` int(1) NOT NULL DEFAULT '1',
  `priority` int(3) NOT NULL DEFAULT '0' COMMENT '0 mean higher 999 lower',
  `fa_icon` varchar(255) NOT NULL DEFAULT 'fa fa-home' COMMENT 'font-awesome icon on menu',
  `utype` varchar(48) NOT NULL DEFAULT 'internal' COMMENT 'type module : internal, external'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='list modul yang ada dimenu atau tidak ada dimenu';

--
-- Dumping data untuk tabel `a_modules`
--

INSERT INTO `a_modules` (`identifier`, `name`, `path`, `level`, `has_submenu`, `children_identifier`, `is_active`, `is_default`, `is_visible`, `priority`, `fa_icon`, `utype`) VALUES
('akun', 'Akun', 'akun', 0, 0, NULL, 1, 'denied', 1, 11, 'fa fa-users', 'internal'),
('akun_admin', 'Admin', 'akun/admin', 1, 0, 'akun', 1, 'denied', 1, 0, 'fa fa-home', 'internal'),
('akun_hak_akses', 'Manage Hak Akses', 'akun/hak_akses', 1, 0, 'akun', 1, 'denied', 1, 5, 'fa fa-edit', 'internal'),
('akun_karyawan', 'Karyawan', 'akun/karyawan', 1, 0, 'akun', 1, 'denied', 1, 0, 'fa fa-home', 'internal'),
('akun_konsumen', 'Konsumen', 'akun/konsumen', 1, 0, 'akun', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('akun_konsumenalamat', 'Alamat Konsumen', 'akun/konsumenalamat', 1, 0, 'akun', 1, 'denied', 1, 3, 'fa fa-home', 'internal'),
('akun_konsumentoko', 'Toko Konsumen', 'akun/konsumentoko', 1, 0, 'akun', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('crm', 'CRM', 'crm', 0, 1, NULL, 1, 'denied', 1, 7, 'fa fa-heartbeat', 'internal'),
('crm_cs', 'CS', 'crm/cs', 1, 0, 'crm', 1, 'denied', 1, 3, 'fa fa-home', 'internal'),
('crm_kategori', 'Kategori', 'crm/kategori', 1, 0, 'crm', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('crm_komplain', 'Komplain', 'crm/komplain', 1, 0, 'crm', 1, 'denied', 1, 5, 'fa fa-home', 'internal'),
('crm_retur', 'Retur', 'crm/retur', 1, 0, 'crm', 1, 'denied', 1, 4, 'fa fa-home', 'internal'),
('crm_support', 'Support', 'crm/support', 1, 0, 'crm', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('dashboard', 'Dashboard', '', 0, 0, NULL, 1, 'allowed', 1, 0, 'fa fa-home', 'internal'),
('ecommerce', 'Ecommerce', 'ecommerce', 0, 1, NULL, 1, 'denied', 1, 3, 'fa fa-shopping-cart', 'internal'),
('ecommerce_bantuan', 'Bantuan (CS)', 'ecommerce/bantuan', 1, 0, 'ecommerce', 1, 'denied', 1, 6, 'fa fa-home', 'internal'),
('ecommerce_homepage', 'Homepage', 'ecommerce/homepage', 1, 1, 'ecommerce', 1, 'denied', 1, 7, 'fa fa-home', 'internal'),
('ecommerce_homepage_produk', 'Produk', 'ecommerce/homepage/produk', 2, 0, 'ecommerce_homepage_produk', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('ecommerce_homepage_slider', 'Slider', 'ecommerce/homepage/slider', 2, 0, 'ecommerce_homepage', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('ecommerce_kategori', 'Kategori', 'ecommerce/kategori', 1, 0, 'ecommerce', 1, 'denied', 1, 3, 'fa fa-home', 'internal'),
('ecommerce_konsumen', 'Konsumen', 'ecommerce/konsumen', 1, 0, 'ecommerce', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('ecommerce_order', 'Order', 'ecommerce/order', 1, 0, 'ecommerce', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('ecommerce_pembayaran', 'Pembayaran', 'ecommerce/pembayaran', 1, 0, 'ecommerce', 1, 'denied', 1, 5, 'fa fa-home', 'internal'),
('ecommerce_pengaturan', 'Pengaturan', 'ecommerce/pengaturan', 1, 0, 'ecommerce', 1, 'denied', 1, 9, 'fa fa-home', 'internal'),
('ecommerce_pengiriman', 'Pengiriman', 'ecommerce/pengiriman', 1, 0, 'ecommerce', 1, 'denied', 1, 6, 'fa fa-home', 'internal'),
('ecommerce_produk', 'Produk', 'ecommerce/produk', 1, 0, 'ecommerce', 1, 'denied', 1, 4, 'fa fa-home', 'internal'),
('ecommerce_promo', 'Promo', 'ecommerce/promo', 1, 0, 'ecommerce', 1, 'denied', 1, 8, 'fa fa-home', 'internal'),
('erpmaster', 'ERP Master', '#', 0, 1, NULL, 1, 'denied', 1, 1, 'fa fa-building', 'internal'),
('erpmaster_barang', 'Barang', 'erpmaster/barang', 1, 0, 'erpmaster', 1, 'denied', 1, 9, 'fa fa-home', 'internal'),
('erpmaster_gudang', 'Gudang', 'erpmaster/gudang', 1, 0, 'erpmaster', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('erpmaster_jenis', 'Jenis Barang', 'erpmaster/jenis', 1, 0, 'erpmaster', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('erpmaster_produkmeta', 'Produk Meta', 'erpmaster/produkmeta', 1, 0, 'erpmaster', 1, 'denied', 1, 5, 'fa fa-home', 'internal'),
('erpmaster_satuan', 'Satuan', 'erpmaster/satuan', 1, 0, 'erpmaster', 1, 'denied', 1, 6, 'fa fa-home', 'internal'),
('erpmaster_toko', 'Toko', 'erpmaster/toko', 1, 0, 'erpmaster', 1, 'denied', 1, 3, 'fa fa-home', 'internal'),
('erpmaster_vendor', 'Vendor', 'erpmaster/vendor', 1, 0, 'erpmaster', 1, 'denied', 1, 6, 'fa fa-home', 'internal'),
('gudang', 'Gudang', '#', 0, 1, NULL, 1, 'denied', 1, 8, 'fa fa-gift', 'internal'),
('gudang_bahanbaku', 'Bahan Baku', 'gudang/bb', 1, 0, 'gudang', 1, 'denied', 1, 7, 'fa fa-home', 'internal'),
('gudang_pengajuan', 'Pengajuan', 'gudang/pengajuan', 1, 0, 'gudang', 1, 'denied', 1, 6, 'fa fa-home', 'internal'),
('gudang_pindah', 'Pindah Barang', 'gudang/pindah', 1, 0, 'gudang', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('gudang_produksi', 'Barang Produksi', 'gudang/produksi', 1, 0, 'gudang', 1, 'denied', 1, 4, 'fa fa-home', 'internal'),
('gudang_retur', 'Barang Retur', 'gudang/retur', 1, 0, 'gudang', 1, 'denied', 1, 3, 'fa fa-home', 'internal'),
('gudang_so', 'Stok Opname', 'gudang/so', 1, 0, 'gudang', 1, 'denied', 1, 8, 'fa fa-home', 'internal'),
('gudang_stok', 'Penyimpanan &amp; Stok', 'gudang/stok', 1, 0, 'gudang', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('keuangan', 'Keuangan', 'keuangan', 0, 1, NULL, 1, 'denied', 1, 6, 'fa fa-money', 'internal'),
('keuangan_deposit', 'Deposit', 'keuangan/deposit', 1, 0, 'keuangan', 1, 'denied', 1, 6, 'fa fa-home', 'internal'),
('keuangan_inventaris', 'Inventaris', 'keuangan/inventaris', 1, 0, 'keuangan', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('keuangan_kas', 'Kas', 'keuangan/kas', 1, 0, 'keuangan', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('keuangan_laporan', 'Laporan', 'keuangan/laporan', 1, 0, 'keuangan', 1, 'denied', 1, 12, 'fa fa-home', 'internal'),
('keuangan_memo', 'Kredit Memo', 'keuangan/memo', 1, 0, 'keuangan', 1, 'denied', 1, 7, 'fa fa-home', 'internal'),
('keuangan_pengajuan', 'Pengajuan', 'keuangan/pengajuan', 1, 0, 'keuangan', 1, 'denied', 1, 4, 'fa fa-home', 'internal'),
('keuangan_perjalanan', 'Perjalanan', 'keuangan/perjalanan', 1, 0, 'keuangan', 1, 'denied', 1, 3, 'fa fa-home', 'internal'),
('keuangan_rekening', 'Rekening', 'keuangan/rekening', 1, 0, 'keuangan', 1, 'denied', 1, 8, 'fa fa-home', 'internal'),
('laporan', 'Laporan', 'laporan', 0, 1, NULL, 1, 'denied', 1, 10, 'fa fa-file-text', 'internal'),
('laporan_penjualan', 'Penjualan', 'laporan/penjualan', 1, 0, 'laporan', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('pembelian', 'Pembelian', 'pembelian', 0, 1, NULL, 1, 'denied', 1, 5, 'fa fa-opencart', 'internal'),
('pembelian_orderan', 'Orderan', 'pembelian/orderan', 1, 0, 'pembelian', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('pembelian_produksi', 'Produksi', 'pembelian/produksi', 1, 0, 'pembelian', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('pengiriman', 'Pengiriman', 'pengiriman', 0, 1, NULL, 1, 'denied', 1, 5, 'fa fa-truck', 'internal'),
('pengiriman_ekspedisi', 'Ekspedisi', 'pengriman/ekspedisi', 1, 0, 'pengiriman', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('pengiriman_kurir', 'Kurir', 'pengiriman/kurir', 1, 0, 'pengiriman', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('pengiriman_packing', 'Packing', 'pengiriman/packing', 1, 0, 'pengiriman', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('pengiriman_qc', 'QC', 'pengiriman/qc', 1, 0, 'pengiriman', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('penjualan', 'Penjualan', 'penjualan', 0, 1, NULL, 1, 'denied', 1, 3, 'fa fa-book', 'internal'),
('penjualan_offline', 'Offline', 'penjualan/offline', 1, 0, 'penjualan', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('penjualan_online', 'Online', 'penjualan/online', 1, 0, 'penjualan', 1, 'denied', 1, 1, 'fa fa-home', 'internal'),
('penjualan_outlet', 'Outlet (offline)', 'penjualan/outlet', 1, 0, 'penjualan', 1, 'denied', 1, 3, 'fa fa-home', 'internal'),
('produksi', 'Produksi', 'produksi', 0, 1, NULL, 1, 'denied', 1, 6, 'fa fa-cogs', 'internal'),
('produksi_proses', 'Proses', 'produksi/proses', 1, 0, 'produksi', 1, 'denied', 1, 2, 'fa fa-home', 'internal'),
('produksi_rencana', 'Rencana', 'produksi/rencana', 1, 0, 'produksi', 1, 'denied', 1, 1, 'fa fa-home', 'internal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_pekerjaan`
--

CREATE TABLE `a_pekerjaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `upah_latihan` float NOT NULL,
  `satuan_latihan` varchar(78) NOT NULL DEFAULT 'Pcs',
  `upah_dasar` float NOT NULL,
  `satuan_dasar` varchar(78) NOT NULL DEFAULT 'Pcs',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='daftar pekerjaan dan upah';

--
-- Dumping data untuk tabel `a_pekerjaan`
--

INSERT INTO `a_pekerjaan` (`id`, `nama`, `deskripsi`, `upah_latihan`, `satuan_latihan`, `upah_dasar`, `satuan_dasar`, `is_active`) VALUES
(1, 'Belanja Ke Pasar Soreang', 'Belanja kebutuhkan ke Pasar Soreang', 2000, 'Perjalanan PP', 3000, 'Perjalanan PP', 1),
(2, 'Potong Keju', 'Merubah potongan keju dari Balok Keju menjadi ukuran standar untuk digulung', 30, 'Pcs', 50, 'Pcs', 1),
(3, 'Menggulung Keju', 'Menggulung lumpia dengan keju dan bahan lainnya sehingga menjadi gulungan yang rapih dan siap produksi ke tahap selanjutnya', 40, 'Pcs', 50, 'Pcs', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_pengguna`
--

CREATE TABLE `a_pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel pengguna';

--
-- Dumping data untuk tabel `a_pengguna`
--

INSERT INTO `a_pengguna` (`id`, `username`, `password`, `email`, `nama`, `is_active`) VALUES
(1, 'deadmin', '21232f297a57a5a743894a0e4a801fc3', 'drosanda@outlook.co.id', 'Daeng', 1),
(2, 'zazizuw', '21232f297a57a5a743894a0e4a801fc3', '', 'Reza', 1),
(3, 'vfandhiny', '21232f297a57a5a743894a0e4a801fc3', '', 'Vanny', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_pengguna_module`
--

CREATE TABLE `a_pengguna_module` (
  `id` int(11) NOT NULL,
  `a_pengguna_id` int(11) NOT NULL,
  `a_modules_identifier` varchar(255) DEFAULT NULL,
  `rule` enum('allowed','disallowed','allowed_except','disallowed_except') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hak akses pengguna';

--
-- Dumping data untuk tabel `a_pengguna_module`
--

INSERT INTO `a_pengguna_module` (`id`, `a_pengguna_id`, `a_modules_identifier`, `rule`) VALUES
(1, 1, NULL, 'allowed_except'),
(2, 2, NULL, 'allowed_except');

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_produkmeta`
--

CREATE TABLE `a_produkmeta` (
  `id` int(11) NOT NULL,
  `utype` enum('ukuran','warna','rasa') NOT NULL,
  `kode` varchar(24) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='pilihan properti untuk produk';

--
-- Dumping data untuk tabel `a_produkmeta`
--

INSERT INTO `a_produkmeta` (`id`, `utype`, `kode`, `nama`, `is_active`) VALUES
(1, 'ukuran', 'AS', 'All Size', 1),
(2, 'warna', 'GL', 'Kuning Emas', 1),
(3, 'rasa', 'SB', 'Strawberry', 1),
(4, 'rasa', 'Original', 'Original', 1),
(5, 'rasa', 'CO', 'Cokelat Oreo', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_satuan`
--

CREATE TABLE `a_satuan` (
  `id` int(11) NOT NULL,
  `a_satuan_id_kali` int(11) DEFAULT NULL COMMENT 'untuk konversi nyambung ke id dirinya sendiri. ke bawah',
  `a_satuan_id_bagi` int(11) DEFAULT NULL COMMENT 'untuk konversi nyambung ke id dirinya sendiri. keatas',
  `nama` varchar(78) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `pembulatan` enum('keatas','kebawah','tidak') NOT NULL DEFAULT 'tidak',
  `kali_faktor` decimal(6,2) NOT NULL DEFAULT '1.00' COMMENT 'faktor kali ketika di konversi',
  `bagi_faktor` decimal(6,2) NOT NULL DEFAULT '1.00' COMMENT 'faktor pembagi ketika di konversi',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='satuan untuk barang di ERP';

--
-- Dumping data untuk tabel `a_satuan`
--

INSERT INTO `a_satuan` (`id`, `a_satuan_id_kali`, `a_satuan_id_bagi`, `nama`, `deskripsi`, `pembulatan`, `kali_faktor`, `bagi_faktor`, `is_active`) VALUES
(1, NULL, NULL, 'Pcs', 'Per Pieces, ini satuan default', 'keatas', '1.00', '1.00', 1),
(2, NULL, NULL, 'Pack', 'Per Pack', 'keatas', '1.00', '1.00', 1),
(3, 5, NULL, 'Kg', 'Kilogram', 'tidak', '10.00', '1.00', 1),
(4, NULL, 5, 'gr', 'Gram', 'keatas', '1.00', '100.00', 1),
(5, 4, 3, 'Oz', 'Oz 1/10 KG', 'keatas', '100.00', '10.00', 1),
(6, NULL, NULL, 'Perjalanan PP', 'Perjalanan yang dilakukan pergi dan pulang dari tempat asal. Bisa rumah atau kantor', 'tidak', '1.00', '1.00', 1),
(7, NULL, NULL, 'Unit', 'Biasanya untuk merepresentasikan kendaraan atau alat yang memiliki fungsi banyak', 'tidak', '1.00', '1.00', 1),
(8, NULL, 9, 'M', 'satuan panjang meter', 'tidak', '1.00', '1000.00', 1),
(9, 8, NULL, 'KM ', 'Satuan panjang Kilo Meter', 'tidak', '1000.00', '1.00', 1),
(10, NULL, NULL, 'L', 'Satuan volume Liter, untuk BBM atau bahan cair lainnya', 'tidak', '1.00', '1.00', 1),
(11, NULL, NULL, 'GL', 'Galon', 'tidak', '1.00', '1.00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_toko`
--

CREATE TABLE `a_toko` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL DEFAULT '',
  `kode_lokasi` varchar(2) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `kode_toko` varchar(2) NOT NULL,
  `cp` varchar(255) NOT NULL,
  `notelp` varchar(32) NOT NULL,
  `kode` varchar(4) NOT NULL COMMENT 'kode lokasi + kode toko',
  `nama` varchar(255) NOT NULL COMMENT 'gabungan dari nama lokasi + nama toko',
  `alamat` varchar(255) NOT NULL,
  `jam_buka` time NOT NULL DEFAULT '08:00:00',
  `jam_tutup` time NOT NULL DEFAULT '17:00:00',
  `keterangan` varchar(255) NOT NULL,
  `latitude` decimal(13,10) NOT NULL DEFAULT '-6.9993474000',
  `longitude` decimal(13,10) NOT NULL DEFAULT '107.5169445000',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `a_toko_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='data toko';

--
-- Dumping data untuk tabel `a_toko`
--

INSERT INTO `a_toko` (`id`, `nama_lokasi`, `kode_lokasi`, `nama_toko`, `kode_toko`, `cp`, `notelp`, `kode`, `nama`, `alamat`, `jam_buka`, `jam_tutup`, `keterangan`, `latitude`, `longitude`, `is_active`, `a_toko_id`) VALUES
(1, 'Pasar Soreang', 'PS', 'Lumpia Pasar', 'BB', 'Bos Bobotoh', '083822248558', 'PSLP', 'Pasar Soreang - Lumpia Pasar - Bos Bobotoh', 'Pasar soreang Blok tengah caket nu rujit', '08:00:00', '17:00:00', '', '-6.9993474000', '107.5169445000', 1, NULL),
(2, 'Pasar Soreang', 'PS', 'Toko Kue', 'TK', '', '', 'PSTK', 'Pasar Soreang - Toko Kue', 'Pasar Soreang BLok Depan', '08:00:00', '17:00:00', '', '-6.9993474000', '107.5169445000', 1, NULL),
(3, 'Jl Suniaraja Bandung', 'SB', 'Toko Sejati', 'SJ', '', '', 'SBSJ', 'Toko Sejati Suniaraja Bandung', 'Suniaraja Bandung', '08:00:00', '17:00:00', 'hari sabtu setengah hari, hari libur tutup', '-6.9993474000', '107.5169445000', 1, NULL),
(4, 'Soreang Cigembreng', 'SG', 'Toko Kue', 'KU', '', '', 'SGKU', 'Toko Kue Soreang Cigembreng', '', '08:00:00', '17:00:00', 'Untuk beli keju balok dairy gold', '-6.9993474000', '107.5169445000', 1, NULL),
(5, 'SPBU Kabupaten Bandung', 'SK', 'SPBU Kabupaten Bandung', 'S1', '', '', 'SKS1', 'SPBU Kabupaten Bandung', '', '08:00:00', '17:00:00', '', '-6.9993474000', '107.5169445000', 1, NULL),
(6, 'Soreang Cigembreng', 'SC', 'Toko Cemerlang', 'TC', '', '', 'SCTC', 'Toko Cemerlang di Soreang Cigembreng', 'Jl cigembreng', '08:00:00', '17:00:00', '', '-6.9993474000', '107.5169445000', 1, NULL),
(7, 'Kutawaringin', 'U', 'Cahaya Harapan', 'CH', 'Teh Cucu / A Hendra', '', 'UCH', 'TB Cahaya Harapan di Kutawaringin', 'TB Cahaya Harapan di Kutawaringin', '08:00:00', '17:00:00', 'Toko Bangunan', '-6.9993474000', '107.5169445000', 1, NULL),
(8, 'Kota Bandung', 'KB', 'Festival City Link', 'FC', '', '', 'KBFC', 'Festival City Link di Kota Bandung', 'FCL Kota Bandung', '08:00:00', '17:00:00', 'Stand Pameran', '-6.9993474000', '107.5169445000', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_vendor`
--

CREATE TABLE `a_vendor` (
  `id` int(11) NOT NULL,
  `kode` varchar(2) NOT NULL DEFAULT '00',
  `nama` varchar(255) NOT NULL,
  `telp` varchar(32) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel untuk vendor';

--
-- Dumping data untuk tabel `a_vendor`
--

INSERT INTO `a_vendor` (`id`, `kode`, `nama`, `telp`, `alamat`, `is_active`) VALUES
(1, 'FZ', 'Foodziah', '081320320320', 'test', 1),
(2, 'CP', 'Ceu Popon', '0101010', 'asdasdasdasd', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_vendor_pengguna`
--

CREATE TABLE `a_vendor_pengguna` (
  `id` int(11) NOT NULL,
  `a_vendor_id` int(11) NOT NULL,
  `a_pengguna_id` int(11) NOT NULL,
  `is_admin` int(1) NOT NULL DEFAULT '0',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='untuk yang ngakses vendor';

--
-- Dumping data untuk tabel `a_vendor_pengguna`
--

INSERT INTO `a_vendor_pengguna` (`id`, `a_vendor_id`, `a_pengguna_id`, `is_admin`, `is_active`) VALUES
(1, 1, 3, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_barang`
--

CREATE TABLE `b_barang` (
  `id` int(11) NOT NULL,
  `a_vendor_id` int(11) NOT NULL,
  `a_pengguna_id` int(11) NOT NULL,
  `utype` enum('bahan_baku','produk','peralatan','perlengkapan') NOT NULL DEFAULT 'produk',
  `nama` varchar(255) NOT NULL,
  `kode` varchar(24) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `deskripsi_singkat` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_dasar` float NOT NULL DEFAULT '0',
  `qty_dasar` int(11) NOT NULL DEFAULT '1',
  `satuan_dasar` varchar(78) NOT NULL DEFAULT 'Pack' COMMENT 'di isi dengan pack, pcs, karung, box, carton, dll',
  `harga_jadi` float NOT NULL,
  `qty_jadi` decimal(6,2) NOT NULL DEFAULT '1.00' COMMENT 'Jumlah qty jadinya',
  `satuan_jadi` varchar(78) NOT NULL DEFAULT 'Pcs' COMMENT 'di isi dengan pack, pcs, karung, box, carton,dll',
  `date_create` datetime NOT NULL,
  `stok_qty` decimal(6,2) NOT NULL,
  `stok_satuan` varchar(78) NOT NULL DEFAULT 'Pcs' COMMENT 'satuan yang ada di mutasi stok terakhir',
  `stok_sub_total` float NOT NULL DEFAULT '0',
  `date_update` datetime NOT NULL,
  `b_barang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ERP tabel produk';

--
-- Dumping data untuk tabel `b_barang`
--

INSERT INTO `b_barang` (`id`, `a_vendor_id`, `a_pengguna_id`, `utype`, `nama`, `kode`, `brand`, `deskripsi_singkat`, `deskripsi`, `harga_dasar`, `qty_dasar`, `satuan_dasar`, `harga_jadi`, `qty_jadi`, `satuan_jadi`, `date_create`, `stok_qty`, `stok_satuan`, `stok_sub_total`, `date_update`, `b_barang_id`) VALUES
(1, 1, 3, 'bahan_baku', 'Keju DairyGold Blue 2KG', 'BQ.DAIR02BL', 'DairyGold', 'Keju Dairy Gold Blue 2 KG', 'Keju Dairy Gold Blue 2 KG', 100000, 1, 'Pack', 0, '2.00', 'Kg', '0000-00-00 00:00:00', '0.00', 'Kg', 0, '0000-00-00 00:00:00', NULL),
(2, 1, 3, 'bahan_baku', 'Lumpia Bintang', 'LU.BIN11000', 'Bintang', 'Kualitas 1 isi 10pcs', 'Tiap beli 10 diskon seribu', 2500, 1, 'Pack', 0, '10.00', 'Pcs', '0000-00-00 00:00:00', '30.00', 'Pcs', 0, '0000-00-00 00:00:00', NULL),
(3, 1, 1, 'bahan_baku', 'Lumpia Enros', 'LU.ENR31000', 'Enros', 'Lumpia kelas 3 isi 10 pcs', 'Tiap beli 10 diskon seribu', 2500, 1, 'Pack', 0, '10.00', 'Pcs', '0000-00-00 00:00:00', '0.00', 'Pcs', 0, '0000-00-00 00:00:00', NULL),
(4, 1, 3, 'peralatan', 'Kotak Plastik 750ml', 'WP.RECT75TR', '', 'Wadah plastik persegi panjang ukuran 750ml', 'Wadah plastik persegi panjang ukuran 750ml.\r\n\r\nDigunakan untuk kemasan ROLCIZ ketika dititipkan ke kantin atau warung', 15000, 1, 'Pcs', 15000, '1.00', 'Pcs', '2017-09-09 23:50:35', '16.00', 'Pcs', 0, '2017-09-09 23:50:35', NULL),
(5, 1, 3, 'produk', 'Rolciz Original 1/2 Lumpia', 'PQ.RCFS05OR', 'Rolciz', 'Rolciz Ukuran 1/2 lumpia keju apa aja', 'Keju Gulung Rolciz Rasa Original.', 0, 1, 'Pcs', 0, '1.00', 'Pcs', '2017-09-10 00:14:12', '0.00', 'Pcs', 0, '2017-09-10 00:14:12', NULL),
(6, 1, 3, 'produk', 'Rolciz Original 1 Lumpia', 'PQ.RCFS01OR', 'Rolciz', 'Rolciz Panjang 1 Lumpia keju apa aja', 'Rolciz Panjang 1 Lumpia', 0, 1, 'Pack', 0, '1.00', 'Pcs', '2017-09-10 00:18:55', '0.00', 'Pcs', 0, '2017-09-10 00:18:55', NULL),
(7, 1, 3, 'produk', 'Rolciz Kraft Cheddar panjang 1 Lumpia', 'PQ.RCFSK1OR', 'Rolciz', 'Rolciz Kraft Cheddar panjang 1 Lumpia', 'Rolciz Kraft Cheddar panjang 1 Lumpia', 1200, 1, 'Pack', 1200, '1.00', 'Pcs', '2017-09-10 00:26:16', '0.00', 'Pcs', 0, '2017-09-10 00:26:16', NULL),
(8, 1, 3, 'produk', 'Rolciz Kraft Cheddar panjang 1 Lumpia Retur Kantin', 'PQ.RCFSK1OR', 'Rolciz', 'Rolciz Kraft cheddar retur kantin Rolciz Kraft', 'Rolciz Kraft cheddar retur kantin Rolciz Kraft', 800, 1, 'Pcs', 1250, '1.00', 'Pcs', '2017-09-10 00:26:16', '0.00', 'Pcs', 0, '2017-09-10 00:26:16', NULL),
(9, 1, 3, 'produk', 'Rolciz Original 1 Lumpia keju apa aja', 'PQ.RCBS01OR', 'Rolciz', 'retur kantin Rolciz Panjang 1 Lumpia keju apa aja', 'Rolciz Panjang 1 Lumpia\r\nretur kantin\r\nbahan keju apa aja', 500, 1, 'Pcs', 500, '1.00', 'Pcs', '2017-09-10 00:18:55', '0.00', 'Pcs', 0, '2017-09-10 00:18:55', 9),
(10, 1, 3, 'perlengkapan', 'Supra X 125 Z 3729 KC', 'RD.HSX825BH', 'Honda', 'Sepeda Motor Supra X 125 Tahun 2008 Biru Hitam Z 3729 KC', 'Sepeda Motor Supra X 125 Tahun 2008 Biru Hitam Z 3729 KC', 1360000, 1, 'Unit', 6000000, '1.00', 'Unit', '2017-09-10 01:58:24', '0.00', 'Unit', 0, '2017-09-10 01:58:24', NULL),
(11, 1, 3, 'perlengkapan', 'BBM Pertalite dari SPBU', 'B1.PRSP01BL', 'Pertamina', 'Bahan bakar bensin Pertalite untuk kendaraan 4 tak bensin dari SPBU', 'Bahan bakar bensin Pertalite untuk kendaraan 4 tak bensin.\r\n\r\nCocok untuk jenis\r\nRD Roda Dua\r\nCocok untuk\r\nRE Roda Empat\r\n', 7500, 1, 'L', 7500, '1.00', 'L', '2017-09-10 10:25:48', '0.00', 'L', 0, '2017-09-10 10:25:48', NULL),
(12, 1, 3, 'perlengkapan', 'BBM Pertalite dari Pom Mini', 'B1.PRPM01BL', 'Pertamina', 'Bahan bakar bensin Pertalite untuk kendaraan 4 tak bensin dari POM MINI', 'Bahan bakar bensin Pertalite untuk kendaraan 4 tak bensin.\r\n\r\nCocok untuk jenis\r\nRD Roda Dua\r\nCocok untuk\r\nRE Roda Empat\r\n', 7500, 1, 'L', 7500, '1.00', 'L', '2017-09-10 10:25:48', '0.00', 'L', 0, '2017-09-10 10:25:48', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_barang_inventaris`
--

CREATE TABLE `b_barang_inventaris` (
  `id` int(11) NOT NULL,
  `b_barang_id` int(11) NOT NULL,
  `b_karyawan_id` int(11) NOT NULL,
  `date_penyerahan` int(11) DEFAULT NULL,
  `date_pengembalian` int(11) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='barang inventaris';

--
-- Dumping data untuk tabel `b_barang_inventaris`
--

INSERT INTO `b_barang_inventaris` (`id`, `b_barang_id`, `b_karyawan_id`, `date_penyerahan`, `date_pengembalian`, `keterangan`) VALUES
(1, 10, 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_barang_toko`
--

CREATE TABLE `b_barang_toko` (
  `id` int(11) NOT NULL,
  `a_toko_id` int(11) NOT NULL,
  `b_barang_id` int(11) NOT NULL,
  `kode` varchar(32) NOT NULL,
  `harga_toko` float NOT NULL COMMENT 'harga toko',
  `stok_qty` decimal(6,2) NOT NULL,
  `stok_satuan` varchar(78) NOT NULL DEFAULT 'Pcs',
  `stok_sub_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='toko tempat membeli barang';

--
-- Dumping data untuk tabel `b_barang_toko`
--

INSERT INTO `b_barang_toko` (`id`, `a_toko_id`, `b_barang_id`, `kode`, `harga_toko`, `stok_qty`, `stok_satuan`, `stok_sub_total`) VALUES
(1, 1, 2, 'PSLP.LU.BIN11000', 2500, '30.00', 'Pcs', 75000),
(2, 3, 4, 'SBSJ.WP.RECT75TR', 15000, '16.00', 'Pcs', 240000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_gudang_stok`
--

CREATE TABLE `b_gudang_stok` (
  `id` int(11) NOT NULL,
  `a_gudang_id` int(11) NOT NULL,
  `a_pengguna_id` int(11) NOT NULL COMMENT 'yang mendata mutasi stok',
  `c_produk_id` int(11) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `rasa` varchar(255) NOT NULL,
  `jenis` enum('in','out') NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `qty_last` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='untuk mutasi stok produk di gudang';

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_karyawan`
--

CREATE TABLE `b_karyawan` (
  `id` int(11) NOT NULL,
  `a_pengguna_id` int(11) DEFAULT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `telp` varchar(32) NOT NULL,
  `pendidikan_terakhir` varchar(78) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(78) NOT NULL DEFAULT 'Bandung',
  `tanggal_masuk` date NOT NULL DEFAULT '2017-08-18',
  `waktu_gajian` enum('harian','mingguan','sebulan_2_kali','perbulan') NOT NULL DEFAULT 'sebulan_2_kali',
  `kstatus` enum('freelance','kontrak','resigned') NOT NULL DEFAULT 'freelance',
  `b_karyawan_id` int(11) DEFAULT NULL COMMENT 'untuk atasan karyawan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel karyawan';

--
-- Dumping data untuk tabel `b_karyawan`
--

INSERT INTO `b_karyawan` (`id`, `a_pengguna_id`, `nama_depan`, `nama_belakang`, `nip`, `telp`, `pendidikan_terakhir`, `tanggal_lahir`, `tempat_lahir`, `tanggal_masuk`, `waktu_gajian`, `kstatus`, `b_karyawan_id`) VALUES
(1, NULL, 'Deden ', 'Nden', '', '', 'SMA', '0000-00-00', 'Bandung', '2017-08-14', 'sebulan_2_kali', 'freelance', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_kategori`
--

CREATE TABLE `b_kategori` (
  `id` int(11) NOT NULL,
  `utype` enum('kategori','kategori_sub','kategori_sub_sub','tag','brand') NOT NULL DEFAULT 'kategori',
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `mtitle` varchar(120) NOT NULL COMMENT 'meta title',
  `mkeyword` varchar(120) NOT NULL COMMENT 'meta keyword',
  `mdescription` varchar(160) NOT NULL COMMENT 'meta description',
  `image` varchar(255) NOT NULL,
  `image_cover` varchar(255) NOT NULL,
  `prioritas` int(3) NOT NULL DEFAULT '0' COMMENT 'makin tinggi nilai prioritas makin awal ditampilkan',
  `is_visible` int(1) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `b_kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel untuk kategori produk, sub kategori produk, dan tag';

--
-- Dumping data untuk tabel `b_kategori`
--

INSERT INTO `b_kategori` (`id`, `utype`, `nama`, `slug`, `deskripsi`, `mtitle`, `mkeyword`, `mdescription`, `image`, `image_cover`, `prioritas`, `is_visible`, `is_active`, `b_kategori_id`) VALUES
(1, 'kategori', 'Makanan Asin', 'asin', 'Lihat semua produk makanan asin', '', '', '', '0', '0', 0, 1, 1, NULL),
(2, 'kategori', 'Makanan Manis', 'manis', 'Lihat semua produk manis', '', '', '', '0', '0', 0, 1, 1, NULL),
(3, 'kategori_sub', 'Kerupuk', 'kerupuk', 'Lihat semua produk kerupuk dari jangiman.com', '', '', '', '', '', 0, 1, 1, 1),
(4, 'kategori_sub', 'Gorengan Aroma', 'gorengan-aroma', 'Tampilkan semua produk dengan kategori gorengan aroma di jangiman.com', '', '', '', '', '', 0, 1, 1, 2),
(5, 'tag', 'cemilan', 'Cemilan', 'Lihat semua produk cemilan', '', '', '', '', '', 0, 1, 1, NULL),
(6, 'tag', 'Snack', 'snack', '', '', '', '', '', '', 0, 1, 1, NULL),
(7, 'kategori', 'Cireng', 'cireng', 'Produk berbahan dasar tepung kanji yang diolah menjadi makanan ringan.', '', '', '', '', '', 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_rencana`
--

CREATE TABLE `b_rencana` (
  `id` int(11) NOT NULL,
  `a_vendor_id` int(11) NOT NULL,
  `b_barang_id` int(11) DEFAULT NULL COMMENT 'barang harus terdefinisi dulu sebelum bisa di produksi',
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `qty_target` decimal(6,2) NOT NULL,
  `satuan_target` varchar(78) NOT NULL DEFAULT 'Pcs',
  `prioritas` int(3) NOT NULL DEFAULT '0' COMMENT '0 paling atas, 999 paling bawah',
  `tingkat` int(3) NOT NULL DEFAULT '0' COMMENT 'o berarti paling atas',
  `aturan_bahanbaku` int(1) NOT NULL DEFAULT '1' COMMENT 'jika bahan baku tidak ada atau ada sebagian. 1 ketat, 0 bolehkan meskipun kosong',
  `aturan_selesai` int(1) NOT NULL DEFAULT '1' COMMENT '0 tidak ketat, kriteria kalau tidak diisi ga masalah. 1 tidak dapat selesai sebelum diisi',
  `aturan_karyawan` int(1) NOT NULL DEFAULT '1' COMMENT '0 tidak ketat, kriteria kalau tidak diisi ga masalah. 1 tidak dapat selesai sebelum diisi',
  `aturan_karyawan_minimal` int(4) NOT NULL DEFAULT '1' COMMENT 'mnimal karyawan yang dibutuhkan',
  `is_visible` int(1) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `b_rencana_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel planning pembuatan produk ERP';

--
-- Dumping data untuk tabel `b_rencana`
--

INSERT INTO `b_rencana` (`id`, `a_vendor_id`, `b_barang_id`, `nama`, `deskripsi`, `qty_target`, `satuan_target`, `prioritas`, `tingkat`, `aturan_bahanbaku`, `aturan_selesai`, `aturan_karyawan`, `aturan_karyawan_minimal`, `is_visible`, `is_active`, `b_rencana_id`) VALUES
(1, 1, NULL, 'Produksi Rolciz Harian', '', '600.00', 'Pcs', 0, 0, 1, 1, 1, 1, 1, 1, NULL),
(2, 1, 6, 'Produksi Rolciz Original 1 Lumpia Keju Apa Saja', 'Produksi Rolciz Original 1 Lumpia Keju Apa Saja', '400.00', 'Pcs', 0, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 1, NULL, 'Persiapan', 'Mempersiapkan Produksi Rolciz\r\n\r\nCek stok Bahan Baku.\r\nStok Opname Bahan baku.\r\nMenyusun Daftar Pembelian Bahan Baku\r\nMenghubungi karyawan supaya bersiap-siap produksi', '600.00', 'Pcs', 1, 2, 1, 1, 1, 1, 1, 1, 2),
(4, 1, NULL, 'Pembelian', 'Melakukan pembelian sesuai dengan daftar pembelian bahan baku untuk kebutuhan produksi', '600.00', 'Pcs', 2, 3, 1, 1, 1, 1, 1, 1, 2),
(5, 1, NULL, 'Penerimaan Pembelanjaan', 'Melakukan crosscheck dan QC terhadap barang yang baru dibeli', '600.00', 'Pcs', 3, 3, 1, 1, 1, 1, 1, 1, 2),
(6, 1, NULL, 'Memotong Keju', 'Memotong keju balok menjadi potongan kecil sesuai SOP', '600.00', 'Pcs', 4, 3, 1, 1, 1, 1, 1, 1, 2),
(7, 1, NULL, 'Membuka Lumpia', '', '600.00', 'Pcs', 5, 3, 1, 1, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_rencana_kegiatan`
--

CREATE TABLE `b_rencana_kegiatan` (
  `id` int(11) NOT NULL,
  `b_rencana_id` int(11) NOT NULL,
  `a_pekerjaan_id` int(11) NOT NULL,
  `karyawan_minimal` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='daftar rencana kegiatan karyawan';

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_rencana_material`
--

CREATE TABLE `b_rencana_material` (
  `id` int(11) NOT NULL,
  `b_rencana_id` int(11) NOT NULL,
  `b_barang_id` int(11) NOT NULL COMMENT 'Bahan baku diambil dari tabel barang',
  `a_jenis_id` int(11) NOT NULL COMMENT 'Jenis Bahan baku, berguna untuk subtitusi bahan baku',
  `prioritas` int(3) NOT NULL DEFAULT '0' COMMENT '0 paling atas, 999 paling bawah',
  `qty_minimum` decimal(6,2) NOT NULL DEFAULT '1.00',
  `satuan_minimum` varchar(78) NOT NULL DEFAULT 'Pcs',
  `qty_target` decimal(6,2) NOT NULL DEFAULT '1.00',
  `satuan_target` varchar(78) NOT NULL DEFAULT 'Pcs'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='rencana bahan baku untuk fase produksi';

--
-- Dumping data untuk tabel `b_rencana_material`
--

INSERT INTO `b_rencana_material` (`id`, `b_rencana_id`, `b_barang_id`, `a_jenis_id`, `prioritas`, `qty_minimum`, `satuan_minimum`, `qty_target`, `satuan_target`) VALUES
(2, 6, 1, 1, 0, '1.00', 'Pcs', '1.00', 'Pcs'),
(3, 6, 1, 1, 1, '2.00', 'Kg', '600.00', 'Pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_user`
--

CREATE TABLE `b_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fnama` varchar(255) NOT NULL,
  `lnama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabkota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL DEFAULT '',
  `negara` varchar(255) NOT NULL DEFAULT 'Indonesia',
  `kodepos` varchar(25) NOT NULL,
  `kelamin` int(1) NOT NULL DEFAULT '1' COMMENT '1 laki-laki 0 perempuan',
  `bdate` date NOT NULL DEFAULT '1970-01-01' COMMENT 'tanggal lahir',
  `cdate` datetime NOT NULL COMMENT 'tanggal pembuatan',
  `adate` date DEFAULT NULL COMMENT 'tanggal aktifasi',
  `edate` date DEFAULT NULL COMMENT 'tanggal berakhir membership',
  `telp` varchar(25) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `fb_id` int(11) DEFAULT NULL,
  `ig` varchar(255) NOT NULL,
  `ig_id` int(11) DEFAULT NULL,
  `deposit` float NOT NULL DEFAULT '0' COMMENT 'saldo_deposit',
  `poin` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `api_web_token` varchar(24) DEFAULT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0' COMMENT '0 tidak 1 ya',
  `is_agree` int(1) NOT NULL DEFAULT '0',
  `is_confirmed` int(1) NOT NULL DEFAULT '0' COMMENT '1 ya, 0 belum konfirmasi, flag setelah konfirmasi',
  `is_premium` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel pengguna, bisa member atau user vendor,';

--
-- Dumping data untuk tabel `b_user`
--

INSERT INTO `b_user` (`id`, `email`, `password`, `fnama`, `lnama`, `alamat`, `kelurahan`, `kecamatan`, `kabkota`, `provinsi`, `negara`, `kodepos`, `kelamin`, `bdate`, `cdate`, `adate`, `edate`, `telp`, `fb`, `fb_id`, `ig`, `ig_id`, `deposit`, `poin`, `image`, `api_web_token`, `is_deleted`, `is_agree`, `is_confirmed`, `is_premium`) VALUES
(1, 'drosanda@outlook.co.id', '21232f297a57a5a743894a0e4a801fc3', 'Daeng Rosanda', '', '', '', '', '', '', 'Indonesia', '', 1, '1970-01-01', '0000-00-00 00:00:00', NULL, NULL, '', '', NULL, '', NULL, 0, 0, '', '5EB52B4', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_user_alamat`
--

CREATE TABLE `b_user_alamat` (
  `id` int(11) NOT NULL,
  `b_user_id` int(11) NOT NULL,
  `nama_alamat` varchar(50) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `telp` varchar(25) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabkota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL,
  `kodepos` varchar(10) NOT NULL,
  `is_default` int(1) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='buku alamat untuk user';

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_user_store`
--

CREATE TABLE `b_user_store` (
  `id` int(11) NOT NULL,
  `b_user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telp` varchar(32) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_user_vendor`
--

CREATE TABLE `b_user_vendor` (
  `id` int(11) NOT NULL,
  `b_user_id` int(11) NOT NULL,
  `a_vendor_id` int(11) NOT NULL,
  `is_admin` int(1) NOT NULL DEFAULT '0',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='jadi vendor itu bisa dikelola oleh user kita';

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_vendor_brand`
--

CREATE TABLE `b_vendor_brand` (
  `id` int(11) NOT NULL,
  `a_vendor_id` int(11) NOT NULL,
  `b_kategori_id` int(11) NOT NULL COMMENT 'mengacu kepada Kategori tag id yang jenis nya brand'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel khusus vendor yang mengelola brand, jadi bisa vendor';

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_barang_inventory`
--

CREATE TABLE `c_barang_inventory` (
  `id` int(11) NOT NULL,
  `a_toko_id` int(11) NOT NULL,
  `b_barang_id` int(11) NOT NULL,
  `a_pengguna_id` int(11) NOT NULL,
  `b_barang_toko_kode` varchar(32) NOT NULL,
  `harga_dasar` float NOT NULL COMMENT 'dari tabel barang',
  `harga_beli` float NOT NULL COMMENT 'harga_bli dari pembelian',
  `sub_total_beli` float NOT NULL DEFAULT '0' COMMENT 'sub total dari satuan harga dasar',
  `diskon_beli` float NOT NULL DEFAULT '0' COMMENT 'isi kalau ada diskon',
  `total_beli` float NOT NULL DEFAULT '0' COMMENT 'total harga setelah diskon',
  `qty_beli` decimal(6,2) NOT NULL,
  `satuan_beli` varchar(78) NOT NULL DEFAULT 'Pcs',
  `qty` decimal(6,2) NOT NULL COMMENT 'setelah dikonversi',
  `satuan` varchar(78) NOT NULL DEFAULT 'Pcs' COMMENT 'setelah dikonversi',
  `qty_last` decimal(6,2) NOT NULL COMMENT 'qty sebelumnya',
  `satuan_last` varchar(78) NOT NULL DEFAULT 'Pcs',
  `total_last` float NOT NULL COMMENT 'total harga sebelumnya',
  `total` float NOT NULL COMMENT 'total harga',
  `jenis` varchar(3) NOT NULL DEFAULT 'in' COMMENT 'in atau out',
  `jenis_kategori` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `c_barang_inventory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='buat mutasi inventory produk';

--
-- Dumping data untuk tabel `c_barang_inventory`
--

INSERT INTO `c_barang_inventory` (`id`, `a_toko_id`, `b_barang_id`, `a_pengguna_id`, `b_barang_toko_kode`, `harga_dasar`, `harga_beli`, `sub_total_beli`, `diskon_beli`, `total_beli`, `qty_beli`, `satuan_beli`, `qty`, `satuan`, `qty_last`, `satuan_last`, `total_last`, `total`, `jenis`, `jenis_kategori`, `keterangan`, `c_barang_inventory_id`) VALUES
(1, 1, 2, 3, 'PSLP.LU.BIN11000', 2500, 2500, 75000, 3000, 72000, '30.00', 'Pcs', '600.00', 'Pcs', '0.00', 'Pcs', 0, 0, 'in', 'pembelian', 'ada diskon per 10 pack', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_pembelian`
--

CREATE TABLE `c_pembelian` (
  `id` int(11) NOT NULL,
  `b_karyawan_id` int(11) NOT NULL COMMENT 'karyawan yang melakukan pembelian',
  `a_pekerjaan_id` int(11) NOT NULL,
  `a_toko_id` int(11) NOT NULL,
  `kendaraan` int(11) DEFAULT NULL COMMENT 'mengambil dari b_barang_id jenis kendaraan RD/RE. Jika null jalan kaki',
  `jenis_bbm` int(11) DEFAULT NULL COMMENT 'mengambil dari b_barang_id jenis kendaraan B0-B9. Jika null jalan kaki',
  `qty_lokasi` int(3) NOT NULL DEFAULT '1',
  `qty_jarak` decimal(6,2) NOT NULL DEFAULT '1.00',
  `satuan_jarak` varchar(78) NOT NULL DEFAULT 'KM',
  `upah_dasar` float NOT NULL,
  `upah_satuan` varchar(78) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `date_create` datetime DEFAULT NULL,
  `date_mulai` datetime DEFAULT NULL,
  `date_selesai` datetime DEFAULT NULL,
  `date_terima` datetime DEFAULT NULL,
  `biaya_parkir` float NOT NULL,
  `qty_bbm` decimal(6,2) NOT NULL,
  `satuan_bbm` varchar(78) NOT NULL DEFAULT 'L',
  `biaya_bbm` float NOT NULL,
  `total_pembelian` float NOT NULL COMMENT 'jumlah dari masing2 harga pembelian barang',
  `total` float NOT NULL DEFAULT '0' COMMENT 'total biaya pembelian barang + variabel lainya'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel purchasing';

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_pembelian_material`
--

CREATE TABLE `c_pembelian_material` (
  `id` int(11) NOT NULL,
  `c_pembelian_id` int(11) NOT NULL,
  `b_barang_id` int(11) NOT NULL,
  `a_toko_id` int(11) NOT NULL,
  `b_karyawan_id` int(11) NOT NULL COMMENT 'Penerima Barang setelah dibeli',
  `harga_beli` float NOT NULL COMMENT 'diambil dari harga dasar di tabel b_barang',
  `qty_beli` decimal(6,2) NOT NULL DEFAULT '1.00',
  `sub_total_beli` float NOT NULL DEFAULT '0',
  `qty_terima` decimal(6,2) NOT NULL,
  `sub_total_terima` float NOT NULL DEFAULT '0',
  `diskon_terima` float NOT NULL DEFAULT '0',
  `total_terima` float NOT NULL DEFAULT '0',
  `date_ubah` datetime DEFAULT NULL,
  `date_terima` datetime DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='list pembelian';

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_produk`
--

CREATE TABLE `c_produk` (
  `id` int(11) NOT NULL,
  `a_pengguna_id` int(11) DEFAULT NULL,
  `b_kategori_id` int(11) DEFAULT NULL COMMENT 'untuk brand, mengacu pada b_kategori_tag',
  `a_vendor_id` int(11) DEFAULT NULL,
  `utype` enum('utama','variasi') NOT NULL DEFAULT 'utama' COMMENT 'variasi produk adalah produk yang berbeda rasa, ukuran, warna, dll.',
  `jenis` enum('pakaian','aksesoris','katalog','membership','makanan') NOT NULL DEFAULT 'makanan',
  `sku` varchar(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deskripsi_singkat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_beli` float NOT NULL,
  `harga_retail` float NOT NULL,
  `harga_jual` float NOT NULL,
  `diskon_harga` float NOT NULL DEFAULT '0' COMMENT 'jika ada maka akan dikurangi dari harga beli',
  `diskon_persen` int(3) NOT NULL DEFAULT '0' COMMENT 'Jika ada maka akan dikurangin dari harga jual',
  `diskon_expired` datetime DEFAULT NULL,
  `diskon_teks` varchar(255) NOT NULL DEFAULT '',
  `tahun` year(4) DEFAULT NULL COMMENT 'tahun produk, untuk filter',
  `ukuran` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `rasa` varchar(255) DEFAULT NULL,
  `bahan` varchar(255) NOT NULL,
  `berat` int(11) NOT NULL DEFAULT '1000' COMMENT 'dalam gram',
  `berat_packing` int(11) NOT NULL COMMENT 'dalam gram, berat yang di-up setelah parkir',
  `stok` int(11) NOT NULL COMMENT 'stok terakhir',
  `is_visible` int(1) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_can_wait` int(1) NOT NULL DEFAULT '1' COMMENT 'can wait',
  `waiting_day` int(2) NOT NULL DEFAULT '3' COMMENT 'maksimum waiting day',
  `foto` text NOT NULL COMMENT 'url featured image produk',
  `thumb` text NOT NULL COMMENT 'url featured image produk thumbnail',
  `review` decimal(2,1) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `dilihat` int(11) NOT NULL,
  `terjual` int(11) NOT NULL,
  `sales_rate` decimal(5,2) NOT NULL,
  `sales_count` int(11) NOT NULL,
  `best_dua_kata` varchar(255) NOT NULL,
  `pirt` varchar(50) NOT NULL,
  `bpom` varchar(50) NOT NULL,
  `halal` enum('vendor','mui','tidak') NOT NULL,
  `mtitle` varchar(120) NOT NULL COMMENT 'meta title',
  `mkeyword` varchar(120) NOT NULL COMMENT 'meta keyword',
  `mdescription` varchar(160) NOT NULL COMMENT 'meta description',
  `c_produk_id` int(11) DEFAULT NULL COMMENT 'untuk relasi produk utama dan variasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel produk';

--
-- Dumping data untuk tabel `c_produk`
--

INSERT INTO `c_produk` (`id`, `a_pengguna_id`, `b_kategori_id`, `a_vendor_id`, `utype`, `jenis`, `sku`, `nama`, `slug`, `deskripsi_singkat`, `deskripsi`, `harga_beli`, `harga_retail`, `harga_jual`, `diskon_harga`, `diskon_persen`, `diskon_expired`, `diskon_teks`, `tahun`, `ukuran`, `warna`, `rasa`, `bahan`, `berat`, `berat_packing`, `stok`, `is_visible`, `is_active`, `is_can_wait`, `waiting_day`, `foto`, `thumb`, `review`, `rating`, `dilihat`, `terjual`, `sales_rate`, `sales_count`, `best_dua_kata`, `pirt`, `bpom`, `halal`, `mtitle`, `mkeyword`, `mdescription`, `c_produk_id`) VALUES
(1, NULL, 2, 1, 'utama', 'makanan', 'FZRC.PQ.RCBS01OR', 'Rolciz Keju Gulung Original Standing Pouch 15Pcs', 'rolciz-original', 'Cemilan dengan rasa yang manis, berisi 15 pcs Rolciz terbaik yang bisa menemani kamu disaat santai, nongkrong bahkan di perjalanan. Berbahan dasar keju original yang membuat kamu ketagihan. Tersedia juga beberapa varian rasa seperti cokelat oreo, greentea, strawberry, dan taro.', '\n						Keju Gulung Rolciz\n						<br>\n						<br>\n						Rolciz merupakan makanan ringan yang bisa di cemil ramai-ramai.\n						<br>\n						Kemasan 1 Standing Pouch berisi 15 Pcs Rolciz.\n						<br>\n						<br>\n						Komposisi\n						<br>\n						Terbuat dari Keju ASLI, tepung terigu, gula pasir dibuat tanpa bahan pengawet. \n						<br>\n						Rolciz tahan sampai 10 Hari dari waktu produksi.\n						<br>\n						Rolciz memiliki tekstur yang renyah diluar kemudian padat keju didalam dengan rasa manis ditambah asin keju.\n						<br>\n						<br>\n						\n						\n						Packing\n						<br>\n						Dikarenakan Rolciz ini sangat ringan, maka packing dihitung volume, sehingga beratnya dilebihkan.\n						<br>\n						Berat ASLI 200 Gram.\n						<br>\n						1 Kg bisa masuk 4 Bungkus, termasuk tambahan packing. \n						<br>\n						Kami sudah menyediakan packing BUBLE WRAP GRATIS. Sehingga tidak perlu khawatir lagi terhadap benturan ketika berada di ekspedisi.\n						<br>\n						<br>\n						Jika memesan lebih dari 8 Pack, kami akan memberikan packing tambahan berupa DUS tambahan. \n						<br>\n						Silakan diskusi dulu sebelum membeli.\n						<br>\n						<br>\n						Note:\n						<br>\n						<br>\n						1) Pastikan tanya stok terlebih dahulu untuk pemesanan banyak. Stok di toko merupakan stok real yang diupdate tiap jam 8 Pagi.\n						<br>\n						2) Waktu produksi Hari Selasa, Kamis, dan Sabtu. \n						<br>\n						3) Setelah konfirmasi pembayaran diterima paling lambat jam 4 maka pengiriman akan dilakukan di hari yang sama (Jika stok tersedia).\n						<br>\n						4) Jika stok TIDAK TERSEDIA tapi masih ada tenggat waktu untuk mengejar jadwal produksi, maka pengiriman akan dilakukan segera setelah proses produksi selesai.\n						<br>\n						5) Untuk pengiriman hari sabtu paling lambat jam 1 siang untuk pengiriman di hari yang sama. \n						<br>\n						6) Pengiriman Senin-Minggu.\n						<br>\n						7) Keterlambatan pengiriman karena agen pengiriman yang tutup/libur/trouble diluar tanggungjawab kami. \n						<br>\n						8) Pengiriman Rolciz dalam keadaan utuh/tidak hancur. Apabila barang sampai di konsumen dalam keadaan rusak/hancur,ada kemungkinan dalam proses pengiriman barang tersebut tidak ditangani dengan baik oleh pihak ekspedisi/kurir maka itu di luar tanggung jawab kami.\n						<br>\n						9) Diutamakan menggunakan paket yang paling cepat.\n						<br>\n						10) Belum bisa menggunakan GoJek.\n						<br>\n						11) Aturan dan batas waktu pengiriman tunduk dan sesuai dengan persyaratan marketplace.\n						<br>', 10000, 15000, 10000, 0, 0, NULL, '', 2017, NULL, NULL, 'Original', 'Keju ASLI, tepung terigu, dan gula pasir.', 250, 0, 0, 1, 1, 1, 3, 'http://jangiman.local/media/produk/rolciz-original.jpg', 'http://jangiman.local/media/produk/thumb/rolciz-original.jpg', '3.0', '2.0', 0, 0, '0.00', 0, 'Keju gulung', '123123123', '', '', '', 'Keju Gulung', 'Cemilan berbahan keju gulung asli dengan rasa asin manis teredia berbagai macam pilihan rasa.', NULL),
(2, NULL, 2, 1, 'utama', 'makanan', 'FZRC.PK.GRFS02OR', 'Kerupuk Gurilem Gorealem Rasa Original', 'gorealem-original', 'Kerupuk gurilem mainstream tapi dengan rasa yang LUARBIASA. Seperti namanya \"Gorealem\", ini memang enak sebagai teman diperjalanan. Bukan hanya itu, ini makanan yang paling asik untuk dimakan rame-rame. Tersedia rasa Biasa dan Pedas.', 'Gorealem Kerupuk Gurilem \n\nGorealem merupakan makanan ringan yang bisa di cemil ramai-ramai. \nKemasan 1 Standing Pouch berisi 15 Pcs Rolciz. \n\nKomposisi \nTepung tapioka, bawang, cabai, garam, dan penyedap rasa. \nGorealem tahan sampai 14 Hari dari waktu produksi. \nKerupuk Gurilem yang ditaburi dengan bumbu khas gorealem yang membuat kerupuk ini jadi ada dua rasa biasa dan pedas. \n\nPacking \nDikarenakan Gurilem ini sangat ringan, maka packing dihitung volume, sehingga beratnya dilebihkan. \nBerat ASLI 50 Gram. \n1 Kg bisa masuk 4 Bungkus, termasuk tambahan packing. \nKami sudah menyediakan packing BUBLE WRAP GRATIS. Sehingga tidak perlu khawatir lagi terhadap benturan ketika berada di ekspedisi. \n\nJika memesan lebih dari 8 Pack, kami akan memberikan packing tambahan berupa DUS tambahan. \nSilakan diskusi dulu sebelum membeli. \n\nNote: \n\n1) Pastikan tanya stok terlebih dahulu untuk pemesanan banyak. Stok di toko merupakan stok real yang diupdate tiap jam 8 Pagi. \n2) Waktu produksi Hari Selasa, Kamis, dan Sabtu. \n3) Setelah konfirmasi pembayaran diterima paling lambat jam 4 maka pengiriman akan dilakukan di hari yang sama (Jika stok tersedia). \n4) Jika stok TIDAK TERSEDIA tapi masih ada tenggat waktu untuk mengejar jadwal produksi, maka pengiriman akan dilakukan segera setelah proses produksi selesai. \n5) Untuk pengiriman hari sabtu paling lambat jam 1 siang untuk pengiriman di hari yang sama. \n6) Pengiriman Senin-Minggu. \n7) Keterlambatan pengiriman karena agen pengiriman yang tutup/libur/trouble diluar tanggungjawab kami. \n8) Pengiriman Rolciz dalam keadaan utuh/tidak hancur. Apabila barang sampai di konsumen dalam keadaan rusak/hancur,ada kemungkinan dalam proses pengiriman barang tersebut tidak ditangani dengan baik oleh pihak ekspedisi/kurir maka itu di luar tanggung jawab kami. \n9) Diutamakan menggunakan paket yang paling cepat. \n10) Belum bisa menggunakan GoJek. \n11) Aturan dan batas waktu pengiriman tunduk dan sesuai dengan persyaratan marketplace. ', 3500, 5000, 3500, 0, 0, NULL, '', 2017, NULL, NULL, 'Original', 'Tepung tapioka, bawang, cabai, garam, dan penyedap rasa. ', 20, 0, 0, 1, 1, 1, 3, 'http://jangiman.local/media/produk/gorealem-kerupuk-gurilem-rasa-biasa.jpg', 'http://jangiman.local/media/produk/thumb/gorealem-kerupuk-gurilem-rasa-biasa.jpg', '0.0', '0.0', 0, 0, '0.00', 0, 'Cemilan Asin', '', '', '', '', 'Kerupuk Gurilem', 'Kerupuk gurilem original yang mainstream tapi bikin kangen, coba dulu deh baru beli lagi', NULL),
(3, NULL, 2, 1, 'utama', 'makanan', 'FZRC.PK.GRFS02PD', 'Kerupuk Gurilem Gorealem Rasa Pedas', 'gorealem-pedas', '<ul>\r\n<li>Jenis Makanan: <strong>Cemilan Pedas</strong></li>\r\n<li>Komposisi: <strong>Tepung tapioka, bawang, cabai, garam, dan penyedap rasa</strong></li>\r\n<li>Berat: <strong>100gr (packing)</strong></li>\r\n</ul>', 'Gorealem Kerupuk Gurilem \n\nGorealem merupakan makanan ringan yang bisa di cemil ramai-ramai. \nKemasan 1 Standing Pouch berisi 15 Pcs Rolciz. \n\nKomposisi \nTepung tapioka, bawang, cabai, garam, dan penyedap rasa. \nGorealem tahan sampai 14 Hari dari waktu produksi. \nKerupuk Gurilem yang ditaburi dengan bumbu khas gorealem yang membuat kerupuk ini jadi ada dua rasa biasa dan pedas. \n\nPacking \nDikarenakan Gurilem ini sangat ringan, maka packing dihitung volume, sehingga beratnya dilebihkan. \nBerat ASLI 50 Gram. \n1 Kg bisa masuk 4 Bungkus, termasuk tambahan packing. \nKami sudah menyediakan packing BUBLE WRAP GRATIS. Sehingga tidak perlu khawatir lagi terhadap benturan ketika berada di ekspedisi. \n\nJika memesan lebih dari 8 Pack, kami akan memberikan packing tambahan berupa DUS tambahan. \nSilakan diskusi dulu sebelum membeli. \n\nNote: \n\n1) Pastikan tanya stok terlebih dahulu untuk pemesanan banyak. Stok di toko merupakan stok real yang diupdate tiap jam 8 Pagi. \n2) Waktu produksi Hari Selasa, Kamis, dan Sabtu. \n3) Setelah konfirmasi pembayaran diterima paling lambat jam 4 maka pengiriman akan dilakukan di hari yang sama (Jika stok tersedia). \n4) Jika stok TIDAK TERSEDIA tapi masih ada tenggat waktu untuk mengejar jadwal produksi, maka pengiriman akan dilakukan segera setelah proses produksi selesai. \n5) Untuk pengiriman hari sabtu paling lambat jam 1 siang untuk pengiriman di hari yang sama. \n6) Pengiriman Senin-Minggu. \n7) Keterlambatan pengiriman karena agen pengiriman yang tutup/libur/trouble diluar tanggungjawab kami. \n8) Pengiriman Rolciz dalam keadaan utuh/tidak hancur. Apabila barang sampai di konsumen dalam keadaan rusak/hancur,ada kemungkinan dalam proses pengiriman barang tersebut tidak ditangani dengan baik oleh pihak ekspedisi/kurir maka itu di luar tanggung jawab kami. \n9) Diutamakan menggunakan paket yang paling cepat. \n10) Belum bisa menggunakan GoJek. \n11) Aturan dan batas waktu pengiriman tunduk dan sesuai dengan persyaratan marketplace. ', 3500, 5000, 3500, 0, 0, '2017-12-31 00:00:00', 'Beli 10 Gratis 1', 2017, NULL, NULL, 'Original', 'Tepung tapioka, bawang, cabai, garam, dan penyedap rasa. ', 20, 0, 0, 1, 1, 1, 3, 'http://jangiman.local/media/produk/gorealem-kerupuk-gurilem-rasa-pedas.jpg', 'http://jangiman.local/media/produk/thumb/gorealem-kerupuk-gurilem-rasa-pedas.jpg', '0.0', '0.0', 0, 0, '0.00', 0, 'Cemilan Pedas', '', '', '', '', 'Gurilem Pedas', 'Kerupuk gurilem pedas mainstream tapi ngangenin, cocok buat moodbooster', NULL),
(4, NULL, 2, 1, 'utama', 'makanan', 'FZRC.PK.KCFS02OR', 'Kurupuk Cireng Ma Upin Original', 'kurupuk-cireng-original', 'Satu cemilan yang enak untuk dimakan, berbahan dasar tepung tapioka tapi digoreng kering sehingga menjadi kerupuk dengan rasa asin yang pas. Bisa jadi teman perjalanan juga sebagai cemilan disaat santai ataupun di kantor.', 'Kucir Ma Upin \r\n\r\nBerbahan dasar tepung tapioka tapi digoreng kering sehingga menjadi kerupuk dengan rasa asin yang pas. \r\nKemasan 1 Standing Pouch berisi 15 Pcs Rolciz. \r\n\r\nKomposisi \r\nTepung tapioka, bawang, cabai, garam, dan penyedap rasa. \r\nKucir Ma Upin tahan sampai 14 Hari dari waktu produksi. \r\nKucir Ma Upin memiliki tekstur yang renyah asin cocok untuk dijadikan cemilan ataupun teman makan. \r\n\r\nPacking \r\nDikarenakan Gurilem ini sangat ringan, maka packing dihitung volume, sehingga beratnya dilebihkan. \r\nBerat ASLI 100 Gram. \r\n1 Kg bisa masuk 4 Bungkus, termasuk tambahan packing. \r\nKami sudah menyediakan packing BUBLE WRAP GRATIS. Sehingga tidak perlu khawatir lagi terhadap benturan ketika berada di ekspedisi. \r\n\r\nJika memesan lebih dari 8 Pack, kami akan memberikan packing tambahan berupa DUS tambahan. \r\nSilakan diskusi dulu sebelum membeli. \r\n\r\nNote: \r\n\r\n1) Pastikan tanya stok terlebih dahulu untuk pemesanan banyak. Stok di toko merupakan stok real yang diupdate tiap jam 8 Pagi. \r\n2) Waktu produksi Hari Selasa, Kamis, dan Sabtu. \r\n3) Setelah konfirmasi pembayaran diterima paling lambat jam 4 maka pengiriman akan dilakukan di hari yang sama (Jika stok tersedia). \r\n4) Jika stok TIDAK TERSEDIA tapi masih ada tenggat waktu untuk mengejar jadwal produksi, maka pengiriman akan dilakukan segera setelah proses produksi selesai. \r\n5) Untuk pengiriman hari sabtu paling lambat jam 1 siang untuk pengiriman di hari yang sama. \r\n6) Pengiriman Senin-Minggu. \r\n7) Keterlambatan pengiriman karena agen pengiriman yang tutup/libur/trouble diluar tanggungjawab kami. \r\n8) Pengiriman Rolciz dalam keadaan utuh/tidak hancur. Apabila barang sampai di konsumen dalam keadaan rusak/hancur,ada kemungkinan dalam proses pengiriman barang tersebut tidak ditangani dengan baik oleh pihak ekspedisi/kurir maka itu di luar tanggung jawab kami. \r\n9) Diutamakan menggunakan paket yang paling cepat. \r\n10) Belum bisa menggunakan GoJek. \r\n11) Aturan dan batas waktu pengiriman tunduk dan sesuai dengan persyaratan marketplace. ', 4500, 7500, 4500, 0, 0, NULL, '', 2017, NULL, NULL, 'Original', 'Tepung tapioka, bawang, cabai, garam, dan penyedap rasa. ', 20, 0, 0, 1, 1, 1, 3, 'http://jangiman.local/media/produk/kucir-kurupuk-cireng.jpg', 'http://jangiman.local/media/produk/thumb/kucir-kurupuk-cireng.jpg', '0.0', '0.0', 0, 0, '0.00', 0, 'Cemilan Asin', '', '', 'mui', '', 'kerupuk', 'Inovasi baru cireng yang dibuat kerupuk, coba dulu buktikan enaknya', NULL),
(5, NULL, 2, 1, 'utama', 'makanan', 'FZRC.PQ.RCBS01OR', 'Rolciz Keju Gulung Cokelat Oreo Standing Pouch 15Pcs', 'rolciz-cokelat-oreo', 'Cemilan dengan rasa yang manis cokelat oreo, berisi 15 pcs Rolciz terbaik yang bisa menemani kamu disaat santai, nongkrong bahkan di perjalanan. Berbahan dasar keju original yang membuat kamu ketagihan. Tersedia juga beberapa varian rasa seperti cokelat oreo, greentea, strawberry, dan taro.', '						Keju Gulung Rolciz\r\n						<br>\r\n						<br>\r\n						Rolciz merupakan makanan ringan yang bisa di cemil ramai-ramai.\r\n						<br>\r\n						Kemasan 1 Standing Pouch berisi 15 Pcs Rolciz.\r\n						<br>\r\n						<br>\r\n						Komposisi\r\n						<br>\r\n						Terbuat dari Keju ASLI, tepung terigu, gula, dan biskuit Oreo pasir dibuat tanpa bahan pengawet. \r\n						<br>\r\n						Rolciz tahan sampai 10 Hari dari waktu produksi.\r\n						<br>\r\n						Rolciz memiliki tekstur yang renyah diluar kemudian padat keju didalam dengan rasa manis ditambah asin keju.\r\n						<br>\r\n						<br>\r\n						\r\n						\r\n						Packing\r\n						<br>\r\n						Dikarenakan Rolciz ini sangat ringan, maka packing dihitung volume, sehingga beratnya dilebihkan.\r\n						<br>\r\n						Berat ASLI 200 Gram.\r\n						<br>\r\n						1 Kg bisa masuk 4 Bungkus, termasuk tambahan packing. \r\n						<br>\r\n						Kami sudah menyediakan packing BUBLE WRAP GRATIS. Sehingga tidak perlu khawatir lagi terhadap benturan ketika berada di ekspedisi.\r\n						<br>\r\n						<br>\r\n						Jika memesan lebih dari 8 Pack, kami akan memberikan packing tambahan berupa DUS tambahan. \r\n						<br>\r\n						Silakan diskusi dulu sebelum membeli.\r\n						<br>\r\n						<br>\r\n						Note:\r\n						<br>\r\n						<br>\r\n						1) Pastikan tanya stok terlebih dahulu untuk pemesanan banyak. Stok di toko merupakan stok real yang diupdate tiap jam 8 Pagi.\r\n						<br>\r\n						2) Waktu produksi Hari Selasa, Kamis, dan Sabtu. \r\n						<br>\r\n						3) Setelah konfirmasi pembayaran diterima paling lambat jam 4 maka pengiriman akan dilakukan di hari yang sama (Jika stok tersedia).\r\n						<br>\r\n						4) Jika stok TIDAK TERSEDIA tapi masih ada tenggat waktu untuk mengejar jadwal produksi, maka pengiriman akan dilakukan segera setelah proses produksi selesai.\r\n						<br>\r\n						5) Untuk pengiriman hari sabtu paling lambat jam 1 siang untuk pengiriman di hari yang sama. \r\n						<br>\r\n						6) Pengiriman Senin-Minggu.\r\n						<br>\r\n						7) Keterlambatan pengiriman karena agen pengiriman yang tutup/libur/trouble diluar tanggungjawab kami. \r\n						<br>\r\n						8) Pengiriman Rolciz dalam keadaan utuh/tidak hancur. Apabila barang sampai di konsumen dalam keadaan rusak/hancur,ada kemungkinan dalam proses pengiriman barang tersebut tidak ditangani dengan baik oleh pihak ekspedisi/kurir maka itu di luar tanggung jawab kami.\r\n						<br>\r\n						9) Diutamakan menggunakan paket yang paling cepat.\r\n						<br>\r\n						10) Belum bisa menggunakan GoJek.\r\n						<br>\r\n						11) Aturan dan batas waktu pengiriman tunduk dan sesuai dengan persyaratan marketplace.\r\n						<br>', 17000, 20000, 17000, 0, 0, NULL, '', 2017, NULL, NULL, 'Cokelat Oreo', 'Keju ASLI, tepung terigu, gula pasir dan biskuit Oreo', 250, 0, 0, 1, 1, 1, 3, 'http://jangiman.local/media/produk/rolciz-original.jpg', 'http://jangiman.local/media/produk/thumb/rolciz-original.jpg', '3.0', '2.0', 0, 0, '0.00', 0, 'Keju gulung', '', '', '', '', 'Keju Gulung', 'Cemilan berbahan keju gulung asli dengan rasa asin manis teredia berbagai macam pilihan rasa.', NULL),
(6, NULL, 2, 1, 'utama', 'makanan', 'FZRC.PQ.RCBS01OR', 'Rolciz Keju Gulung Green Tea Standing Pouch 15Pcs', 'rolciz-greentea', 'Cemilan dengan rasa yang manis green tea, berisi 15 pcs Rolciz terbaik yang bisa menemani kamu disaat santai, nongkrong bahkan di perjalanan. Berbahan dasar keju original yang membuat kamu ketagihan. Tersedia juga beberapa varian rasa seperti cokelat oreo, greentea, strawberry, dan taro.', '						Keju Gulung Rolciz\r\n						<br>\r\n						<br>\r\n						Rolciz merupakan makanan ringan yang bisa di cemil ramai-ramai.\r\n						<br>\r\n						Kemasan 1 Standing Pouch berisi 15 Pcs Rolciz.\r\n						<br>\r\n						<br>\r\n						Komposisi\r\n						<br>\r\n						Terbuat dari Keju ASLI, tepung terigu, gula, dan perisa green tea pasir dibuat tanpa bahan pengawet. \r\n						<br>\r\n						Rolciz tahan sampai 10 Hari dari waktu produksi.\r\n						<br>\r\n						Rolciz memiliki tekstur yang renyah diluar kemudian padat keju didalam dengan rasa manis ditambah asin keju.\r\n						<br>\r\n						<br>\r\n						\r\n						\r\n						Packing\r\n						<br>\r\n						Dikarenakan Rolciz ini sangat ringan, maka packing dihitung volume, sehingga beratnya dilebihkan.\r\n						<br>\r\n						Berat ASLI 200 Gram.\r\n						<br>\r\n						1 Kg bisa masuk 4 Bungkus, termasuk tambahan packing. \r\n						<br>\r\n						Kami sudah menyediakan packing BUBLE WRAP GRATIS. Sehingga tidak perlu khawatir lagi terhadap benturan ketika berada di ekspedisi.\r\n						<br>\r\n						<br>\r\n						Jika memesan lebih dari 8 Pack, kami akan memberikan packing tambahan berupa DUS tambahan. \r\n						<br>\r\n						Silakan diskusi dulu sebelum membeli.\r\n						<br>\r\n						<br>\r\n						Note:\r\n						<br>\r\n						<br>\r\n						1) Pastikan tanya stok terlebih dahulu untuk pemesanan banyak. Stok di toko merupakan stok real yang diupdate tiap jam 8 Pagi.\r\n						<br>\r\n						2) Waktu produksi Hari Selasa, Kamis, dan Sabtu. \r\n						<br>\r\n						3) Setelah konfirmasi pembayaran diterima paling lambat jam 4 maka pengiriman akan dilakukan di hari yang sama (Jika stok tersedia).\r\n						<br>\r\n						4) Jika stok TIDAK TERSEDIA tapi masih ada tenggat waktu untuk mengejar jadwal produksi, maka pengiriman akan dilakukan segera setelah proses produksi selesai.\r\n						<br>\r\n						5) Untuk pengiriman hari sabtu paling lambat jam 1 siang untuk pengiriman di hari yang sama. \r\n						<br>\r\n						6) Pengiriman Senin-Minggu.\r\n						<br>\r\n						7) Keterlambatan pengiriman karena agen pengiriman yang tutup/libur/trouble diluar tanggungjawab kami. \r\n						<br>\r\n						8) Pengiriman Rolciz dalam keadaan utuh/tidak hancur. Apabila barang sampai di konsumen dalam keadaan rusak/hancur,ada kemungkinan dalam proses pengiriman barang tersebut tidak ditangani dengan baik oleh pihak ekspedisi/kurir maka itu di luar tanggung jawab kami.\r\n						<br>\r\n						9) Diutamakan menggunakan paket yang paling cepat.\r\n						<br>\r\n						10) Belum bisa menggunakan GoJek.\r\n						<br>\r\n						11) Aturan dan batas waktu pengiriman tunduk dan sesuai dengan persyaratan marketplace.\r\n						<br>', 17000, 20000, 17000, 0, 0, NULL, '', 2017, NULL, NULL, 'Cokelat Oreo', 'Keju ASLI, tepung terigu, gula pasir dan perisa green tea', 250, 0, 0, 1, 1, 1, 3, 'http://jangiman.local/media/produk/rolciz-original.jpg', 'http://jangiman.local/media/produk/thumb/rolciz-original.jpg', '3.0', '2.0', 0, 0, '0.00', 0, 'Keju gulung', '', '', '', '', 'Keju Gulung', 'Cemilan berbahan keju gulung asli dengan rasa asin manis teredia berbagai macam pilihan rasa.', NULL),
(7, NULL, 2, 1, 'utama', 'makanan', 'FZRC.PQ.RCBS01OR', 'Rolciz Keju Gulung Taro Standing Pouch 15Pcs', 'rolciz-taro', 'Cemilan dengan rasa yang manis taro, berisi 15 pcs Rolciz terbaik yang bisa menemani kamu disaat santai, nongkrong bahkan di perjalanan. Berbahan dasar keju original yang membuat kamu ketagihan. Tersedia juga beberapa varian rasa seperti cokelat oreo, greentea, strawberry, dan taro.', '						Keju Gulung Rolciz\r\n						<br>\r\n						<br>\r\n						Rolciz merupakan makanan ringan yang bisa di cemil ramai-ramai.\r\n						<br>\r\n						Kemasan 1 Standing Pouch berisi 15 Pcs Rolciz.\r\n						<br>\r\n						<br>\r\n						Komposisi\r\n						<br>\r\n						Terbuat dari Keju ASLI, tepung terigu, gula, dan perisa taro pasir dibuat tanpa bahan pengawet. \r\n						<br>\r\n						Rolciz tahan sampai 10 Hari dari waktu produksi.\r\n						<br>\r\n						Rolciz memiliki tekstur yang renyah diluar kemudian padat keju didalam dengan rasa manis ditambah asin keju.\r\n						<br>\r\n						<br>\r\n						\r\n						\r\n						Packing\r\n						<br>\r\n						Dikarenakan Rolciz ini sangat ringan, maka packing dihitung volume, sehingga beratnya dilebihkan.\r\n						<br>\r\n						Berat ASLI 200 Gram.\r\n						<br>\r\n						1 Kg bisa masuk 4 Bungkus, termasuk tambahan packing. \r\n						<br>\r\n						Kami sudah menyediakan packing BUBLE WRAP GRATIS. Sehingga tidak perlu khawatir lagi terhadap benturan ketika berada di ekspedisi.\r\n						<br>\r\n						<br>\r\n						Jika memesan lebih dari 8 Pack, kami akan memberikan packing tambahan berupa DUS tambahan. \r\n						<br>\r\n						Silakan diskusi dulu sebelum membeli.\r\n						<br>\r\n						<br>\r\n						Note:\r\n						<br>\r\n						<br>\r\n						1) Pastikan tanya stok terlebih dahulu untuk pemesanan banyak. Stok di toko merupakan stok real yang diupdate tiap jam 8 Pagi.\r\n						<br>\r\n						2) Waktu produksi Hari Selasa, Kamis, dan Sabtu. \r\n						<br>\r\n						3) Setelah konfirmasi pembayaran diterima paling lambat jam 4 maka pengiriman akan dilakukan di hari yang sama (Jika stok tersedia).\r\n						<br>\r\n						4) Jika stok TIDAK TERSEDIA tapi masih ada tenggat waktu untuk mengejar jadwal produksi, maka pengiriman akan dilakukan segera setelah proses produksi selesai.\r\n						<br>\r\n						5) Untuk pengiriman hari sabtu paling lambat jam 1 siang untuk pengiriman di hari yang sama. \r\n						<br>\r\n						6) Pengiriman Senin-Minggu.\r\n						<br>\r\n						7) Keterlambatan pengiriman karena agen pengiriman yang tutup/libur/trouble diluar tanggungjawab kami. \r\n						<br>\r\n						8) Pengiriman Rolciz dalam keadaan utuh/tidak hancur. Apabila barang sampai di konsumen dalam keadaan rusak/hancur,ada kemungkinan dalam proses pengiriman barang tersebut tidak ditangani dengan baik oleh pihak ekspedisi/kurir maka itu di luar tanggung jawab kami.\r\n						<br>\r\n						9) Diutamakan menggunakan paket yang paling cepat.\r\n						<br>\r\n						10) Belum bisa menggunakan GoJek.\r\n						<br>\r\n						11) Aturan dan batas waktu pengiriman tunduk dan sesuai dengan persyaratan marketplace.\r\n						<br>', 17000, 20000, 17000, 0, 0, NULL, '', 2017, NULL, NULL, 'Cokelat Oreo', 'Keju ASLI, tepung terigu, gula pasir dan perisa taro', 250, 0, 0, 1, 1, 1, 3, 'http://jangiman.local/media/produk/rolciz-original.jpg', 'http://jangiman.local/media/produk/thumb/rolciz-original.jpg', '3.0', '2.0', 0, 0, '0.00', 0, 'Keju gulung', '', '231231231231', '', '', 'Keju Gulung', 'Cemilan berbahan keju gulung asli dengan rasa asin manis teredia berbagai macam pilihan rasa.', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_produksi`
--

CREATE TABLE `c_produksi` (
  `id` int(11) NOT NULL,
  `b_rencana_id` int(11) NOT NULL,
  `b_barang_id` int(11) NOT NULL,
  `date_mulai` datetime NOT NULL,
  `date_selesai` datetime DEFAULT NULL,
  `kode` varchar(16) NOT NULL,
  `qty_target` decimal(6,2) NOT NULL DEFAULT '1.00',
  `satuan_target` varchar(78) NOT NULL DEFAULT 'Pcs',
  `qty_selesai` decimal(6,2) NOT NULL DEFAULT '1.00',
  `satuan_selesai` varchar(78) NOT NULL DEFAULT 'Pcs',
  `c_barang_id_selesai` int(11) DEFAULT NULL COMMENT 'mengambil dari b_barang_id',
  `c_barang_sku_selesai` varchar(32) DEFAULT NULL COMMENT 'mengambil dari b_barang_sku'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel produksi';

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_produksi_kegiatan`
--

CREATE TABLE `c_produksi_kegiatan` (
  `id` int(11) NOT NULL,
  `c_produksi_id` int(11) NOT NULL,
  `b_rencana_id` int(11) NOT NULL,
  `b_rencana_material_id` int(11) NOT NULL,
  `a_jenis_id` int(11) NOT NULL,
  `b_barang_id` int(11) NOT NULL,
  `qty_target` decimal(6,2) NOT NULL,
  `satuan_target` varchar(78) NOT NULL DEFAULT 'Pcs',
  `qty_selesai` decimal(6,2) DEFAULT '1.00',
  `satuan_selesai` varchar(78) NOT NULL DEFAULT 'Pcs',
  `date_siap` datetime DEFAULT NULL,
  `date_mulai` datetime DEFAULT NULL,
  `date_selesai` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='kegiatan produksi pengolahan material';

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_produksi_kegiatan_karyawan`
--

CREATE TABLE `c_produksi_kegiatan_karyawan` (
  `id` int(11) NOT NULL,
  `c_produksi_kegiatan_id` int(11) NOT NULL,
  `b_karyawan_id` int(11) NOT NULL,
  `a_pekerjaan_id` int(11) DEFAULT NULL,
  `upah_dasar` float NOT NULL DEFAULT '0',
  `qty_target` decimal(6,2) NOT NULL DEFAULT '0.00',
  `satuan_target` varchar(78) NOT NULL DEFAULT 'Pcs',
  `upah_target` float NOT NULL COMMENT 'upah dasar dikali qty target',
  `qty_selesai` decimal(6,2) NOT NULL,
  `satuan_selesai` varchar(78) NOT NULL DEFAULT 'Pcs',
  `upah_selesai` float NOT NULL COMMENT 'qty selesai dikali upah dasar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='kegiatan Karyawan';

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_produk_foto`
--

CREATE TABLE `c_produk_foto` (
  `id` int(11) NOT NULL,
  `c_produk_id` int(11) NOT NULL,
  `foto_1` text NOT NULL,
  `thumb_1` text NOT NULL,
  `foto_2` text NOT NULL,
  `thumb_2` text NOT NULL,
  `foto_3` text NOT NULL,
  `thumb_3` text NOT NULL,
  `foto_4` text NOT NULL,
  `thumb_4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='untuk foto produk';

--
-- Dumping data untuk tabel `c_produk_foto`
--

INSERT INTO `c_produk_foto` (`id`, `c_produk_id`, `foto_1`, `thumb_1`, `foto_2`, `thumb_2`, `foto_3`, `thumb_3`, `foto_4`, `thumb_4`) VALUES
(1, 1, 'http://jangiman.local/media/produk/rolciz-original.jpg', 'http://jangiman.local/media/produk/thumb/rolciz-original.jpg', 'http://jangiman.local/media/produk/rolciz-saran-penyajian-kopi-kayu-2.jpg', 'http://jangiman.local/media/produk/thumb/rolciz-saran-penyajian-kopi-kayu-2.jpg', 'http://jangiman.local/media/produk/rolciz-saran-penyajian-kopi-top.jpg', 'http://jangiman.local/media/produk/thumb/rolciz-saran-penyajian-kopi-top.jpg', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_order`
--

CREATE TABLE `d_order` (
  `id` int(11) NOT NULL,
  `a_toko_id` int(11) DEFAULT NULL COMMENT 'jika terjadi pembelian di toko',
  `b_user_id` int(11) DEFAULT NULL,
  `b_user_store_id` int(11) DEFAULT NULL COMMENT 'untuk toko dropshipper',
  `utype` enum('cart','cart_abandoned','order_konfirmasi','order_konfirmasi_sudah','order_cekstok','order_pembelian','order_store','order_qc','order_packing','order_kirim','order_selesai','order_batal','order_pending','order_retur') NOT NULL DEFAULT 'cart',
  `date_cart` datetime NOT NULL,
  `date_order_konfirmasi` datetime NOT NULL,
  `date_order_konfirmasi_sudah` datetime NOT NULL,
  `date_order_konfirmasi_auto` datetime NOT NULL,
  `date_order_pembelian` datetime NOT NULL,
  `date_store` datetime NOT NULL,
  `date_order_qc` datetime DEFAULT NULL,
  `date_order_packing` datetime DEFAULT NULL,
  `date_order_kirim` datetime DEFAULT NULL,
  `date_order_batal` datetime DEFAULT NULL,
  `date_order_pending` datetime DEFAULT NULL,
  `date_credit_return` datetime DEFAULT NULL,
  `date_credit_wait` datetime DEFAULT NULL,
  `date_credit_terima` datetime DEFAULT NULL,
  `date_credit_refund` datetime DEFAULT NULL,
  `pengirim_logo` varchar(255) NOT NULL COMMENT 'diambil dari logo toko user',
  `pengirim_nama` varchar(255) NOT NULL COMMENT 'ini diambil dari nama toko',
  `pengirim_telp` varchar(32) NOT NULL,
  `pengirim_alamat` varchar(255) NOT NULL,
  `pengirim_kelurahan` varchar(150) NOT NULL,
  `pengirim_kecamatan` varchar(150) NOT NULL,
  `pengirim_kabkota` varchar(150) NOT NULL,
  `pengirim_provinsi` varchar(150) NOT NULL,
  `pengirim_negara` varchar(150) NOT NULL,
  `penerima_nama` varchar(255) NOT NULL,
  `penerima_telp` varchar(32) NOT NULL,
  `penerima_alamat` varchar(255) NOT NULL,
  `penerima_kelurahan` varchar(150) NOT NULL,
  `penerima_kecamatan` varchar(150) NOT NULL,
  `penerima_kabkota` varchar(150) NOT NULL,
  `penerima_provinsi` varchar(150) NOT NULL,
  `penerima_negara` varchar(150) NOT NULL DEFAULT 'ID',
  `foto_transfer` varchar(255) DEFAULT '',
  `foto_qc` varchar(255) NOT NULL DEFAULT '',
  `foto_packing` varchar(255) NOT NULL DEFAULT '',
  `foto_resi` varchar(255) NOT NULL DEFAULT '',
  `kurir` varchar(255) NOT NULL DEFAULT 'WAHANA' COMMENT 'nama layanan kurir, contoh JNE REG',
  `noresi` varchar(255) NOT NULL COMMENT 'nomor resi',
  `item_total` int(11) NOT NULL COMMENT 'jumlah satuan dalam pcs',
  `berat_total` int(11) NOT NULL COMMENT 'satuan gram',
  `ongkir` int(11) NOT NULL COMMENT 'dalam RP',
  `biaya_admin` int(11) NOT NULL COMMENT 'dalam RP',
  `sub_total` int(11) NOT NULL COMMENT 'jumlah total semua produk yang dibeli DIKURANGI diskon per produk dalam RP',
  `diskon_total` float NOT NULL COMMENT 'dalam RP',
  `faktor_kodeunik` int(5) NOT NULL COMMENT 'kode unik untuk auto konfirm order bisa 3-4 digit',
  `grand_total` float NOT NULL COMMENT 'dalam RP',
  `credit_item` int(11) NOT NULL,
  `credit_return` float NOT NULL COMMENT 'nominal yang dibayarkan ke vendor / gudang',
  `credit_refund` float NOT NULL COMMENT 'nominal yang dibayarkan ke customer',
  `credit_reason` varchar(255) NOT NULL,
  `is_order_sub` int(1) NOT NULL DEFAULT '0' COMMENT '1 sub_order relasi',
  `is_hidden` int(1) NOT NULL DEFAULT '0',
  `is_offline` int(1) NOT NULL DEFAULT '0',
  `d_order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabel cart n order';

--
-- Dumping data untuk tabel `d_order`
--

INSERT INTO `d_order` (`id`, `a_toko_id`, `b_user_id`, `b_user_store_id`, `utype`, `date_cart`, `date_order_konfirmasi`, `date_order_konfirmasi_sudah`, `date_order_konfirmasi_auto`, `date_order_pembelian`, `date_store`, `date_order_qc`, `date_order_packing`, `date_order_kirim`, `date_order_batal`, `date_order_pending`, `date_credit_return`, `date_credit_wait`, `date_credit_terima`, `date_credit_refund`, `pengirim_logo`, `pengirim_nama`, `pengirim_telp`, `pengirim_alamat`, `pengirim_kelurahan`, `pengirim_kecamatan`, `pengirim_kabkota`, `pengirim_provinsi`, `pengirim_negara`, `penerima_nama`, `penerima_telp`, `penerima_alamat`, `penerima_kelurahan`, `penerima_kecamatan`, `penerima_kabkota`, `penerima_provinsi`, `penerima_negara`, `foto_transfer`, `foto_qc`, `foto_packing`, `foto_resi`, `kurir`, `noresi`, `item_total`, `berat_total`, `ongkir`, `biaya_admin`, `sub_total`, `diskon_total`, `faktor_kodeunik`, `grand_total`, `credit_item`, `credit_return`, `credit_refund`, `credit_reason`, `is_order_sub`, `is_hidden`, `is_offline`, `d_order_id`) VALUES
(1, NULL, 1, NULL, 'cart', '2017-10-30 18:33:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ID', '', '', '', '', 'WAHANA', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_order_detail`
--

CREATE TABLE `d_order_detail` (
  `id` int(11) NOT NULL,
  `d_order_id` int(11) NOT NULL,
  `c_produk_id` int(11) NOT NULL,
  `ldate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'last update ',
  `sku` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `rasa` varchar(255) NOT NULL,
  `harga_asal` float NOT NULL COMMENT 'harga asal yang ada di table produk',
  `harga_jadi` float NOT NULL COMMENT 'harga yang diisi setelah diskon',
  `qty` int(11) NOT NULL,
  `berat` int(11) NOT NULL COMMENT 'berat dari produk di KALI QTY',
  `sub_total` int(11) NOT NULL COMMENT 'subtotal dari harga_jadi di KALI qty',
  `qty_return` int(11) NOT NULL COMMENT 'total qty yang direturn',
  `berat_return` int(11) NOT NULL COMMENT 'dalam gram yang direturn',
  `sub_total_return` float NOT NULL COMMENT 'nominal barang harga*qty',
  `kurir_return` varchar(100) NOT NULL COMMENT 'nama kurirnya',
  `noresi_return` varchar(255) NOT NULL COMMENT 'nomor resinya',
  `credit_catatan` varchar(255) NOT NULL COMMENT 'catatan',
  `is_returned` int(1) NOT NULL DEFAULT '0',
  `is_credit` int(1) NOT NULL DEFAULT '0',
  `order_status` varchar(255) NOT NULL DEFAULT '',
  `credit_status` varchar(255) NOT NULL DEFAULT '' COMMENT 'untuk proses retur'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='isinya produk yang dibeli, qty dan subtotalnya';

-- --------------------------------------------------------

--
-- Struktur dari tabel `e_pembelian`
--

CREATE TABLE `e_pembelian` (
  `id` int(11) NOT NULL,
  `a_vendor_id` int(11) NOT NULL,
  `a_pengguna_id` int(11) DEFAULT NULL COMMENT 'yang membeli',
  `a_gudang_id` int(11) NOT NULL COMMENT 'tujuan gudang',
  `d_order_id_last` int(11) NOT NULL COMMENT 'diambil dari id order terakhir',
  `kode` varchar(255) NOT NULL COMMENT 'nomor purchasing',
  `date_create` datetime NOT NULL,
  `date_pembelian` datetime DEFAULT NULL,
  `date_selesai` datetime DEFAULT NULL,
  `qty_order` int(11) NOT NULL,
  `sub_total_order` float NOT NULL,
  `qty_stok` int(11) NOT NULL DEFAULT '0',
  `sub_total_stok` float NOT NULL DEFAULT '0',
  `qty_beli` int(11) NOT NULL,
  `sub_total_beli` float NOT NULL,
  `qty_terima` int(11) NOT NULL,
  `sub_total_terima` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ini tabel master untuk pembelian utama';

-- --------------------------------------------------------

--
-- Struktur dari tabel `e_pembelian_produk`
--

CREATE TABLE `e_pembelian_produk` (
  `id` int(11) NOT NULL,
  `c_produk_id` int(11) NOT NULL,
  `a_pengguna_id` int(11) NOT NULL COMMENT 'yang menerima hasil pembelian',
  `qty_order` int(11) NOT NULL COMMENT 'jumlah qty dari order',
  `sub_total_order` float NOT NULL COMMENT 'diambil dari produk harga beli KALI qty_beli',
  `qty_stok` int(11) NOT NULL DEFAULT '0' COMMENT 'jika ada tambahan stok',
  `sub_total_stok` float NOT NULL DEFAULT '0' COMMENT 'diambil dari produk harga beli KALI qty_stok',
  `qty_beli` int(11) NOT NULL,
  `sub_total_beli` float NOT NULL,
  `qty_diterima` int(11) NOT NULL,
  `sub_total_diterima` float NOT NULL,
  `catatan_pembeli` varchar(255) NOT NULL,
  `catatan_penerima` varchar(255) NOT NULL,
  `untuk` text NOT NULL COMMENT 'alokasi produ dipisah pake; gudang-kode atau order-id',
  `date_diterima` datetime NOT NULL COMMENT 'waktu ketika di terima oleh gudang'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='list pembelian produk';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_config`
--
ALTER TABLE `a_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_gudang`
--
ALTER TABLE `a_gudang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gudang_kode` (`kode`);

--
-- Indexes for table `a_jenis`
--
ALTER TABLE `a_jenis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_a_jenis_kode` (`kode`);

--
-- Indexes for table `a_modules`
--
ALTER TABLE `a_modules`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `children_identifier` (`children_identifier`);

--
-- Indexes for table `a_pekerjaan`
--
ALTER TABLE `a_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_pengguna`
--
ALTER TABLE `a_pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a_pengguna_username_unq` (`username`);

--
-- Indexes for table `a_pengguna_module`
--
ALTER TABLE `a_pengguna_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fka_pengguna_id` (`a_pengguna_id`),
  ADD KEY `fka_modules_identifier` (`a_modules_identifier`);

--
-- Indexes for table `a_produkmeta`
--
ALTER TABLE `a_produkmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_satuan`
--
ALTER TABLE `a_satuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_a_satuan_nama` (`nama`),
  ADD KEY `fk_a_satuan_id_kali` (`a_satuan_id_kali`),
  ADD KEY `fk_a_satuan_id_bagi` (`a_satuan_id_bagi`);

--
-- Indexes for table `a_toko`
--
ALTER TABLE `a_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_a_toko_id` (`a_toko_id`);

--
-- Indexes for table `a_vendor`
--
ALTER TABLE `a_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_a_vendor_kode` (`kode`);

--
-- Indexes for table `a_vendor_pengguna`
--
ALTER TABLE `a_vendor_pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_a_vendor_id` (`a_vendor_id`),
  ADD KEY `fk_a_pengguna_id` (`a_pengguna_id`);

--
-- Indexes for table `b_barang`
--
ALTER TABLE `b_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_a_vendor_id` (`a_vendor_id`),
  ADD KEY `fk_a_pengguna_id` (`a_pengguna_id`),
  ADD KEY `idx_b_barang_id` (`b_barang_id`);

--
-- Indexes for table `b_barang_inventaris`
--
ALTER TABLE `b_barang_inventaris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_barang_id` (`b_barang_id`),
  ADD KEY `fk_b_karyawan_id` (`b_karyawan_id`);

--
-- Indexes for table `b_barang_toko`
--
ALTER TABLE `b_barang_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_barang_id` (`b_barang_id`),
  ADD KEY `idx_b_barang_toko_kode` (`kode`),
  ADD KEY `fk_a_toko_id` (`a_toko_id`);

--
-- Indexes for table `b_gudang_stok`
--
ALTER TABLE `b_gudang_stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_c_produk_id` (`c_produk_id`),
  ADD KEY `fk_b_user_id` (`a_pengguna_id`),
  ADD KEY `fk_a_gudang_id` (`a_gudang_id`);

--
-- Indexes for table `b_karyawan`
--
ALTER TABLE `b_karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_a_pengguna_id` (`a_pengguna_id`),
  ADD KEY `fk_b_karyawan_id` (`b_karyawan_id`);

--
-- Indexes for table `b_kategori`
--
ALTER TABLE `b_kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sfk_b_kategori_tag_id` (`b_kategori_id`);

--
-- Indexes for table `b_rencana`
--
ALTER TABLE `b_rencana`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_vendor_id` (`a_vendor_id`),
  ADD KEY `fk_b_barang_id` (`b_barang_id`),
  ADD KEY `idx_b_rencana_id` (`b_rencana_id`);

--
-- Indexes for table `b_rencana_kegiatan`
--
ALTER TABLE `b_rencana_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_rencana_id` (`b_rencana_id`),
  ADD KEY `fk_a_pekerjaan_id` (`a_pekerjaan_id`);

--
-- Indexes for table `b_rencana_material`
--
ALTER TABLE `b_rencana_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_rencana_id` (`b_rencana_id`),
  ADD KEY `fk_b_barang_id` (`b_barang_id`),
  ADD KEY `fk_a_jenis_id` (`a_jenis_id`);

--
-- Indexes for table `b_user`
--
ALTER TABLE `b_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_b_user_unq` (`email`),
  ADD KEY `idx_api_web_token` (`api_web_token`);

--
-- Indexes for table `b_user_alamat`
--
ALTER TABLE `b_user_alamat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_user_id` (`b_user_id`);

--
-- Indexes for table `b_user_store`
--
ALTER TABLE `b_user_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_user_id` (`b_user_id`);

--
-- Indexes for table `b_user_vendor`
--
ALTER TABLE `b_user_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_user_id` (`b_user_id`),
  ADD KEY `fk_a_vendor_id` (`a_vendor_id`);

--
-- Indexes for table `b_vendor_brand`
--
ALTER TABLE `b_vendor_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_kategori_tag_id` (`b_kategori_id`),
  ADD KEY `fk_a_vendor_id` (`a_vendor_id`);

--
-- Indexes for table `c_barang_inventory`
--
ALTER TABLE `c_barang_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_barang_id` (`b_barang_id`),
  ADD KEY `fk_a_pengguna_id` (`a_pengguna_id`),
  ADD KEY `fk_b_barang_inventory_id` (`c_barang_inventory_id`),
  ADD KEY `fk_a_toko_id` (`a_toko_id`),
  ADD KEY `fk_b_barang_toko_kode` (`b_barang_toko_kode`);

--
-- Indexes for table `c_pembelian`
--
ALTER TABLE `c_pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_karyawan_id` (`b_karyawan_id`),
  ADD KEY `fk_a_pekerjaan_id` (`a_pekerjaan_id`),
  ADD KEY `fk_a_toko_id` (`a_toko_id`),
  ADD KEY `fk_b_barang_id` (`kendaraan`);

--
-- Indexes for table `c_pembelian_material`
--
ALTER TABLE `c_pembelian_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_c_pembelian_id` (`c_pembelian_id`),
  ADD KEY `fk_b_barang_id` (`b_barang_id`),
  ADD KEY `fk_a_toko_id` (`a_toko_id`),
  ADD KEY `fk_b_karyawan_id` (`b_karyawan_id`);

--
-- Indexes for table `c_produk`
--
ALTER TABLE `c_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_a_pengguna_id` (`a_pengguna_id`),
  ADD KEY `fk_b_kategori_tag_id` (`b_kategori_id`),
  ADD KEY `ifk_c_produk_id` (`c_produk_id`),
  ADD KEY `fk_a_vendor_id` (`a_vendor_id`);

--
-- Indexes for table `c_produksi`
--
ALTER TABLE `c_produksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_rencana_id` (`b_rencana_id`),
  ADD KEY `b_barang_id` (`b_barang_id`),
  ADD KEY `fk_b_barang_id_2` (`c_barang_id_selesai`);

--
-- Indexes for table `c_produksi_kegiatan`
--
ALTER TABLE `c_produksi_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_c_produksi_id` (`c_produksi_id`),
  ADD KEY `fk_b_rencana_id` (`b_rencana_id`),
  ADD KEY `fk_b_rencana_material_id` (`b_rencana_material_id`),
  ADD KEY `fk_a_jenis_id` (`a_jenis_id`),
  ADD KEY `b_barang_id` (`b_barang_id`);

--
-- Indexes for table `c_produksi_kegiatan_karyawan`
--
ALTER TABLE `c_produksi_kegiatan_karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_c_produksi_kegiatan_id` (`c_produksi_kegiatan_id`),
  ADD KEY `fk_b_karyawan_id` (`b_karyawan_id`),
  ADD KEY `fk_a_pekerjaan_id` (`a_pekerjaan_id`);

--
-- Indexes for table `c_produk_foto`
--
ALTER TABLE `c_produk_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_c_produk_id` (`c_produk_id`);

--
-- Indexes for table `d_order`
--
ALTER TABLE `d_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_b_user_id` (`b_user_id`),
  ADD KEY `fk_b_user_store_id` (`b_user_store_id`),
  ADD KEY `ifk_d_order_id` (`d_order_id`),
  ADD KEY `fk_a_toko_id` (`a_toko_id`);

--
-- Indexes for table `d_order_detail`
--
ALTER TABLE `d_order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_d_order_id` (`d_order_id`),
  ADD KEY `fk_c_produk_id` (`c_produk_id`);

--
-- Indexes for table `e_pembelian`
--
ALTER TABLE `e_pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_a_vendor_id` (`a_vendor_id`),
  ADD KEY `fk_a_pengguna_id` (`a_pengguna_id`),
  ADD KEY `fk_a_gudang_id` (`a_gudang_id`),
  ADD KEY `idx_e_pembelian` (`kode`),
  ADD KEY `fk_d_produk_id` (`d_order_id_last`);

--
-- Indexes for table `e_pembelian_produk`
--
ALTER TABLE `e_pembelian_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_c_produk_id` (`c_produk_id`),
  ADD KEY `fk_a_pengguna_id` (`a_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_config`
--
ALTER TABLE `a_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `a_gudang`
--
ALTER TABLE `a_gudang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `a_jenis`
--
ALTER TABLE `a_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `a_pekerjaan`
--
ALTER TABLE `a_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `a_pengguna`
--
ALTER TABLE `a_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `a_pengguna_module`
--
ALTER TABLE `a_pengguna_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `a_produkmeta`
--
ALTER TABLE `a_produkmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `a_satuan`
--
ALTER TABLE `a_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `a_toko`
--
ALTER TABLE `a_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `a_vendor`
--
ALTER TABLE `a_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `a_vendor_pengguna`
--
ALTER TABLE `a_vendor_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_barang`
--
ALTER TABLE `b_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `b_barang_inventaris`
--
ALTER TABLE `b_barang_inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_barang_toko`
--
ALTER TABLE `b_barang_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b_gudang_stok`
--
ALTER TABLE `b_gudang_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_karyawan`
--
ALTER TABLE `b_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_kategori`
--
ALTER TABLE `b_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `b_rencana`
--
ALTER TABLE `b_rencana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `b_rencana_kegiatan`
--
ALTER TABLE `b_rencana_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rencana_material`
--
ALTER TABLE `b_rencana_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `b_user`
--
ALTER TABLE `b_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_user_alamat`
--
ALTER TABLE `b_user_alamat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_user_store`
--
ALTER TABLE `b_user_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_user_vendor`
--
ALTER TABLE `b_user_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vendor_brand`
--
ALTER TABLE `b_vendor_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_barang_inventory`
--
ALTER TABLE `c_barang_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_pembelian`
--
ALTER TABLE `c_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_pembelian_material`
--
ALTER TABLE `c_pembelian_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_produk`
--
ALTER TABLE `c_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `c_produksi`
--
ALTER TABLE `c_produksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_produksi_kegiatan`
--
ALTER TABLE `c_produksi_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_produksi_kegiatan_karyawan`
--
ALTER TABLE `c_produksi_kegiatan_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_produk_foto`
--
ALTER TABLE `c_produk_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `d_order`
--
ALTER TABLE `d_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `d_order_detail`
--
ALTER TABLE `d_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e_pembelian`
--
ALTER TABLE `e_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e_pembelian_produk`
--
ALTER TABLE `e_pembelian_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `a_modules`
--
ALTER TABLE `a_modules`
  ADD CONSTRAINT `a_modules_ibfk_1` FOREIGN KEY (`children_identifier`) REFERENCES `a_modules` (`identifier`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `a_pengguna_module`
--
ALTER TABLE `a_pengguna_module`
  ADD CONSTRAINT `a_pengguna_module_ibfk_1` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `a_pengguna_module_ibfk_2` FOREIGN KEY (`a_modules_identifier`) REFERENCES `a_modules` (`identifier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `a_satuan`
--
ALTER TABLE `a_satuan`
  ADD CONSTRAINT `a_satuan_ibfk_1` FOREIGN KEY (`a_satuan_id_kali`) REFERENCES `a_satuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `a_satuan_ibfk_2` FOREIGN KEY (`a_satuan_id_bagi`) REFERENCES `a_satuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `a_toko`
--
ALTER TABLE `a_toko`
  ADD CONSTRAINT `a_toko_ibfk_1` FOREIGN KEY (`a_toko_id`) REFERENCES `a_toko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `a_vendor_pengguna`
--
ALTER TABLE `a_vendor_pengguna`
  ADD CONSTRAINT `a_vendor_pengguna_ibfk_2` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `a_vendor_pengguna_ibfk_3` FOREIGN KEY (`a_vendor_id`) REFERENCES `a_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_barang`
--
ALTER TABLE `b_barang`
  ADD CONSTRAINT `b_barang_ibfk_2` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_barang_ibfk_3` FOREIGN KEY (`b_barang_id`) REFERENCES `b_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_barang_ibfk_4` FOREIGN KEY (`a_vendor_id`) REFERENCES `a_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_barang_inventaris`
--
ALTER TABLE `b_barang_inventaris`
  ADD CONSTRAINT `b_barang_inventaris_ibfk_1` FOREIGN KEY (`b_barang_id`) REFERENCES `b_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_barang_inventaris_ibfk_2` FOREIGN KEY (`b_karyawan_id`) REFERENCES `b_karyawan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_barang_toko`
--
ALTER TABLE `b_barang_toko`
  ADD CONSTRAINT `b_barang_toko_ibfk_1` FOREIGN KEY (`a_toko_id`) REFERENCES `a_toko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_barang_toko_ibfk_2` FOREIGN KEY (`b_barang_id`) REFERENCES `b_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_karyawan`
--
ALTER TABLE `b_karyawan`
  ADD CONSTRAINT `b_karyawan_ibfk_1` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_karyawan_ibfk_2` FOREIGN KEY (`b_karyawan_id`) REFERENCES `b_karyawan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_kategori`
--
ALTER TABLE `b_kategori`
  ADD CONSTRAINT `b_kategori_ibfk_1` FOREIGN KEY (`b_kategori_id`) REFERENCES `b_kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_rencana`
--
ALTER TABLE `b_rencana`
  ADD CONSTRAINT `b_rencana_ibfk_2` FOREIGN KEY (`b_barang_id`) REFERENCES `b_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_rencana_ibfk_3` FOREIGN KEY (`b_rencana_id`) REFERENCES `b_rencana` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_rencana_ibfk_4` FOREIGN KEY (`a_vendor_id`) REFERENCES `a_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_rencana_material`
--
ALTER TABLE `b_rencana_material`
  ADD CONSTRAINT `b_rencana_material_ibfk_1` FOREIGN KEY (`b_rencana_id`) REFERENCES `b_rencana` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_rencana_material_ibfk_2` FOREIGN KEY (`b_barang_id`) REFERENCES `b_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_rencana_material_ibfk_3` FOREIGN KEY (`a_jenis_id`) REFERENCES `a_jenis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_user_alamat`
--
ALTER TABLE `b_user_alamat`
  ADD CONSTRAINT `b_user_alamat_ibfk_1` FOREIGN KEY (`b_user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_user_store`
--
ALTER TABLE `b_user_store`
  ADD CONSTRAINT `b_user_store_ibfk_1` FOREIGN KEY (`b_user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_user_vendor`
--
ALTER TABLE `b_user_vendor`
  ADD CONSTRAINT `b_user_vendor_ibfk_2` FOREIGN KEY (`b_user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_user_vendor_ibfk_3` FOREIGN KEY (`a_vendor_id`) REFERENCES `a_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `b_vendor_brand`
--
ALTER TABLE `b_vendor_brand`
  ADD CONSTRAINT `b_vendor_brand_ibfk_1` FOREIGN KEY (`b_kategori_id`) REFERENCES `b_kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b_vendor_brand_ibfk_2` FOREIGN KEY (`a_vendor_id`) REFERENCES `a_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `c_barang_inventory`
--
ALTER TABLE `c_barang_inventory`
  ADD CONSTRAINT `c_barang_inventory_ibfk_1` FOREIGN KEY (`a_toko_id`) REFERENCES `a_toko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_barang_inventory_ibfk_2` FOREIGN KEY (`b_barang_id`) REFERENCES `b_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_barang_inventory_ibfk_3` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_barang_inventory_ibfk_4` FOREIGN KEY (`b_barang_toko_kode`) REFERENCES `b_barang_toko` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `c_pembelian`
--
ALTER TABLE `c_pembelian`
  ADD CONSTRAINT `c_pembelian_ibfk_1` FOREIGN KEY (`b_karyawan_id`) REFERENCES `b_karyawan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_pembelian_ibfk_2` FOREIGN KEY (`a_pekerjaan_id`) REFERENCES `a_pekerjaan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_pembelian_ibfk_3` FOREIGN KEY (`a_toko_id`) REFERENCES `a_toko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `c_produk`
--
ALTER TABLE `c_produk`
  ADD CONSTRAINT `c_produk_ibfk_1` FOREIGN KEY (`b_kategori_id`) REFERENCES `b_kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_produk_ibfk_2` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_produk_ibfk_3` FOREIGN KEY (`a_vendor_id`) REFERENCES `a_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `c_produksi`
--
ALTER TABLE `c_produksi`
  ADD CONSTRAINT `c_produksi_ibfk_1` FOREIGN KEY (`b_rencana_id`) REFERENCES `b_rencana` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_produksi_ibfk_2` FOREIGN KEY (`b_barang_id`) REFERENCES `b_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `c_produksi_kegiatan_karyawan`
--
ALTER TABLE `c_produksi_kegiatan_karyawan`
  ADD CONSTRAINT `c_produksi_kegiatan_karyawan_ibfk_1` FOREIGN KEY (`c_produksi_kegiatan_id`) REFERENCES `c_produksi_kegiatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_produksi_kegiatan_karyawan_ibfk_2` FOREIGN KEY (`b_karyawan_id`) REFERENCES `b_karyawan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_produksi_kegiatan_karyawan_ibfk_3` FOREIGN KEY (`a_pekerjaan_id`) REFERENCES `a_pekerjaan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `c_produk_foto`
--
ALTER TABLE `c_produk_foto`
  ADD CONSTRAINT `c_produk_foto_ibfk_1` FOREIGN KEY (`c_produk_id`) REFERENCES `c_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `e_pembelian`
--
ALTER TABLE `e_pembelian`
  ADD CONSTRAINT `e_pembelian_ibfk_2` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_pembelian_ibfk_3` FOREIGN KEY (`a_gudang_id`) REFERENCES `a_gudang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_pembelian_ibfk_4` FOREIGN KEY (`a_vendor_id`) REFERENCES `a_vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `e_pembelian_produk`
--
ALTER TABLE `e_pembelian_produk`
  ADD CONSTRAINT `e_pembelian_produk_ibfk_2` FOREIGN KEY (`c_produk_id`) REFERENCES `c_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_pembelian_produk_ibfk_3` FOREIGN KEY (`a_pengguna_id`) REFERENCES `a_pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

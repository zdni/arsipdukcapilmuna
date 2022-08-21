-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Agu 2022 pada 07.13
-- Versi server: 8.0.30-0ubuntu0.22.04.1
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsipdukcapilmuna`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip`
--

CREATE TABLE `arsip` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_berkas` date NOT NULL,
  `tanggal_ambil` date NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `pelapor` varchar(255) NOT NULL,
  `kategori_id` int NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `arsip`
--

INSERT INTO `arsip` (`id`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `tanggal_berkas`, `tanggal_ambil`, `nama_ayah`, `nama_ibu`, `pelapor`, `kategori_id`, `keterangan`, `file`) VALUES
(11, 'August Melantz Edwar Lamboutoh', '', 'Kendari', '1991-08-17', '2019-05-20', '2019-06-18', 'F. T. Lamboutoh', 'Wa Ode Evu', '-', 4, 'umum', 'august_melantz_edwar_lamboutoh_1659364434.pdf'),
(12, 'Ferdi Siventius', '', 'Lakapera', '1985-07-04', '2019-10-12', '2019-10-22', 'Nikolaus', 'Sarce Viktoria', '-', 4, 'terlambat', 'ferdi_siventius_1659364852.pdf'),
(13, 'Israel Labi', '', 'Maligano', '1987-12-27', '2019-10-08', '2019-10-12', 'Yohanes Tiku Labi', 'Leny Lantale', '-', 4, 'umum', 'israel_labi_1659365101.pdf'),
(14, 'La Haji David', '', 'Lolibu', '1946-07-01', '2019-02-07', '2019-02-12', 'La Dongku Torongku', 'Wa Mbula Maria', '-', 4, 'terlambat', 'la_haji_david_1659365351.pdf'),
(15, 'La Mudi Hendrikus', '', 'Lakapera', '1982-03-22', '2018-09-17', '2018-09-20', 'La Ane Brinus', 'Wa Juma Maria', '-', 4, 'umum', 'la_mudi_hendrikus_1659365505.pdf'),
(16, 'La Ngkamuju Kornelius', '', 'Labasa', '1990-12-24', '2019-03-12', '2019-03-18', 'La Bungke', 'Wa Mondo', '-', 4, 'terlambat', 'la_ngkamuju_kornelius_1659365627.pdf'),
(17, 'La Rensi Paulus', '', 'Labasa', '1989-10-01', '2019-05-16', '2019-05-24', 'Petrus Ali', 'Wa Ria Barbara', '-', 4, 'terlambat', 'la_rensi_paulus_1659365831.pdf'),
(18, 'Lamberth Rangkoratat', '', 'Namtabung', '1981-01-20', '2019-08-29', '2019-09-03', 'Fredrik Rangkoratat', 'Esterlina Laratmasse', '-', 4, 'terlambat', 'lamberth_rangkoratat_1659365955.pdf'),
(19, 'Marten Kadenge', '', 'Wale-ale', '1987-05-17', '2019-01-07', '2019-01-14', 'Petrus Kadenge', 'Emilia Mongkolo', '-', 4, 'umum', 'marten_kadenge_1659366084.pdf'),
(20, 'Mesak Saludung', '', 'Rantepao', '1972-10-07', '2019-09-05', '2019-09-15', 'A. R. Saludung', 'Y. T. Balapadang', '-', 4, 'terlambat', 'mesak_saludung_1659366179.pdf'),
(21, 'Michael Futwembun', '', 'Saumlaki', '1969-10-08', '2019-12-10', '2020-01-07', 'Mateus Futwembun', 'Domitilda Futwembun', '-', 4, 'umum', 'michael_futwembun_1659366384.pdf'),
(22, 'Silvinus Ungga', '', 'Latompa', '1995-03-23', '2019-05-13', '2019-05-23', 'Natalis Bansi', 'Wa Ambe Lusia', '-', 4, 'terlambat', 'silvinus_ungga_1659367030.pdf'),
(23, 'Simon Hasan', '', 'Wajo', '1994-02-22', '2019-04-11', '2019-04-20', 'Pius Gau', 'Aziza', '-', 4, 'umum', 'simon_hasan_1659367286.pdf'),
(24, 'Suherman Hans', '', 'Bangunsari', '1982-12-27', '2019-01-23', '2019-02-04', 'Agustinus Hans', 'Sutimi', '-', 4, 'terlambat', 'suherman_hans_1659367377.pdf'),
(25, 'Yohanes Apelaby', '', 'Bau-Bau', '1989-05-06', '2019-04-16', '2019-04-27', 'Nicholaus Apelaby', 'Wa Ode Ngkula', '-', 4, 'umum', 'yohanes_apelaby_1659367532.pdf'),
(26, 'Yohanes Bosko Boli', '', 'Belang', '1981-12-31', '2019-01-30', '2019-02-12', 'Fransiskus Lemala', 'Agnes Pulo', '-', 4, 'terlambat', 'yohanes_bosko_boli_1659367629.pdf'),
(27, 'Yohanes Palenda', '', 'Latompa', '1992-05-15', '2019-05-03', '2019-05-08', 'La Salasa Petrus', 'Wa Limbu Lidia', '-', 4, 'terlambat', 'yohanes_palenda_1659368278.pdf'),
(28, 'Anthonius La Saila', '', 'Labasa', '1973-11-10', '2018-01-31', '2018-02-10', 'La Haji David', 'Yustina Wa Bani', '-', 4, 'terlambat', 'anthonius_la_saila_1659368438.pdf'),
(29, 'Beatus La Bea', '', 'Wale-ale', '1992-04-02', '2019-03-12', '2019-03-20', 'Nurbertus La Botu', 'Regina Wa Koila', '-', 4, 'terlambat', 'beatus_la_bea_1659368561.pdf'),
(30, 'Benediktus Nedi', '', 'Wale-ale', '1971-01-22', '2018-06-08', '2018-06-15', 'Siluester La Poasa', 'Teodosia Moomo', '-', 4, 'terlambat', 'benediktus_nedi_1659368650.pdf'),
(31, 'Harianto Adrianus', '', 'Sorong', '1992-08-28', '2018-11-27', '2018-12-10', 'Antonius Haji', 'Rita', '-', 4, 'terlambat', 'harianto_adrianus_1659368780.pdf'),
(32, 'Herman Edi', '', 'Tembeua', '1991-09-08', '2018-05-23', '2018-06-01', 'Antonius La Deu', 'Marta Taana', '-', 4, 'terlambat', 'herman_edi_1659368957.pdf'),
(33, 'Ketut Ponraysa', '', 'Bali', '1980-09-09', '2018-06-07', '2018-06-17', 'Ketut Ceranta', 'Ketut Mariki', '-', 4, 'terlambat', 'ketut_ponraysa_1659369093.pdf'),
(34, 'La Asa Mateus', '', 'Tembeua', '1986-06-25', '2016-01-28', '2016-02-04', 'La Poasa Olfred', 'Wa Saki Tekuasa', '-', 4, 'umum', 'la_asa_mateus_1659369185.pdf'),
(35, 'La Hasimu Beno', '', 'Labasa', '1975-07-01', '2017-05-16', '2017-05-23', 'La Bohe', 'Wa Angi', '-', 4, 'terlambat', 'la_hasimu_beno_1659369475.pdf'),
(36, 'La Ole Andreas', '', 'Tembeua', '1988-03-03', '2018-05-31', '2018-06-09', 'La Kundo Yakobus', 'Wa Bansi Bibiana', '-', 4, 'terlambat', 'la_ole_andreas_1659369564.pdf'),
(37, 'Marselus Abu', '', 'Labasa', '1994-02-16', '2018-11-05', '2018-11-20', 'Silvanus Dungku', 'Christofora Wa Mbula', '-', 4, 'terlambat', 'marselus_abu_1659369657.pdf'),
(38, 'Maurits La Haji', '', 'Donowudu', '1986-10-31', '2018-02-03', '2018-02-13', 'Klemens La Haji', 'Lusia Taga', '-', 4, 'terlambat', 'maurits_la_haji_1659369795.pdf'),
(39, 'Samuel Bastian Langko', '', 'Kolana', '1993-01-27', '2018-02-27', '2018-03-09', 'Gerson Langko', 'Yoseba Takalapeta', '-', 4, 'umum', 'samuel_bastian_langko_1659370071.pdf'),
(40, 'Tommy Fitalianus', '', 'Labasa', '1988-12-22', '2018-04-01', '2018-06-03', 'Donatus Tunda', 'Alberta Maria Wa Bonte', '-', 4, 'umum', 'tommy_fitalianus_1659370503.pdf'),
(41, 'Vilo Vilinus', '', 'Labasa', '1985-08-12', '2018-09-10', '2018-09-18', 'La Salindo Thomas', 'Albertina Nggasa', '-', 4, 'terlambat', 'vilo_vilinus_1659370643.pdf'),
(42, 'Yosep La Adi', '', 'Tembeua', '1984-02-04', '2018-06-18', '2018-06-24', 'Hubertus Deu', 'Wa Kobe', '-', 4, 'terlambat', 'yosep_la_adi_1659370827.pdf'),
(43, 'Eyrayya Sidqia Zafia Ihsan', '', 'Raha', '2021-08-06', '2022-02-14', '2022-02-16', 'Ihsan Asmuni', 'Andi Tendry Yulia', 'Meriyanti', 2, 'terlambat', 'eyrayya_sidqia_zafia_ihsan_1659371506.pdf'),
(44, 'Wa Ode Ainul Qasya', '', 'Muna', '2017-06-30', '2022-02-07', '2022-02-11', 'Darmani', 'Wa Ode Surianti', 'Wa Ode Surianti', 2, 'umum', 'wa_ode_ainul_qasya_1659371659.pdf'),
(45, 'Aisya Ramadani', '', 'Muna', '2021-11-28', '2022-02-14', '2022-02-15', 'Oleng', 'Wa Saharna', 'Lini', 2, 'umum', 'aisya_ramadani_1659371795.pdf'),
(46, 'Faiz Nufail Zhafran', '', 'Muna', '2022-01-09', '2022-02-14', '2022-02-15', 'Lini', 'Wati Setyaningsih', 'Lini', 2, 'umum', 'faiz_nufail_zhafran_1659371884.pdf'),
(47, 'Fais', '', 'Muna', '2021-10-07', '2022-02-14', '2022-02-15', 'Pahlan', 'Wa Saini', 'Lini', 2, 'terlambat', 'fais_1659371968.pdf'),
(48, 'Hifza Dzakiyya Salwan', '', 'Muna', '2016-07-01', '2022-02-14', '2022-02-16', 'La Salwan', 'Fitriatin', 'La Firman', 2, 'terlambat', 'hifza_dzakiyya_salwan_1659372058.pdf'),
(49, 'Rayyan Muhammad Saman', '', 'Raha', '2022-01-28', '2022-02-15', '2022-02-16', 'Saman Lataa', 'Hasrawati Wua', 'Haris Wua', 2, 'umum', 'rayyan_muhammad_saman_1659372143.pdf'),
(50, 'Aqilah Shabira', '', 'Muna', '2020-04-22', '2021-10-09', '2021-10-15', 'Salfini', 'Ramlia', 'La Firman', 2, 'terlambat', 'aqilah_shabira_1659372255.pdf'),
(51, 'Wa Ode Afidha Meilani', '', 'Muna', '2018-09-09', '2021-10-09', '2021-10-13', 'La Ode Asikin', 'Hernawati Rika Wulandari', 'Asmia', 2, 'terlambat', 'wa_ode_afidha_meilani_1659372345.pdf'),
(52, 'Alfaris', '', 'Muna', '2014-10-18', '2021-10-09', '2021-10-13', 'Salfini', 'Ramlia', 'La Firman', 2, 'terlambat', 'alfaris_1659372415.pdf'),
(53, 'Fania Azzahra', '', 'Muna', '2021-12-25', '2022-02-15', '2022-02-16', 'Arwan', 'Nurhima', 'Rabiul', 2, 'umum', 'fania_azzahra_1659372497.pdf'),
(54, 'Rahmadani', '', 'Muna', '2021-05-03', '2022-02-02', '2022-02-02', 'Imei', 'Oshin', 'Rabiul', 2, 'terlambat', 'rahmadani_1659372558.pdf'),
(55, 'Muhamad Zul Ikram', '', 'Muna', '2021-05-30', '2022-02-14', '2022-02-15', 'Sukrin', 'Wa Mimi', 'L.M. Amnah', 2, 'terlambat', 'muhamad_zul_ikram_1659372635.pdf'),
(56, 'Muhat Yunus', '', 'Muna', '2018-12-28', '2019-11-08', '2019-11-11', 'Hardi Setiawan ', 'Friska', 'La Poe', 2, 'terlambat', 'muhat_yunus_1659372726.pdf'),
(57, 'Akbar', '', 'Muna', '2019-11-20', '2022-02-14', '2022-02-15', 'La Aco', 'Wa Ghoni', 'Hasrawati', 2, 'terlambat', 'akbar_1659372791.pdf'),
(58, 'La Fenta', '', 'Muna', '1954-04-01', '2022-02-14', '2022-02-15', 'La Huani', 'Wa Naira', 'La Enggu', 3, 'umum', 'la_fenta_1659373081.pdf'),
(59, 'Ofdin', '', 'Lahontohe', '1968-12-31', '2022-02-16', '2022-02-17', 'La Iliasa', 'Wa Saini', 'Syahrul Sidiq', 3, 'umum', 'ofdin_1659373179.pdf'),
(60, 'La Legeman', '', 'Kasaka', '1965-12-31', '2022-02-14', '2022-02-17', 'La Taami', 'Wa Iya', 'Fari Aus', 3, 'umum', 'la_legeman_1659373269.pdf'),
(61, 'Wa Hanaita', '', 'Mabolu', '1954-07-01', '2022-01-11', '2022-01-14', 'La Madusae', 'Wa Ribatini', 'Muhammad Saban', 2, 'terlambat', 'wa_hanaita_1659373438.pdf'),
(62, 'Azkayra Maiza Zahwa', '', 'Muna', '2021-10-07', '2022-02-11', '2022-02-12', 'Arifin', 'Risna Fariki', 'Arifin', 2, 'terlambat', 'azkayra_maiza_zahwa_1659373518.pdf'),
(63, 'Ida Risnawati', '', 'Raha', '2004-06-13', '2022-02-11', '2022-02-12', 'Myzan', 'Jumiati Ranreng', 'Hamlan', 2, 'terlambat', 'ida_risnawati_1659373589.pdf'),
(64, 'Muhammad Ridho', '', 'Wabintingi', '2005-09-21', '2022-02-11', '2022-02-14', 'La Hadapi', 'Suriani', 'Sukma', 2, 'terlambat', 'muhammad_ridho_1659373665.pdf'),
(65, 'Muhamad Ali Hanafi', '', 'Muna', '2021-09-21', '2022-02-11', '2022-02-13', 'Tamsir', 'Elfina', 'Tamsir', 2, 'terlambat', 'muhamad_ali_hanafi_1659373752.pdf'),
(66, 'Muhamad Araz Anggaya', '', 'Muna', '2020-11-24', '2022-03-09', '2022-03-11', 'La Ode Gunti', 'Nia', 'Mirsan', 2, 'terlambat', 'muhamad_araz_anggaya_1659374414.pdf'),
(67, 'Wa Ode Adelia Cahyadila', '', 'Raha', '2006-03-12', '2022-03-10', '2022-03-11', 'La Ode Dinda', 'Wa Ode Ndolasi', 'La Ode Dinda', 2, 'terlambat', 'wa_ode_adelia_cahyadila_1659374518.pdf'),
(68, 'Yamin Akbar', '', 'Mabolu', '1996-06-07', '2022-03-10', '2022-03-11', 'Laode Kadimu', 'Wa Sumiana', 'Ramadan Diru', 2, 'terlambat', 'yamin_akbar_1659374588.pdf'),
(69, 'Wa Ode Ningsih Angraeni', '', 'Muna', '2021-12-13', '2022-03-10', '2022-03-11', 'L. D. Asis', 'Dariati', 'Hasrawati', 2, 'umum', 'wa_ode_ningsih_angraeni_1659374659.pdf'),
(70, 'Ahmad Salman Taslim Laode', '', 'Muna', '2021-10-18', '2022-03-10', '2022-03-12', 'La Ode Muhammad Taslim', 'Darmawati', 'La Ode Muhammad Taslim', 2, 'terlambat', 'ahmad_salman_taslim_laode_1659374748.pdf'),
(71, 'Muhammad Rafif Farqah', '', 'Muna', '2019-09-25', '2022-03-04', '2022-03-05', 'Alwi Aswat', 'Maysita Eisqika Sami', 'Ramadhan Munadar Kuti', 2, 'terlambat', 'muhammad_rafif_farqah_1659374892.pdf'),
(72, 'Alan Akbar', '', 'Mabolu', '1994-02-16', '2022-03-10', '2022-03-11', 'La Ode Kadimu', 'Wa Sumiana', 'Ramadan Diru', 2, 'terlambat', 'alan_akbar_1659374987.pdf'),
(73, 'Zahra Tika Naim', '', 'Muna', '2017-02-03', '2022-03-10', '2022-03-11', 'La Adi', 'Pupu Herli', 'Sardina', 2, 'terlambat', 'zahra_tika_naim_1659375057.pdf'),
(74, 'Alya Aisya Putri', '', 'Muna', '2020-09-11', '2022-03-10', '2022-03-11', 'Nur Arifin', 'Sitti Fatima', 'Sardina', 2, 'terlambat', 'alya_aisya_putri_1659375461.pdf'),
(75, 'Fadillah Muslimah Liasi', '', 'Muna', '2022-01-15', '2022-03-10', '2022-03-15', 'La Liasi', 'Nur Hidayat', 'La Liasi', 2, 'umum', 'fadillah_muslimah_liasi_1659375587.pdf'),
(76, 'La Ode Muhammad Rayhan', '', 'Muna', '2021-02-19', '2022-03-10', '2022-03-16', 'La Ode Baeri', 'Siti Husna', 'Sardina', 2, 'terlambat', 'la_ode_muhammad_rayhan_1659375665.pdf'),
(77, 'La Ode Muhammad Alfaizan', '', 'Muna', '2022-01-29', '2022-03-10', '2022-03-13', 'La Ode Sirajudin', 'Wa Ode Hadania', 'La Ode Sirajudin', 2, 'umum', 'la_ode_muhammad_alfaizan_1659375755.pdf'),
(78, 'Jamjurianto', '', 'Jember', '1970-07-01', '2022-03-10', '2022-03-20', 'Poniran', 'Indun Juariah', 'Siti Dinar Marni Asari', 3, 'terlambat', 'jamjurianto_1659375948.pdf'),
(79, 'Nursiah', '', 'Lohia', '1952-12-31', '2022-03-10', '2022-03-15', 'La Kondukuno', 'Wa Maria', 'Siti Dinar Marni Asari', 3, 'umum', 'nursiah_1659376057.pdf'),
(80, 'Mustaman', '', 'Lemoambo', '1975-10-05', '2022-03-01', '2022-03-03', 'La Onu', 'Wa Kaka', 'La Ode Pute', 3, 'terlambat', 'mustaman_1659376178.pdf'),
(81, 'Nur Zahra', '', 'Luwuk', '2011-06-16', '2022-02-10', '2022-02-13', 'Udin', 'Erna Sapiung', 'Misra', 2, 'terlambat', 'nur_zahra_1659376307.pdf'),
(82, 'Naura Ardiana Abas', '', 'Muna', '2019-01-30', '2022-02-10', '2022-02-10', 'Arif', 'Murdiana', 'Rismawati', 2, 'terlambat', 'naura_ardiana_abas_1659376379.pdf'),
(83, 'Jonathan Effrem', '', 'Muna', '2021-06-09', '2022-02-10', '2022-02-10', 'Baru Maximus', 'Lini Marsella', 'Yuliana Ervina Sumual', 2, 'terlambat', 'jonathan_effrem_1659376462.pdf'),
(84, 'Asri Akbar', '', 'Lapole', '2004-04-14', '2022-02-09', '2022-02-10', 'La Rudi', 'Wa Muhaana', 'Kudusiah', 2, 'terlambat', 'asri_akbar_1659376535.pdf'),
(85, 'Yansen Theodorus Mustari', '', 'Muna', '2021-01-14', '2022-02-09', '2022-02-10', 'La Ode Mustari', 'Elfina Balaba', 'Elfina Balaba', 2, 'terlambat', 'yansen_theodorus_mustari_1659376643.pdf'),
(86, 'Bona Fentura Julianto', '', 'Latompa', '2005-07-16', '2022-02-09', '2022-02-10', 'La Hasimu Beno', 'Sumiati', 'Wa Ode Sudarni', 2, 'terlambat', 'bona_fentura_julianto_1659376774.pdf'),
(87, 'La Tedi', '', 'Bonea', '2003-11-18', '2022-02-09', '2022-02-11', 'La Ode Timu', 'Wa Ode Sumeni', 'Wa Ode Sumeni', 2, 'terlambat', 'la_tedi_1659376866.pdf'),
(88, 'Wa Ode Rezki Ayra', '', 'Muna', '2019-02-20', '2022-02-07', '2022-02-11', 'La Ode Sumadar', 'Yanti', 'Hasrawati', 2, 'terlambat', 'wa_ode_rezki_ayra_1659376954.pdf'),
(89, 'Andi Muhammad Rafka', '', 'Raha', '2021-11-16', '2022-02-09', '2022-02-11', 'Muhammad Ishaq', 'Nafsiah', 'Muhammad Ishaq', 2, 'terlambat', 'andi_muhammad_rafka_1659377021.pdf'),
(90, 'Azka Abdullah Nurdin', '', 'Muna', '2022-01-30', '2022-02-09', '2022-02-10', 'Nurdin Salama', 'Wa Ode Zandra', 'Nurdin Salama', 2, 'umum', 'azka_abdullah_nurdin_1659377088.pdf'),
(91, 'Nathan Athalla', '', 'Muna', '2022-02-02', '2022-02-09', '2022-02-10', 'Hartono', 'Karlina', 'La Firman', 2, 'umum', 'nathan_athalla_1659377145.pdf'),
(92, 'Muhammad Abyan Zakarya', '', 'Desa Mabodo', '2021-08-05', '2022-02-09', '2022-02-10', 'Ramadhan Zakarya', 'Febriani', 'Ramadhan Zakarya', 2, 'terlambat', 'muhammad_abyan_zakarya_1659377224.pdf'),
(93, 'Rayyan Zakarya Kanggela', '', 'Desa Mabodo', '2019-01-17', '2022-02-09', '2022-02-10', 'Ramadhan Zakarya', 'Febriani', 'Ramadhan Zakarya', 2, 'terlambat', 'rayyan_zakarya_kanggela_1659377299.pdf'),
(94, 'Riska Natalis', '', 'Bungi', '1991-03-30', '2022-02-10', '2022-02-13', 'Ramadan', 'Sufiani', 'Wa Ode Saharia', 2, 'terlambat', 'riska_natalis_1659377361.pdf'),
(95, 'La Ode Muhammad Yusuf', '', 'Wakobalu Agung', '2021-12-30', '2022-02-08', '2022-02-10', 'La Ode Amari', 'Wa Dalima', 'Wa Ode Risnawati', 2, 'umum', 'la_ode_muhammad_yusuf_1659377452.pdf'),
(96, 'Muhammad Rizan', '', 'Kosundano', '2014-07-07', '2021-02-09', '2021-02-13', 'La Saidi', 'Wade Ena', 'Sardina', 2, 'terlambat', 'muhammad_rizan_1659377536.pdf'),
(97, 'Ferdiansyah', '', 'Muna', '2019-12-10', '2022-02-09', '2022-02-12', 'Amsar', 'Riska Wahida', 'Lilis Trisulpa', 2, 'terlambat', 'ferdiansyah_1659377625.pdf'),
(98, 'La Ode Muhammad Fajrin Pratama', '', 'Muna', '2020-06-29', '2022-02-09', '2022-02-10', 'La Ode Muhammad Faizan Saputra', 'Wa Ode Fitriani', 'Hasrawati', 2, 'terlambat', 'la_ode_muhammad_fajrin_pratama_1659377710.pdf'),
(99, 'Fiska Olivia Yanti', '', 'Muna', '2021-07-31', '2022-02-09', '2022-02-10', 'Amsar', 'Riska Wahida', ' Lilis Trisulpa', 2, 'terlambat', 'fiska_olivia_yanti_1659377779.pdf'),
(100, 'Muhammad Sultan', '', 'Muna', '2021-11-08', '2022-02-09', '2022-02-17', 'La Dalfin', 'Nurliani', 'Mohamad Oryali', 2, 'terlambat', 'muhammad_sultan_1659377901.pdf'),
(101, 'Muhammad Ukail Zhafran', '', 'Buton Utara', '2021-07-28', '2022-02-10', '2022-02-11', 'Safar', 'Dewi Rahmawati', 'Safar', 2, 'terlambat', 'muhammad_ukail_zhafran_1659377986.pdf'),
(102, 'Hafidz Akbar', '', 'Muna', '2018-03-12', '2022-02-10', '2022-02-10', 'Nurwan', 'Ira Rahma Sutra Dewi', 'La Firman', 2, 'terlambat', 'hafidz_akbar_1659378073.pdf'),
(103, 'Rostislav Farin La Unsu', '', 'Sidoarjo', '2003-11-29', '2022-02-10', '2022-02-11', 'Farid Ismail Unsu', 'Indah Sulistyaningrum', 'Farid Ismail Unsu', 2, 'terlambat', 'rostislav_farin_la_unsu_1659378203.pdf'),
(104, 'Siswan Mahuda', '', 'Terebino', '1954-05-06', '2022-02-10', '2022-02-18', 'Mahuda', 'Pihina', 'La Sahara', 3, 'terlambat', 'siswan_mahuda_1659378295.pdf'),
(105, 'Sanifa', '', 'Wajo Gu', '1956-07-11', '2022-01-10', '2022-01-12', 'La Toka', 'Wa Juna', 'Sanifa', 2, 'terlambat', 'sanifa_1659452991.pdf'),
(106, 'Resky Cahaya Ayu', '', 'Korihi', '2005-05-05', '2022-01-10', '2022-01-12', 'La Ngkaelalo', 'Wa Nurudi', 'Harsilah', 2, 'terlambat', 'resky_cahaya_ayu_1659453081.pdf'),
(107, 'Sumei Rubu', '', 'Dana', '1981-05-24', '2022-01-10', '2022-01-12', 'La Rubu', 'Fahida', 'Wa Ode Idiawati', 2, 'terlambat', 'sumei_rubu_1659453159.pdf'),
(108, 'Adara Amarise Warouw', '', 'Muna', '2022-01-02', '2022-01-10', '2022-01-12', 'Alto Samuel Warouw', 'Musniati', 'Yupiter', 2, 'umum', 'adara_amarise_warouw_1659453232.pdf'),
(109, 'Sarniati', '', 'Bulukumba', '1965-12-31', '2022-01-10', '2022-01-12', 'Samsuddin', 'Nur Intan', 'Enny Fianti', 2, 'terlambat', 'sarniati_1659453327.pdf'),
(110, 'Nurjala', '', 'Buton', '1960-07-01', '2022-01-10', '2022-01-12', 'La Toka', 'Wa Juna', 'Sanifa', 2, 'terlambat', 'nurjala_1659453417.pdf'),
(111, 'Hayyin Arsy Atalea', '', 'Muna', '2021-03-21', '2022-01-10', '2022-01-12', 'Irwan', 'Wa Wuna Indah', 'Wd. Siti Nurmaila', 2, 'terlambat', 'hayyin_arsy_atalea_1659453498.pdf'),
(112, 'Elnara Karimah Syarif', '', 'Muna', '2021-12-21', '2022-01-10', '2022-01-12', 'Syarifuddin', 'Yetin Sasmita Hakim', 'Wa Ode Patiama', 2, 'umum', 'elnara_karimah_syarif_1659453620.pdf'),
(113, 'Faris Alinsky', '', 'Raha', '2007-01-22', '2022-01-10', '2022-01-12', 'Sumei Rubu', 'Wa Ode Idiawati', 'Wa Ode Idiawati', 2, 'terlambat', 'faris_alinsky_1659453852.pdf'),
(114, 'Yazmi Nurul Rizki', '', 'Muna', '2021-09-20', '2022-01-10', '2022-01-12', 'Bakri Hasan', 'Wa Ode Ila', 'Wa Ode Sitti Nurmiala', 2, 'terlambat', 'yazmi_nurul_rizki_1659453955.pdf'),
(115, 'Nur Hafizah Bakri', '', 'Muna', '2020-06-15', '2022-01-10', '2022-01-12', 'Bakri Hasan', 'Wa Ode Ila', 'Wa Ode Sitti Nurmiala', 2, 'terlambat', 'nur_hafizah_bakri_1659454018.pdf'),
(116, 'Kamal Rudin', '', 'Mabodo', '2002-08-01', '2022-01-10', '2022-01-12', 'La Ifa', 'Wa Daya', 'Hasman Husein', 2, 'terlambat', 'kamal_rudin_1659454115.pdf'),
(117, 'Nur Azeeza Harudi', '', 'Muna', '2020-02-22', '2022-01-07', '2022-01-10', 'Andi Samsudin', 'Liana', 'Suryani', 2, 'terlambat', 'nur_azeeza_harudi_1659454184.pdf'),
(118, 'Wa Ode Harmin', '', 'Laiworu', '1985-06-08', '2022-01-10', '2022-01-11', 'Sadardjon', 'Wa Ode Maluati', 'Wa Ode Harmin', 2, 'terlambat', 'wa_ode_harmin_1659454253.pdf'),
(119, 'Inang Marceni', '', 'Tampunabale', '2001-11-27', '2022-01-10', '2022-01-11', 'La Zani', 'Darsia', 'Inang Marceni', 2, 'terlambat', 'inang_marceni_1659454316.pdf'),
(120, 'Muhammad Yasir', '', 'Lamanu', '2013-04-12', '2022-01-10', '2022-01-11', 'Aco Andu', 'Juliati', 'Ridwan', 2, 'terlambat', 'muhammad_yasir_1659454416.pdf'),
(121, 'Arandra Qiyas Arifin', '', 'Dana', '2021-09-23', '2022-01-10', '2022-01-11', 'Arifin', 'Lisna', 'Arifin', 2, 'terlambat', 'arandra_qiyas_arifin_1659454483.pdf'),
(122, 'Rostin', '', 'Watondo', '1999-09-09', '2022-01-10', '2022-01-11', 'La Wunas Djuni', 'Wa Ode Ade', 'Rostin', 2, 'terlambat', 'rostin_1659454577.pdf'),
(123, 'Septiani Tri Sakti', '', 'Muna', '2021-09-24', '2022-01-10', '2022-01-13', 'Saafiu', 'Masita', 'Saafiu', 2, 'terlambat', 'septiani_tri_sakti_1659454709.pdf'),
(124, 'La Ode Muhammad Syawal Alfatha', '', 'Muna', '2021-11-08', '2022-01-10', '2022-01-13', 'La Ode Salman', 'Asrida', 'La Ode Yabdi Jaya', 2, 'terlambat', 'la_ode_muhammad_syawal_alfatha_1659454790.pdf'),
(125, 'Hamrin', '', 'Bone', '1957-12-31', '2022-01-10', '2022-01-14', 'La Dalehada', 'Wa Iha', 'Yumiarsih Rahayu Hamrin', 3, 'umum', 'hamrin_1659455039.pdf'),
(126, 'Abdul Gani', '', 'Buton', '1954-12-31', '2022-01-10', '2022-01-13', 'La Ode Syahidu', 'Wa Ode Pua', 'Hendro Saputra Gani', 3, 'umum', 'abdul_gani_1659455285.pdf'),
(127, 'Wa Mpono', '', 'Duruka', '1998-07-01', '2022-01-10', '2022-01-13', 'La Bafu', 'Wa Ngkana', 'Firmansyah', 3, 'umum', 'wa_mpono_1659455476.pdf'),
(128, 'La Ndihada', '', 'Wakadia', '1949-12-31', '2022-01-10', '2022-01-14', 'La Tuani', 'Wa Ngkaadi', 'Wd. Siti Nurmaila', 3, 'terlambat', 'la_ndihada_1659455548.pdf'),
(129, 'Nur Ayni', '', 'Muna', '2020-02-14', '2022-02-10', '2022-02-13', 'Muliadi', 'Rosnani', 'Aisyah Pai', 2, 'terlambat', 'nur_ayni_1659455737.pdf'),
(130, 'Maryam Almahyra Hasan', '', 'Muna', '2020-12-28', '2022-03-08', '2022-03-10', 'Muhammad Musrianton', 'Magdalena Hutabarat', 'Sinar', 2, 'terlambat', 'maryam_almahyra_hasan_1659455892.pdf'),
(131, 'Muhammad Faaz Sulaiman', '', 'Muna', '2022-02-15', '2022-03-08', '2022-03-10', 'La Ode Muhamad Fajar', 'Wa Ode Juniastin', 'Rusniati', 2, 'umum', 'muhammad_faaz_sulaiman_1659455975.pdf'),
(132, 'Khaerudin', '', 'Karoo', '1990-10-07', '2022-03-09', '2022-03-13', 'La Halipu', 'Wa Samuriya', 'Khaerudin', 2, 'terlambat', 'khaerudin_1659456058.pdf'),
(133, 'Sultan Malik Al-Fatih', '', 'Muna', '2020-08-21', '2022-03-09', '2022-03-10', 'Monogatari', 'Wa Ode Hutnaini', 'Wa Ode Dara', 2, 'terlambat', 'sultan_malik_al-fatih_1659456123.pdf'),
(134, 'Adiva Ayra Putri', '', 'Muna', '2022-02-03', '2022-03-08', '2022-03-09', 'Ridwan Syah', 'Dahlia', 'Wa Ode Siti Nurmaila', 2, 'umum', 'adiva_ayra_putri_1659456249.pdf'),
(135, 'Anis Ayu Citra', '', 'Muna', '2021-06-14', '2022-03-04', '0202-03-09', 'Anjar Koni', 'Mariati', 'Wa Ode Siti Nurmaila', 2, 'terlambat', 'anis_ayu_citra_1659456351.pdf'),
(136, 'Amora Tavisyah Anugrah', '', 'Muna', '2020-11-14', '2022-03-09', '2022-03-12', 'Nasrudin', 'Sitti Karmila', 'Wa Ode Dara', 2, 'terlambat', 'amora_tavisyah_anugrah_1659456444.pdf'),
(137, 'Disman', '', 'Warambe', '1998-12-20', '2022-03-08', '2022-03-11', 'La Edi', 'Wa Ambe', 'Wa Ode bay', 2, 'terlambat', 'disman_1659456504.pdf'),
(138, 'La Ode Muhammad Razzaq', '', 'Muna', '2019-06-15', '2022-03-09', '2022-03-10', 'La Ode Ando', 'Wa Harni', 'Sitti Haruma', 2, 'terlambat', 'la_ode_muhammad_razzaq_1659456730.pdf'),
(139, 'Muhammad Albar', '', 'Fongkaniwa', '2006-07-27', '2022-03-02', '2022-03-09', 'Amrin', 'Samria', 'Rabiul', 2, 'terlambat', 'muhammad_albar_1659456868.pdf'),
(140, 'Toni Safaat', '', 'Sidodadi', '2003-09-01', '2022-03-01', '2022-03-02', 'La Baati', 'Nur Haida', 'Nur Haida', 2, 'terlambat', 'toni_safaat_1659456961.pdf'),
(141, 'Raka Gustian Rusly', '', 'Wasolangka', '2008-08-08', '2022-03-04', '2022-03-06', 'Rusly', 'Obyt', 'Aris Taeke', 2, 'terlambat', 'raka_gustian_rusly_1659457040.pdf'),
(142, 'Nur Alfiza', '', 'Muna', '2022-01-30', '2022-03-09', '2022-03-10', 'Salmin Haga', 'Ade Irma', 'Tuti Damayanti', 2, 'umum', 'nur_alfiza_1659457129.pdf'),
(143, 'Adwa Nafiatul Almahyra', '', 'Muna', '2017-12-16', '2022-03-09', '2022-03-10', 'Adnan Hario', 'Wa Saliati', 'La Firman', 2, 'terlambat', 'adwa_nafiatul_almahyra_1659457193.pdf'),
(144, 'Johannes Kawanua', '', 'Kendari', '2020-12-21', '2022-03-09', '2022-03-10', 'Marselus Abu', 'Annisah', 'Wa Nika Veronika', 2, 'terlambat', 'johannes_kawanua_1659457258.pdf'),
(145, 'Naufal Ziyan', '', 'Muna', '2020-09-01', '2022-03-08', '2022-03-09', 'Jumadin', 'Delvia', 'Kasim', 2, 'terlambat', 'naufal_ziyan_1659457381.pdf'),
(146, 'Muhamad Raidin', '', 'Muna', '2021-10-24', '2022-03-09', '2022-03-10', 'Karmonta', 'Nursaida', 'La Ono', 2, 'terlambat', 'muhamad_raidin_1659457471.pdf'),
(147, 'I Ketut Supardika', '', 'Asera', '2005-12-23', '2022-03-09', '2022-03-10', 'Wayan Sandri', 'Putu Tirta', 'Mirsan', 2, 'terlambat', 'i_ketut_supardika_1659457541.pdf'),
(148, 'Rahman', '', 'Sumpuo', '2000-12-31', '2022-03-08', '2022-03-09', 'La Saani', 'Wa Bala', 'Yanti Abo', 2, 'terlambat', 'rahman_1659457614.pdf'),
(149, 'Richard Kapitarauw', '', 'Biak', '1983-03-30', '2022-03-09', '2022-03-10', 'Yulianus Kapitarauw', 'Mince Kafiar', 'Wiwin Sugiarti', 3, 'umum', 'richard_kapitarauw_1659457692.pdf'),
(150, 'La Ode Pokai', '', 'Labunti', '1942-07-01', '2022-03-09', '2022-03-10', 'La Piipa', 'Wa Mpodo', 'Siti Helmina', 2, 'terlambat', 'la_ode_pokai_1659457760.pdf'),
(151, 'La Ode Umuru', '', 'Raha', '1933-07-01', '2022-03-09', '2022-03-10', 'La Ode Jafara', 'Wa Ode Salima', 'Sitti Munawar Djuku', 3, 'terlambat', 'la_ode_umuru_1659457855.pdf'),
(152, 'La Saruka', '', 'Lasehao', '1969-07-01', '2022-03-08', '2022-03-10', 'La Hari', 'Wa Nera', 'La Farudi', 3, 'terlambat', 'la_saruka_1659458041.pdf'),
(153, 'La Ngkoso', '', 'Rangka', '1940-12-31', '2022-03-08', '2022-03-09', 'La Salemara', 'Wa Utu', 'Hasim Jaya', 3, 'umum', 'la_ngkoso_1659458263.pdf'),
(154, 'Nesya Wali', '', 'Muna', '2021-11-23', '2022-02-14', '2022-02-16', 'Sutarman Wali', 'Harwanti', 'Tuti Damayanti', 2, 'terlambat', 'nesya_wali_1659460747.pdf'),
(155, 'Sutrisno', '', 'Desa Mabolu', '1992-10-05', '2022-02-11', '2022-02-12', 'La Ode Mora', 'Diana', 'Sutrisno', 2, 'terlambat', 'sutrisno_1659460821.pdf'),
(156, 'La Ode Ikra Saputra', '', 'Desa Mabolu', '1993-11-11', '2022-02-11', '2022-02-12', 'La Ode Mora', 'Diana', 'La Ode Ikra Saputra', 2, 'terlambat', 'la_ode_ikra_saputra_1659460899.pdf'),
(157, 'La Ode Sarlin', '', 'Mabolu', '1998-09-14', '2022-02-11', '2022-02-12', 'La Ode Mora', 'Diana', 'La Ode Sarlin', 2, 'terlambat', 'la_ode_sarlin_1659461006.pdf'),
(158, 'Wa Ode Sitti Zahra Zalzabila', '', 'Waara', '2004-10-14', '2022-02-14', '2022-02-14', 'La Ode Karia', 'Wa Ode Sitti Suryati', 'Wa Ode Sitti Suryati', 2, 'terlambat', 'wa_ode_sitti_zahra_zalzabila_1659461150.pdf'),
(159, 'Wa Ode Sitti Nur Qalbi', '', 'Waara', '2007-08-21', '2022-02-14', '2022-02-14', 'La Ode Karia', 'Wa Ode Sitti Suryati', 'Wa Ode Sitti Suryati', 2, 'terlambat', 'wa_ode_sitti_nur_qalbi_1659461243.pdf'),
(160, 'Yuman Saput Azara', '', 'Muna', '2021-11-26', '2022-02-15', '2022-02-16', 'Salimudin Mutalib', 'Putri', 'Agustinawati', 2, 'terlambat', 'yuman_saput_azara_1659461319.pdf'),
(161, 'Wa Ode Ainul Qasya', '', 'Muna', '2017-06-30', '2022-02-07', '2022-02-11', 'Darmani', 'Wa Ode Surianti', 'Wa Ode Surianti', 2, 'terlambat', 'wa_ode_ainul_qasya_1659461396.pdf'),
(162, 'Muhammad Fahriansyah', '', 'Muna', '2022-01-15', '2022-02-10', '2022-02-11', 'Ferdi Ariyanto', 'Ayu Karmila', 'Ferdi Ariyanto', 2, 'umum', 'muhammad_fahriansyah_1659461481.pdf'),
(163, 'Salva Sabira', '', 'Muna', '2021-09-07', '2022-02-15', '2022-02-16', 'La Siane', 'Reski Amelia', 'La Siane', 2, 'terlambat', 'salva_sabira_1659461555.pdf'),
(164, 'Nada Elnara Sani', '', 'Muna', '2022-01-13', '2022-02-14', '2022-02-15', 'Sahrul Ahmad Gunawan', 'Wa Ode Nini', 'Wa Ode Nini', 2, 'umum', 'nada_elnara_sani_1659461699.pdf'),
(165, 'Adifa Ashalina Azahra', '', 'Raha', '2018-11-16', '2022-01-06', '2022-01-10', 'Aris', 'Nur Aisyah', 'Karia Wati', 2, 'terlambat', 'adifa_ashalina_azahra_1659461789.pdf'),
(166, 'Wa Ode Nasya Humairah Qianzy', '', 'Timika Jaya', '2021-02-20', '2022-02-14', '2022-02-14', 'La Ode Swardin', 'Wa Ode Zumarna Ningsi', 'La Ode Swardin', 2, 'terlambat', 'wa_ode_nasya_humairah_qianzy_1659461982.pdf'),
(167, 'Siti Salsabila', '', 'Dana', '2015-03-19', '2022-02-11', '2022-02-13', 'Iwal Rahayu', 'Ani Sintia', 'Wd. Siti Nurmaila', 2, 'terlambat', 'siti_salsabila_1659462101.pdf'),
(168, 'Anindira Maheswari', '', 'Raha', '2020-08-21', '2022-02-15', '2022-02-16', 'Nafsahudin', 'Nasrianti', 'Wa Ode Dara', 2, 'terlambat', 'anindira_maheswari_1659462205.pdf'),
(169, 'Aimul Musfiro', '', 'Danagoa', '2002-05-08', '2022-02-14', '2022-02-15', 'La Hakimu', 'Wa Haimu', 'L.M. Amnah', 2, 'terlambat', 'aimul_musfiro_1659462289.pdf'),
(170, 'Herlin', '', 'Matano Oe', '1990-11-28', '2022-02-15', '2022-02-17', 'La Baai', 'Wa Haiya', 'Rabiul', 2, 'terlambat', 'herlin_1659462362.pdf'),
(171, 'Gali Musyari', '', 'Tampo', '1998-06-26', '2022-02-08', '2022-02-14', 'Makmun', 'Hamlia Raona', 'Makmun', 3, 'terlambat', 'gali_musyari_1659462679.pdf'),
(172, 'La Ode Kapiko', '', 'Pure', '1943-07-01', '2022-02-08', '2022-02-11', 'La Ode Iro', 'Wa Nasihu', 'La Ode Kadafi', 3, 'terlambat', 'la_ode_kapiko_1659462813.pdf'),
(173, 'La Reli', '', 'Kasaka', '1941-04-04', '2021-12-24', '2022-01-10', 'La Rahi', 'Wa Djawa', 'Sarnia', 3, 'umum', 'la_reli_1659462949.pdf'),
(174, 'Wa Ode Asmuna', '', 'Raha', '1965-04-10', '2021-12-27', '2022-01-11', 'Ld. Ntobelo', 'Wd. Hali', 'Evi Elvianti', 3, 'umum', 'wa_ode_asmuna_1659463053.pdf'),
(175, 'Wa Hadaniah', '', 'Komba-Komba', '1975-10-24', '2022-02-09', '2022-02-15', 'La Gulu', 'Wa Baria', 'Rimuddin', 3, 'umum', 'wa_hadaniah_1659463137.pdf'),
(176, 'La Ode Sunarno', '', 'Tongkuno', '1958-07-01', '2022-02-08', '2022-02-15', 'La Ode Ngkudo', 'Wa Ode Mambo', 'M. Yatsar', 3, 'umum', 'la_ode_sunarno_1659463221.pdf'),
(177, 'Muhamad Andika', '', 'Napalakura', '2012-05-05', '2022-02-08', '2022-02-08', 'La Sali Hamara', 'Wa Ese', 'Ardiansah', 2, 'terlambat', 'muhamad_andika_1659463370.pdf'),
(178, 'Muhamad Rezki', '', 'Tampo', '2018-11-08', '2022-02-08', '2022-02-08', 'La Sali Hamara', 'Wa Ese', 'Ardiansah', 2, 'terlambat', 'muhamad_rezki_1659463432.pdf'),
(179, 'La Ode Abdul Hamizan Alif', '', 'Muna', '2021-03-16', '2022-02-07', '2022-02-09', 'La Ode Alif', 'Megawana', 'Miliana', 2, 'terlambat', 'la_ode_abdul_hamizan_alif_1659463515.pdf'),
(180, 'Hikma Fauzia', '', 'Napalakura', '2009-04-10', '2022-02-08', '2022-02-08', 'La Sali Hamara', 'Wa Ese', 'Ardiansah', 2, 'terlambat', 'hikma_fauzia_1659463663.pdf'),
(181, 'Sri Aulia', '', 'Napalakura', '2014-01-19', '2022-02-08', '2022-02-08', 'La Sali Hamara', 'Wa Ese', 'Ardiansah', 2, 'terlambat', 'sri_aulia_1659463708.pdf'),
(182, 'Beni Marselinus', '', 'Muna', '2019-08-04', '2022-02-07', '2022-02-10', 'La Koasi Syprianus', 'Felisia Regina', 'Wa Ode Sudarni', 2, 'terlambat', 'beni_marselinus_1659463791.pdf'),
(183, 'Raiza Aulia Riska', '', 'Muna', '2015-05-07', '2022-02-16', '2022-02-20', 'Safiudin', 'Sabangnia', 'Jamaludin', 2, 'terlambat', 'raiza_aulia_riska_1659464074.pdf'),
(184, 'Revilza Ananda Riska', '', 'Muna', '2017-07-14', '2022-02-16', '2022-02-20', 'Safiudin', 'Sabangnia', 'Jamaludin', 2, 'terlambat', 'revilza_ananda_riska_1659464284.pdf'),
(185, 'Muhammad Fadly', '', 'Laiworu', '2005-01-13', '2022-02-07', '2022-02-10', 'Anton', 'Sumarni', 'Muhammad Fadly', 2, 'terlambat', 'muhammad_fadly_1659464383.pdf'),
(186, 'Wa Faulia', '', 'Liabalano', '1965-12-31', '2022-02-09', '2022-02-14', 'La Buluru', 'Wa Tarifu', 'Wa Faulia', 2, 'terlambat', 'wa_faulia_1659464504.pdf'),
(187, 'Sitti Asriyah Jiwa', '', 'Raha', '2006-12-05', '2022-02-09', '2022-02-10', 'La Jiwa', 'Wa Ode Hadasia', 'Wa Ode Hadasia', 2, 'terlambat', 'sitti_asriyah_jiwa_1659464569.pdf'),
(188, 'Wa Ode Thias Septy Azahra', '', 'Muna', '2021-09-23', '2022-02-07', '2022-02-10', 'La Ode Sumadar', 'Yanti', 'Hasrawati', 2, 'terlambat', 'wa_ode_thias_septy_azahra_1659464641.pdf'),
(189, 'Dealova Putri Tian Waode', '', 'Muna', '2021-09-18', '2022-02-08', '2022-02-09', 'La Ode Muhammad Burhanudin', 'Kartini Zulhija', 'Boisandri', 2, 'terlambat', 'dealova_putri_tian_waode_1659464708.pdf'),
(190, 'Hanafia', '', 'Unsume', '1963-12-31', '2022-02-08', '2022-02-10', 'La Ode Kaefa', 'Hj. Wa Ode Mboi', 'Sardina', 2, 'terlambat', 'hanafia_1659464764.pdf'),
(191, 'Nafla Ardelia Putri', '', 'Muna', '2020-06-28', '2022-02-08', '2022-02-10', 'La Ode Mursalin', 'Hermidayani', 'La Firman', 2, 'terlambat', 'nafla_ardelia_putri_1659464819.pdf'),
(192, 'Faida Sabrina', '', 'Laimpi', '2021-11-06', '2022-02-07', '2022-02-08', 'Taufik Hidayat', 'Wa Ode Fitri', 'Wa Ode Fitri', 2, 'terlambat', 'faida_sabrina_1659465007.pdf'),
(193, 'Kaysan Al Fatih', '', 'Muna', '2022-01-05', '2022-02-08', '2022-02-08', 'Jumadin', 'Fitryaningsih', 'Yuliana Ervina Sumual', 2, 'umum', 'kaysan_al_fatih_1659465405.pdf'),
(194, 'Sitti Mayana', '', 'Watuputih', '1935-05-20', '2022-03-07', '2022-03-10', 'La Musa', 'Wa Ode Mahasifu', 'Muhammad Kamriddu', 3, 'umum', 'sitti_mayana_1659465563.pdf'),
(195, 'Abdul Malik', '', 'Muna', '2017-09-01', '2022-03-07', '2022-03-10', 'Muhammad Sirabbu', 'Marnawati', 'Wa Ode Sudarni', 2, 'terlambat', 'abdul_malik_1659465663.pdf'),
(196, 'Maulida Rosyada Hatta', '', 'Muna', '2021-10-24', '2022-03-08', '2022-03-10', 'Muh. Hatta QH', 'Rabiatun Adawiah QH', 'Muh. Hatta QH', 2, 'umum', 'maulida_rosyada_hatta_1659465776.pdf'),
(197, 'Taufik Hidayat', '', 'Muna', '2021-11-25', '2022-03-04', '2022-03-06', 'Janina', 'Siti Fatimah', 'Siti Fatimah', 2, 'terlambat', 'taufik_hidayat_1659465859.pdf'),
(198, 'Nahdatul Haya', '', 'Muna', '2021-08-08', '2022-03-08', '2022-03-10', 'La Ngkolu', 'Wa Ada', 'Wd. Siti Nurmaila', 2, 'terlambat', 'nahdatul_haya_1659465971.pdf'),
(199, 'Muhamad Safar Pratama', '', 'Muna', '2020-03-10', '2022-03-08', '2022-03-10', 'Syawaludin', 'Falni', 'Hasman Husein', 2, 'terlambat', 'muhamad_safar_pratama_1659466046.pdf'),
(200, 'Muhamad Azlee Al Azmin', '', 'Muna', '2020-11-13', '2022-03-01', '2022-03-04', 'Khairul Azmin', 'Rusmawati Sihotang', 'La Kara', 2, 'terlambat', 'muhamad_azlee_al_azmin_1659466133.pdf'),
(201, 'Nayra', '', 'Muna', '2020-08-11', '2022-03-08', '2022-03-10', 'La Ode Aris', 'Asmin', 'La Firman', 2, 'terlambat', 'nayra_1659466182.pdf'),
(202, 'Ade Rizqa Ilmawanty', '', 'Tombula', '2000-03-27', '2022-03-08', '2022-03-10', 'La Bunta', 'Suriana', 'Tuti Damayanti', 2, 'terlambat', 'ade_rizqa_ilmawanty_1659466265.pdf'),
(203, 'Nurul Almahyra Yumna', '', 'Muna', '2021-01-01', '2022-02-08', '2022-02-13', 'Herman', 'Nuzaifah Samsir', 'La Firman', 2, 'terlambat', 'nurul_almahyra_yumna_1659466331.pdf'),
(204, 'Rahma Zumlia Hazar', '', 'Lawama', '2010-02-23', '2022-03-07', '2022-03-12', 'Bariuddin', 'Salma', 'Hamida', 2, 'terlambat', 'rahma_zumlia_hazar_1659466392.pdf'),
(205, 'Asyiran Yanti', '', 'Muna', '2020-03-14', '2022-03-08', '2022-03-08', 'Muhammad Fandi', 'Waode Zulianti', 'Yuliana Ervina Sumual', 2, 'terlambat', 'asyiran_yanti_1659466450.pdf'),
(206, 'La Bulu', '', 'Wakorumba', '1945-02-25', '2022-02-02', '2022-02-10', 'La Ode Kulahi', 'Swa Isani', 'La Tabaruddin', 2, 'terlambat', 'la_bulu_1659466583.pdf'),
(207, 'Fathan Abiyaz', '', 'Raha', '2022-01-21', '2022-02-07', '2022-02-10', 'Safari', 'Rosni Karmongka', 'Wa Ode Mahrani', 2, 'umum', 'fathan_abiyaz_1659466705.pdf'),
(208, 'Gilberth Zionathan Ismail', '', 'Muna', '2021-10-26', '2022-02-07', '2022-02-07', 'La Marusu', 'Lisbet Ismail', 'Yuliana Ervina Sumual', 2, 'terlambat', 'gilberth_zionathan_ismail_1659466775.pdf'),
(209, 'Nesya Tri Zahra', '', 'Muna', '2021-05-14', '2022-02-07', '2022-02-09', 'Heri Suharsono', 'Salni', 'Hariono', 2, 'terlambat', 'nesya_tri_zahra_1659466841.pdf'),
(210, 'Nur Akma Syafika', '', 'Raha', '2008-03-31', '2022-02-07', '2022-02-09', 'Darmani', 'Wa Ode Surianti', 'Wa Ode Surianti', 2, 'terlambat', 'nur_akma_syafika_1659466909.pdf'),
(211, 'Muhammad Findra Chayani', '', 'Motewe', '2002-10-15', '2022-02-07', '2022-02-10', 'Darmani', 'Wa Ode Surianti', 'Wa Ode Surianti', 2, 'terlambat', 'muhammad_findra_chayani_1659466969.pdf'),
(212, 'Anggun Triatmi', '', 'Motewe', '2005-06-01', '2022-02-07', '2022-02-10', 'Darmani', 'Wa Ode Surianti', 'Wa Ode Surianti', 2, 'terlambat', 'anggun_triatmi_1659467035.pdf'),
(213, 'Selvi Friskawati', '', 'Motewe', '2000-09-06', '2022-02-07', '2022-02-10', 'Darmani', 'Wa Ode Surianti', 'Wa Ode Surianti', 2, 'terlambat', 'selvi_friskawati_1659467082.pdf'),
(214, 'Millatul Ulya Faroid', '', 'Kendari', '2020-06-13', '2022-02-04', '2022-02-07', 'Abdillah Fakar Faroid', 'Nasni', 'Ahmad Mujadid', 2, 'terlambat', 'millatul_ulya_faroid_1659467230.pdf'),
(215, 'La Ode Shazad Al Maruf', '', 'Muna', '2021-01-26', '2022-01-07', '2022-01-10', 'Bil Maruf Filiu', 'Yuslina', 'Gratischa Vhi Maani', 2, 'terlambat', 'la_ode_shazad_al_maruf_1659467330.pdf'),
(216, 'Narlia', '', 'Lohia', '1975-05-12', '2022-02-07', '2022-02-10', 'La Pombali', 'Wa Mini', 'Narlia', 2, 'terlambat', 'narlia_1659467407.pdf'),
(217, 'Clarissa Revalina Aponno', '', 'Muna', '2021-06-28', '2022-02-07', '2022-02-07', 'Boby Aponno', 'Eka Mariati', 'Yuliana Ervina Sumual', 2, 'terlambat', 'clarissa_revalina_aponno_1659467487.pdf'),
(218, 'Irjan', '', 'Raha', '2021-01-06', '2022-02-07', '2022-02-10', 'Firman', 'Erlianti', 'Firman', 2, 'terlambat', 'irjan_1659467549.pdf'),
(219, 'Amira Adawiyah', '', 'Muna', '2020-02-08', '2022-02-07', '2022-02-10', 'La Ode Ferusu', 'Herawati', 'Moh. Arifudin Daamu', 2, 'terlambat', 'amira_adawiyah_1659467628.pdf'),
(220, 'Alayya Zahiratul Ulya', '', 'Muna', '2017-03-25', '2022-02-07', '2022-02-10', 'La Ode Ferusu', 'Herawati', 'Moh. Arifudin Daamu', 2, 'terlambat', 'alayya_zahiratul_ulya_1659467693.pdf'),
(221, 'La Koso', '', 'Tewehu', '1976-07-01', '2022-03-07', '2022-03-10', 'La Hadu', 'Wa Riamu', 'Wa Ode Nurlia', 3, 'terlambat', 'la_koso_1659501071.pdf'),
(222, 'Wa Sanaria', '', 'Dana', '1975-07-01', '2022-03-07', '2022-03-10', 'La Mihani', 'Wa Darumi', 'Wa Ode Siti Nurmaila', 3, 'umum', 'wa_sanaria_1659501201.pdf'),
(223, 'La Maini', '', 'Wou', '1958-07-01', '2022-03-07', '2022-03-10', 'La Dana', 'Wa Doi', 'Heniman', 3, 'umum', 'la_maini_1659501275.pdf'),
(224, 'Nurmia', '', 'Muna', '2021-03-10', '2022-03-07', '2022-03-10', 'Hariono', 'Endang', 'Ice Firawati', 2, 'terlambat', 'nurmia_1659501384.pdf'),
(225, 'Saryan Al Faqih', '', 'Wakorumba', '2020-11-15', '2022-02-07', '2022-02-08', 'Jumran', 'Ani Felsari', 'La Tabaruddin', 2, 'terlambat', 'saryan_al_faqih_1659501482.pdf'),
(226, 'La Ode Muhamad Fahril', '', 'Muna', '2021-06-06', '2022-03-07', '2022-03-08', 'La Ode Sadam Sirai', 'Aulia Fadila', 'Sarwati', 2, 'terlambat', 'la_ode_muhamad_fahril_1659501573.pdf'),
(227, 'Alvino Sulaiman', '', 'Muna', '2018-05-01', '2022-03-04', '2022-03-07', 'Muhamad Kabir', 'Rista', 'Ramadhan Munadar Kuti', 2, 'terlambat', 'alvino_sulaiman_1659501632.pdf'),
(228, 'Laode Muhamad Rittam', '', 'Laino', '1976-08-15', '2022-02-07', '2022-02-10', 'Laode Adi', 'Wa Aza', 'Laode Muhamad Rittam', 2, 'terlambat', 'laode_muhamad_rittam_1659501734.pdf'),
(229, 'Sarah Qadriyyah Indea', '', 'Muna', '2020-07-16', '2022-03-04', '2022-03-07', 'Muhamad Kabir', 'Rista', 'Ramadhan Munadar Kuti', 2, 'terlambat', 'sarah_qadriyyah_indea_1659501813.pdf'),
(230, 'Muhammad Fardan', '', 'Muna', '2021-12-07', '2022-03-07', '2022-03-10', 'Rizal', 'Asmawati', 'Muhammad Pahri', 2, 'terlambat', 'muhammad_fardan_1659501881.pdf'),
(231, 'Nurhidayat', '', 'Tongkuno', '2004-07-22', '2022-03-07', '2022-03-10', 'La Dini', 'Rusnida', 'Ridwan Dupanda', 2, 'terlambat', 'nurhidayat_1659501958.pdf'),
(232, 'Puja Mawadah', '', 'Tongkuno', '2006-12-07', '2022-03-07', '2022-03-10', 'La Dini', 'Rusnida', 'Ridwan Dupanda', 2, 'terlambat', 'puja_mawadah_1659502012.pdf'),
(233, 'Fais', '', 'Lakandito', '2014-11-19', '2022-02-07', '2022-02-08', 'Aris Syaid', 'Siti Nurhaida', 'Rusmiati', 2, 'terlambat', 'fais_1659502110.pdf'),
(234, 'Makmuna Fatima Khairunnisa', '', 'Korihi', '2020-02-02', '2022-03-07', '2022-03-08', 'Darwis Tono', 'Mirna', 'Ali Imran', 2, 'terlambat', 'makmuna_fatima_khairunnisa_1659502182.pdf'),
(235, 'Afifa Khairun Nisa', '', 'Muna', '2021-08-09', '2022-02-07', '2022-02-08', 'Aris Syaid', 'Siti Nurhaida', 'Rusniati', 2, 'terlambat', 'afifa_khairun_nisa_1659502262.pdf'),
(236, 'Anindya Fahira', '', 'Muna', '2021-09-19', '2022-03-02', '2022-03-07', 'Julianto Setiawan', 'Rahayu Aprianti', 'La Ode Mondo', 2, 'terlambat', 'anindya_fahira_1659502339.pdf'),
(237, 'Keysya Saputri', '', 'Laiba', '2021-03-24', '2022-03-07', '2022-03-08', 'Mustafa', 'Sardalena', 'Sardalena', 2, 'terlambat', 'keysya_saputri_1659502407.pdf'),
(238, 'Siti Nafisa', '', 'Lamapo', '2017-11-29', '2022-03-07', '2022-03-08', 'La Ode Arifin', 'Husna', 'Sardalena', 2, 'terlambat', 'siti_nafisa_1659502498.pdf'),
(239, 'Alryan', '', 'Muna', '2017-10-11', '2022-03-07', '2022-03-08', 'Jumail', 'Sumiati', 'Siti Muntilah', 2, 'terlambat', 'alryan_1659502558.pdf'),
(240, 'Sulfiana', '', 'Muna', '2016-01-10', '2022-03-07', '2022-03-08', 'Jumail', 'Sumiati', 'Siti Muntilah', 2, 'terlambat', 'sulfiana_1659502607.pdf'),
(241, 'Riska Amelia', '', 'Muna', '2014-02-15', '2022-03-07', '2022-03-08', 'Abdullah', 'Nurhana', 'Siti Muntilah', 2, 'terlambat', 'riska_amelia_1659502659.pdf'),
(242, 'Sandrina Putri Anto', '', 'Bau-Bau', '2021-12-19', '2022-02-07', '2022-02-08', 'Sari Anto', 'Wa Saena', 'La Opa', 2, 'terlambat', 'sandrina_putri_anto_1659502720.pdf'),
(243, 'Muhammad Abrisam Izadin', '', 'Muna', '2021-06-28', '2022-03-07', '2022-03-08', 'Saharudin', 'Risna', 'La Ode Rafiudin', 2, 'terlambat', 'muhammad_abrisam_izadin_1659502797.pdf'),
(244, 'Wa Ode Filda Mayanti', '', 'Larobay', '2010-06-04', '2022-03-07', '2022-03-08', 'Laode Ndoke', 'Waode Ndopili', 'Laode Ndoke', 2, 'terlambat', 'wa_ode_filda_mayanti_1659502933.pdf'),
(245, 'Lini', '', 'Tobea Besar', '1975-11-24', '2022-03-04', '2022-03-07', 'Lalipa', 'Wahawani', 'Lini', 2, 'terlambat', 'lini_1659503010.pdf'),
(246, 'Abdul Rahman', '', 'Muna', '2017-02-08', '2022-02-11', '2022-02-14', 'La Ndisafa', 'Suwarti', 'La Usman Wado', 2, 'terlambat', 'abdul_rahman_1659503098.pdf'),
(247, 'Bilal Rezkila Mumin', '', 'Raha', '2017-05-17', '2022-03-02', '2022-03-02', 'Mumin', 'Wa Ode Niati', 'Kadania', 2, 'terlambat', 'bilal_rezkila_mumin_1659503176.pdf'),
(248, 'Haikal', '', 'Muna', '2006-04-05', '2022-02-11', '2022-02-11', 'La Ndisafa', 'Suwarti', 'La Usman Wado', 2, 'terlambat', 'haikal_1659503233.pdf'),
(249, 'Hannas', '', 'Muna', '2007-06-11', '2022-02-11', '2022-02-11', 'La Ndisafa', 'Suwarti', 'La Usman Wado', 2, 'terlambat', 'hannas_1659503295.pdf'),
(250, 'Iyaz Safatri', '', 'Muna', '2009-10-09', '2022-02-11', '2022-02-11', 'La Ndisafa', 'Suwarti', 'La Usman Wado', 2, 'terlambat', 'iyaz_safatri_1659503354.pdf'),
(251, 'Muhammad Zhafran Alfarizqi', '', 'Muna', '2022-01-27', '2022-03-07', '2022-03-07', 'La Ode Ndimalman', 'Wa Umi', 'Jahida', 2, 'umum', 'muhammad_zhafran_alfarizqi_1659503491.pdf'),
(252, 'Nabila Risqiana Ningrum', '', 'Muna', '2022-02-26', '2022-03-07', '2022-03-07', 'Nugroho Budi Susanto', 'Rosmianti', 'Wa Ode Dara', 2, 'umum', 'nabila_risqiana_ningrum_1659503553.pdf'),
(253, 'Nuria Zahida', '', 'Muna', '2021-07-15', '2022-03-07', '2022-03-07', 'Suhadar', 'Harni', 'Wa Ode Dara', 2, 'terlambat', 'nuria_zahida_1659503607.pdf'),
(254, 'Qiana Syafira', '', 'Kanapa-Napa', '2022-02-24', '2022-03-07', '2022-03-07', 'Ahmad Iradat', 'Ratna Matta', 'Ahmad Iradat', 2, 'umum', 'qiana_syafira_1659503753.pdf'),
(255, 'Zahra Islamiah Mumin', '', 'Muna', '2013-12-17', '2022-03-02', '2022-03-04', 'Mumin', 'Wa Ode Niati', 'Kadania', 2, 'terlambat', 'zahra_islamiah_mumin_1659503875.pdf'),
(256, 'Wa Ode Pia', '', 'Kasaka', '1954-12-31', '2022-01-24', '2022-02-03', 'La Ode Ombo', 'Wa Ode Fakiira', 'La Ngkana', 3, 'umum', 'wa_ode_pia_1659503996.pdf'),
(257, 'Wa Ode Ramlala', '', 'Raha', '1984-08-17', '2022-01-12', '2022-01-13', 'La Ode Ifu', 'Fatma Sang Dg Taring', 'Usman', 3, 'umum', 'wa_ode_ramlala_1659504183.pdf'),
(258, 'Murni Sulaeman', '', 'Batui', '1955-12-31', '2022-01-13', '2022-01-20', 'Sulaeman', 'Umi Kalsum', 'Ahmad Mujadid', 2, 'terlambat', 'murni_sulaeman_1659504289.pdf'),
(259, 'Ikhwan Safutra Siyoga', '', 'Wabintingi', '2006-03-14', '2022-01-31', '2022-02-03', 'La Ode Safiuddin', 'Hasnawati', 'Hasnawati', 2, 'terlambat', 'ikhwan_safutra_siyoga_1659504362.pdf'),
(260, 'Afifah Khairunnisa', '', 'Muna', '2021-12-10', '2022-01-25', '2022-02-03', 'La Mail', 'Wa Ode Merlina', 'Hairin', 2, 'terlambat', 'afifah_khairunnisa_1659504425.pdf'),
(261, 'Ad Dhuha Athaillah', '', 'Raha', '2019-11-04', '2022-01-25', '2022-01-30', 'Agus', 'Nurfatima', 'Sitti Murni', 2, 'umum', 'ad_dhuha_athaillah_1659504512.pdf'),
(262, 'Riska Agus Tina ', '', 'Ghonsume', '2001-02-20', '2022-01-28', '2022-01-30', 'La Engko', 'Munaria', 'Herman', 2, 'terlambat', 'riska_agus_tina_1659504581.pdf'),
(263, 'Muhamad Hanivan', '', 'Laloya', '2005-12-11', '2022-02-04', '2022-02-07', 'La Mahudi', 'Wa Halima', 'Lisa Adum Prasetya', 2, 'terlambat', 'muhamad_hanivan_1659504701.pdf'),
(264, 'Zahra Anggraini', '', 'Muna', '2016-11-29', '2022-01-12', '2022-01-15', 'La Hamidi', 'Wa Ode Arni', 'La Kara', 2, 'terlambat', 'zahra_anggraini_1659504788.pdf'),
(265, 'Muhammad Ariqin', '', 'Muna', '2020-12-22', '2022-01-04', '2022-01-05', 'Sabrin', 'Anna Azaro', 'La Subuha', 2, 'terlambat', 'muhammad_ariqin_1659505051.pdf'),
(266, 'La Ode Rajen Toinda', '', 'Raha', '2001-07-16', '2022-02-04', '2022-02-05', 'La Ode Muhamad Askar', 'Wa Ode Dersianti', 'La Ode Muhamad Askar', 2, 'terlambat', 'la_ode_rajen_toinda_1659505169.pdf'),
(267, 'Wa Ode Anastasia Septiana', '', 'Kendari', '1999-09-25', '2022-02-04', '2022-02-05', 'La Ode Muhamad Askar', 'Wa Ode Dersianti', 'La Ode Muhamad Askar', 2, 'terlambat', 'wa_ode_anastasia_septiana_1659505286.pdf'),
(268, 'Wa Ode Nratu Santila', '', 'Raha', '2007-08-02', '2022-02-04', '2022-02-05', 'La Ode Muhamad Askar', 'Wa Ode Dersianti', 'La Ode Muhamad Askar', 2, 'terlambat', 'wa_ode_nratu_santila_1659505362.pdf'),
(269, 'La Tabara', '', 'Malainea', '1961-12-31', '2022-01-07', '2022-01-10', 'La Manumpasa', 'Wa Lefaahu', 'Nurlia', 3, 'terlambat', 'la_tabara_1659505535.pdf'),
(270, 'La Nudi', '', 'Wataliku', '1959-12-31', '2022-01-07', '2022-01-10', 'La Maringki', 'Wa Leja', 'Ali Syawaludin', 3, 'umum', 'la_nudi_1659505646.pdf'),
(271, 'La Ode Ifa', '', 'Tampo', '1958-08-05', '2021-12-30', '2022-01-04', 'La Ode Mbaruna', 'Wa Tafiina', 'Wa Ode Ndowuna', 3, 'terlambat', 'la_ode_ifa_1659505715.pdf'),
(272, 'Wa Mayana', '', 'Muna', '1942-07-01', '2022-01-06', '2022-01-10', 'La Ingke', 'Wa Ogha', 'Asrun', 3, 'terlambat', 'wa_mayana_1659505864.pdf'),
(273, 'Sitti Yusnani Mando', '', 'Langkolome', '1979-05-21', '2022-01-05', '2022-01-05', 'La Ode Mando', 'Wa Ode Zaria', 'Amirul', 2, 'terlambat', 'sitti_yusnani_mando_1659507475.pdf'),
(274, 'Muhammad Bilal Al Fatih', '', 'Muna', '2021-08-25', '2022-01-07', '2022-01-10', 'Siswan', 'Indra Purnama', 'Wa Ode Siti Nurmaila', 2, 'terlambat', 'muhammad_bilal_al_fatih_1659507563.pdf'),
(275, 'Raid Asadel Baruta', '', 'Muna', '2021-08-09', '2022-01-07', '2022-01-10', 'La Ode Usman', 'Juni Hastati', 'Tuti Damayanti', 2, 'terlambat', 'raid_asadel_baruta_1659507641.pdf'),
(276, 'Aninda Wulandari Aksan', '', 'Muna Barat', '2021-12-13', '2022-01-07', '2022-01-10', 'Muhamad Aksan Akbar', 'Wa Ode Nirwana', 'Muhamad Aksan Akbar', 2, 'terlambat', 'aninda_wulandari_aksan_1659507793.pdf'),
(277, 'Suci Ayudia Zoya', '', 'Muna', '2020-06-12', '2022-01-05', '2022-01-07', 'Sumei Rubu', 'Wa Ode Idiawati', 'Wa Ode Idiawati', 2, 'terlambat', 'suci_ayudia_zoya_1659507874.pdf'),
(278, 'Muhamad Alif Ardiansyah', '', 'Muna', '2019-12-06', '2022-01-07', '2022-01-10', 'Maulid', 'Zarida', 'Maulid', 2, 'terlambat', 'muhamad_alif_ardiansyah_1659507975.pdf'),
(279, 'Abdul Qashid An Nafi', '', 'Muna', '2021-12-20', '2022-01-07', '2022-01-10', 'Zulham Sakoyama', 'Julianti', 'Rusniati', 2, 'terlambat', 'abdul_qashid_an_nafi_1659508062.pdf'),
(280, 'Syakilah Atmarini', '', 'Muna', '2020-07-11', '2022-01-07', '2022-01-10', 'Ahmad', 'Darmawati', 'Wa Ode Sudarni', 2, 'terlambat', 'syakilah_atmarini_1659508164.pdf'),
(281, 'Ridwan Dulu', '', 'Walambeno Wite', '2000-08-28', '2022-01-07', '2022-01-10', 'La Dulu', 'Wa Saba', 'Hairil', 2, 'terlambat', 'ridwan_dulu_1659508235.pdf'),
(282, 'La Ode Muhamad Satria', '', 'Bone Kancitala', '2012-01-30', '2022-01-07', '2022-01-10', 'Mustafir', 'Sitti Sabaria', 'Sardina', 2, 'terlambat', 'la_ode_muhamad_satria_1659508316.pdf'),
(283, 'Wa Ode Syafatri Pramadhani', '', 'Bone Kancitala', '2016-06-02', '2022-01-07', '2022-01-10', 'Mustafir', 'Sitti Sabaria', 'Sardina', 2, 'terlambat', 'wa_ode_syafatri_pramadhani_1659508401.pdf'),
(284, 'Popi Listina', '', 'Bone Kancitala', '2003-12-11', '2022-01-07', '2022-01-10', 'La Liku', 'Wa Sanati', 'Kafnatal', 2, 'terlambat', 'popi_listina_1659508496.pdf'),
(285, 'Ahmad El Gibran Ramadhan', '', 'Muna', '2021-01-03', '2022-01-07', '2022-01-10', 'Ramadhan Munandar Kuti', 'Wa Ode Novi Ulviani', 'Ramadhan Munadar Kuti', 2, 'terlambat', 'ahmad_el_gibran_ramadhan_1659508591.pdf'),
(286, 'Akhmad Kautsar Demokrasi', '', 'Pure', '1997-05-29', '2022-01-07', '2022-01-08', 'La Lombo', 'Samsiah', 'Wa Ila', 2, 'terlambat', 'akhmad_kautsar_demokrasi_1659508659.pdf'),
(287, 'La Ode Al Mulki', '', 'Muna', '2022-01-05', '2022-01-07', '2022-01-08', 'Sofian', 'Sitti Aisyah', 'Sofian', 2, 'umum', 'la_ode_al_mulki_1659508774.pdf'),
(288, 'La Ode Husman', '', 'Tampo', '1995-03-16', '2022-01-06', '2022-01-07', 'La Ode Uji', 'Wa Ode Dia', 'La Ode Husman', 2, 'terlambat', 'la_ode_husman_1659509246.pdf'),
(289, 'Wa Ode Salmawati', '', 'Pure', '1986-02-15', '2022-04-06', '2022-04-08', 'La Ode Muhammad Safsauddin', 'Wa Ode Sonihi', 'La Ode Muhammad Safsauddin', 3, 'umum', 'wa_ode_salmawati_1659509508.pdf'),
(290, 'La Sumanta', '', 'Mantobua', '1978-08-04', '2022-04-05', '2022-04-06', 'La Rimu', 'Wa Tamoa', 'Arni', 3, 'terlambat', 'la_sumanta_1659509589.pdf'),
(291, 'Wa Ode Madima', '', 'Lohiya', '1949-07-01', '2022-04-06', '2022-04-08', 'La Ode Ona', 'Wa Ifa', 'Wa Ode Rahmawati Mpuno', 3, 'umum', 'wa_ode_madima_1659509654.pdf'),
(292, 'Achmad Fabian Shakeyl', '', 'Muna', '2018-03-28', '2022-03-31', '2022-04-04', 'Muhamad Ipong', 'Nur Ayni', 'Ice Firawati', 2, 'terlambat', 'achmad_fabian_shakeyl_1659509900.pdf'),
(293, 'La Ode Arsteven Sarfin', '', 'Muna', '2021-05-30', '2022-04-05', '2022-04-06', 'Asdar Safin', 'Fatih', 'Salning Satrianing', 2, 'terlambat', 'la_ode_arsteven_sarfin_1659510005.pdf'),
(294, 'Alifa Septiani', '', 'Muna', '2017-09-21', '2022-04-04', '2022-04-06', 'Asdar Sarfin', 'Fatih', 'Salning Satrianing', 2, 'terlambat', 'alifa_septiani_1659510080.pdf'),
(295, 'Herdi Febriyan', '', 'Muna', '2022-02-07', '2022-04-06', '2022-04-10', 'Agus Suwondo', 'Elvina', 'Sati', 2, 'terlambat', 'herdi_febriyan_1659510150.pdf'),
(296, 'Ira Wati', '', 'Lapole', '2002-12-20', '2022-04-05', '2022-04-06', 'La Ifu', 'Maemuna', 'Ira Wati', 2, 'terlambat', 'ira_wati_1659510211.pdf'),
(297, 'Trhy Arya Pamungkas Rahmat Putra', '', 'Raha', '2004-06-03', '2021-10-22', '2021-10-23', 'La Ode Abdul Rahmat', 'Ani Nirwana', 'Trhy Arya Pamungkas Rahmat Putra', 2, 'terlambat', 'trhy_arya_pamungkas_rahmat_putra_1659510322.pdf'),
(298, 'Bastaman Sujono', '', 'Raha', '1989-09-24', '2022-04-05', '2022-04-06', 'La Ode Mansolo Mondo', 'Wa Ode Kartina', 'Hikmawati', 2, 'terlambat', 'bastaman_sujono_1659510482.pdf');
INSERT INTO `arsip` (`id`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `tanggal_berkas`, `tanggal_ambil`, `nama_ayah`, `nama_ibu`, `pelapor`, `kategori_id`, `keterangan`, `file`) VALUES
(299, 'Farnaz Shafana', '', 'Muna', '2021-11-13', '2022-04-06', '2022-04-10', 'Muhamad Fahrul Zabur', 'Desri Asfrianti Damin', 'Boisandri', 2, 'terlambat', 'farnaz_shafana_1659510607.pdf'),
(300, 'Fatur Rahman', '', 'Jayapura', '2019-09-12', '2022-04-05', '2022-04-06', 'Abdul Syukur', 'Fariani', 'Abdul Syukur', 2, 'terlambat', 'fatur_rahman_1659510660.pdf'),
(301, 'Arzaqi Rafan Pradipta', '', 'Muna', '2021-10-25', '2022-04-05', '2022-04-06', 'Abdul Rahman', 'Silvi Raudia', 'La Ode Banti', 2, 'terlambat', 'arzaqi_rafan_pradipta_1659510732.pdf'),
(302, 'Filani Akmar', '', 'Raha', '2003-05-20', '2022-04-06', '2022-04-07', 'La Bake', 'Wa Ode Marlini', 'Muhamad Darkapi', 2, 'terlambat', 'filani_akmar_1659510789.pdf'),
(303, 'Muslim', '', 'Tampo', '1972-01-07', '2022-04-06', '2022-04-07', 'La Ode Owa', 'Wa Ode Ndiri', 'Muslim', 2, 'terlambat', 'muslim_1659510846.pdf'),
(304, 'La Ode Muhammad Alzidan', '', 'Muna', '2022-01-02', '2022-04-06', '2022-04-07', 'La Ode Ihsar', 'Sartika', 'La Ode Ihsar', 2, 'terlambat', 'la_ode_muhammad_alzidan_1659510913.pdf'),
(305, 'La Ode Muhammad Alzidan', '', 'Muna', '2022-01-02', '2022-04-06', '2022-04-07', 'La Ode Ihsar', 'Sartika', 'La Ode Ihsar', 2, 'terlambat', 'la_ode_muhammad_alzidan_1659510914.pdf'),
(306, 'Azizah Khairunniswah', '', 'Muna', '2021-03-07', '2022-04-05', '2022-04-06', 'Hasri', 'Hasni', 'Marlinda', 2, 'terlambat', 'azizah_khairunniswah_1659510971.pdf'),
(307, 'Adarah Keisya Salsabillah', '', 'Jayapura', '2019-11-27', '2022-04-05', '2022-04-06', 'Andi Buang', 'Yhulianingsih', 'Hikmawati', 2, 'terlambat', 'adarah_keisya_salsabillah_1659511038.pdf'),
(308, 'Ali Munandar', '', 'Bau-Bau', '1998-03-23', '2022-04-06', '2022-04-07', 'La Ode Karia', 'Marni', 'Asbar', 2, 'terlambat', 'ali_munandar_1659511112.pdf'),
(309, 'Hikmal Akbar', '', 'Wansugi', '2005-06-10', '2022-03-21', '2022-03-21', 'Firman', 'Surida Yulianti', 'Hasman Husein', 2, 'terlambat', 'hikmal_akbar_1659511222.pdf'),
(310, 'Kadir', '', 'Lendeo', '1983-06-07', '2022-04-06', '2022-04-07', 'La Ode Halena', 'Wa Yana', 'Kadir', 2, 'terlambat', 'kadir_1659511277.pdf'),
(311, 'Satriani', '', 'Wakumoro', '2005-08-11', '2022-03-08', '2022-03-11', 'La Hasuju', 'Wa Ami', 'Erniati', 2, 'terlambat', 'satriani_1659511347.pdf'),
(312, 'Wa Milo', '', 'Muna', '2021-02-13', '2022-04-05', '2022-04-06', 'La Mele', 'Wa Ode Daru', 'Sadaria', 2, 'terlambat', 'wa_milo_1659511407.pdf'),
(313, 'Fiska', '', 'Muna', '2021-09-24', '2022-04-04', '2022-04-04', 'Ari Munanzar', 'Hasna Satriawati', 'Sitti Asriani', 2, 'terlambat', 'fiska_1659511495.pdf'),
(314, 'Zaatun Hasanah', '', 'Wakuru', '2004-03-27', '2022-04-05', '2022-04-06', 'Harba Ira', 'Nursia Fekiri', 'La Kara', 2, 'terlambat', 'zaatun_hasanah_1659511589.pdf'),
(315, 'Nur Hayati', '', 'Muna', '2021-06-28', '2022-04-05', '2022-04-06', 'La Hasiu', 'Lisdayanti', 'La Siri', 2, 'terlambat', 'nur_hayati_1659511644.pdf'),
(316, 'Muhamad Alwi', '', 'Pulau Renda', '2007-02-25', '2022-04-06', '2022-04-07', 'Nurman', 'Siula', 'Lisa Adum Prasetya', 2, 'terlambat', 'muhamad_alwi_1659511737.pdf'),
(317, 'La Adi', '', 'Warambe', '1994-09-04', '2022-04-04', '2022-04-05', 'La Tingka', 'Wa Naana', 'Wa Ode Bay', 2, 'terlambat', 'la_adi_1659511827.pdf'),
(318, 'Nurhasanah', '', 'Raha', '2009-07-20', '2022-04-06', '2022-04-07', 'La Ode Kenedi', 'Wa Ode Nasria', 'Sicillya Febriyanti Kennedy', 2, 'terlambat', 'nurhasanah_1659511911.pdf'),
(319, 'Fitratin', '', 'Tampunalele', '1967-12-31', '2022-01-06', '2022-01-15', 'Alimu', 'Wa Ape', 'Asriyapati', 3, 'terlambat', 'fitratin_1659512225.pdf'),
(320, 'La Minahi', '', 'Muna', '1932-12-31', '2022-01-06', '2022-01-08', 'La Pilisi', 'Wa Onda', 'Asrun', 3, 'terlambat', 'la_minahi_1659512305.pdf'),
(321, 'La Ode Ngkusa', '', 'Kabangka', '1964-07-01', '2021-01-06', '2021-01-08', 'La Ode Sausu', 'Wa Ode Mbeghona', 'Rusniati', 3, 'umum', 'la_ode_ngkusa_1659512384.pdf'),
(322, 'Wa Nora', '', 'Walengkabola', '1980-12-31', '2022-01-05', '2022-01-06', 'La Udia', 'Wa Sihima', 'La Ode Nabarudin', 3, 'terlambat', 'wa_nora_1659512523.pdf'),
(323, 'Hastri', '', 'Waara', '1992-07-26', '2022-01-05', '2022-01-06', 'La Mada', 'Wa Hamdia', 'Sukma', 3, 'terlambat', 'hastri_1659512581.pdf'),
(324, 'La Jangkonu', '', 'Kabangka', '1957-08-07', '2022-04-04', '2022-04-04', 'La Mboihi', 'Wa Rihani', 'M. Said', 3, 'terlambat', 'la_jangkonu_1659512701.pdf'),
(325, 'Rostini', '', 'Sumpuo', '1981-09-14', '2022-01-14', '2022-01-16', 'La Kada', 'Wa Ibara', 'Sitti Martini', 3, 'umum', 'rostini_1659512790.pdf'),
(326, 'Hamzah', '', 'Ambon', '1964-07-25', '2022-02-04', '2022-02-06', 'Basri', 'Wa Abe', 'Arwin Basri', 3, 'umum', 'hamzah_1659512888.pdf'),
(327, 'Arni Natalia', '', 'Raha', '1985-12-25', '2022-01-31', '2022-02-03', 'Ambo Sakka', 'Salawati', 'Arifin', 3, 'umum', 'arni_natalia_1659512959.pdf'),
(328, 'La Rongga', '', 'Tampo', '1957-07-01', '2022-01-29', '2022-02-02', 'La Baoha', 'Wa Daima', 'Wa Ode Ndowuna', 3, 'terlambat', 'la_rongga_1659513054.pdf'),
(329, 'La Ode Kamura', '', 'Lagadi', '1945-08-16', '2022-01-24', '2022-01-30', 'La Ode Abudu', 'Wa Ode Ipo', 'La Kara', 3, 'umum', 'la_ode_kamura_1659513149.pdf'),
(330, 'Wa Tanika', '', 'Dana', '1956-07-07', '2022-01-04', '2022-01-06', 'La Hanindi', 'Wa Meeke', 'La Ode Hasrul', 3, 'umum', 'wa_tanika_1659513215.pdf'),
(331, 'Abdul Syukur', '', 'Latongku', '1942-12-31', '2022-01-04', '2022-01-06', 'La Ifa', 'Wa Ngkefa', 'Oshin', 3, 'umum', 'abdul_syukur_1659513419.pdf'),
(332, 'La Ode Bolombo', '', 'Latongku', '1939-07-01', '2022-01-03', '2022-01-03', 'La Ode Ombou', 'Wa Ode Doke', 'Awal Jaya Bolombo', 3, 'umum', 'la_ode_bolombo_1659513509.pdf'),
(333, 'Laode Hamruddin', '', 'Tampunabale', '1950-07-12', '2022-03-03', '2022-03-05', 'La Ode Muh. Ashar', 'Wa Ode Baabe', 'Wa Sahina', 3, 'terlambat', 'laode_hamruddin_1659513635.pdf'),
(334, 'Sitti Nuria', '', 'Komba-Komba', '1954-07-01', '2022-02-03', '2022-02-05', 'La Ode Bolo', 'Wa Ode Ima', 'Muhammad Aslan', 3, 'umum', 'sitti_nuria_1659513711.pdf'),
(335, 'Putiah', '', 'Ambon', '1973-05-01', '2022-02-03', '2022-02-07', 'La Owe', 'Wa Fii', 'Muhammad Hendro Ode Byo', 3, 'terlambat', 'putiah_1659513803.pdf'),
(336, 'La Ode Maka', '', 'Tampo', '1931-07-01', '2022-01-03', '2022-01-06', 'La Ode Mahuni', 'Wa Ode Nuru Kamba', 'Wa Ode Ndowuna', 3, 'terlambat', 'la_ode_maka_1659513892.pdf'),
(337, 'La Ode Nsilai', '', 'Duruka', '1957-07-01', '2021-12-31', '2022-01-04', 'La Kasiki', 'Wa Ode Ranani', 'Narce Dewi', 3, 'terlambat', 'la_ode_nsilai_1659514298.pdf'),
(338, 'Wa Ode Dasma Sidi', '', 'Raha', '1983-05-25', '2022-01-03', '2022-01-06', 'La Ode Sidi', 'Wa Ode Iso', 'Muhammad Ikhsan Gerviahana Pangeran', 3, 'terlambat', 'wa_ode_dasma_sidi_1659514394.pdf'),
(339, 'Nur Iin Fatmala', '', 'Muna', '2021-01-13', '2022-01-03', '2022-01-04', 'Iksan Uzin', 'Alnia Kaapa', 'Iksan Uzin', 3, 'umum', 'nur_iin_fatmala_1659514495.pdf'),
(340, 'Hasiba', '', 'Tampo', '1955-12-29', '2021-12-30', '2022-01-03', 'Uda', 'Ndua', 'Wa Ode Ndowuna', 3, 'terlambat', 'hasiba_1659514558.pdf'),
(341, 'La Raali', '', 'Watuputih', '1960-07-01', '2022-03-04', '2022-03-10', 'La Sumaali', 'Wa Sihaafa', 'Nurhalia', 3, 'terlambat', 'la_raali_1659514676.pdf'),
(342, 'La Boholi', '', 'Labaluba', '1960-12-31', '2022-03-02', '2022-03-02', 'La Raema', 'Wa Iji', 'Siti Kamaria', 3, 'umum', 'la_boholi_1659514769.pdf'),
(343, 'Halmia', '', 'Pure', '1964-12-31', '2022-03-04', '2022-03-04', 'L. Mukmin', 'Wa Haninu', 'La Ningkiri', 3, 'umum', 'halmia_1659515037.pdf'),
(344, 'La Ode Tungo', '', 'Unsume', '1963-12-31', '2022-02-02', '2022-02-04', 'La Ode Ide', 'Wa Ghuri', 'Salvia', 3, 'terlambat', 'la_ode_tungo_1659515799.pdf'),
(345, 'Ilyas', '', 'Ujung Pandang', '1959-04-04', '2022-02-02', '2022-02-04', 'La Bali', 'Sitti Hawati', 'Andi M. Aksa', 3, 'umum', 'ilyas_1659515876.pdf'),
(346, 'La Saali', '', 'Kabangka', '1944-12-31', '2022-02-02', '2022-02-04', 'La Ode Nadia', 'Wa Ode Muru', 'Amsir', 3, 'umum', 'la_saali_1659515972.pdf'),
(347, 'La Hudia', '', 'Matanauwe', '1962-12-15', '2022-02-02', '2022-02-05', 'La Nai', 'Wa Djidji', 'Karmila Sari', 3, 'umum', 'la_hudia_1659516027.pdf'),
(348, 'Wa Ode Hanako', '', 'Watuputih', '1951-12-31', '2022-02-02', '2022-02-04', 'La Ode Ntaga', 'Wa Ode Onti', 'Sumarno', 3, 'umum', 'wa_ode_hanako_1659516090.pdf'),
(349, 'La Baula', '', 'Mabodo', '1940-07-01', '2022-01-27', '2022-02-02', 'La Taabi', 'Wa Maiji', 'Wa Ode Wuna', 3, 'terlambat', 'la_baula_1659516246.pdf'),
(350, 'La Majid', '', 'Koholifano', '1968-12-31', '2022-01-02', '2022-01-05', 'La Mbaake', 'Wa Daimbona', 'Nolysa', 3, 'umum', 'la_majid_1659516315.pdf'),
(351, 'Wa Simuna', '', 'Raha', '1999-12-31', '2022-01-31', '2022-02-02', 'La Ode Safii', 'Wasimuna', 'Wa Ode Pinasti', 3, 'umum', 'wa_simuna_1659516404.pdf'),
(352, 'Wa Ode Humaani', '', 'Masalili', '1930-07-01', '2022-03-01', '2022-03-07', 'Laode Rafau', 'Wa Niu', 'Fidiatun', 3, 'umum', 'wa_ode_humaani_1659516492.pdf'),
(353, 'La Kiki', '', 'Lohia', '1953-06-12', '2022-03-01', '2022-03-02', 'La Dangka', 'Wa Maani', 'Muhammad Saban', 3, 'umum', 'la_kiki_1659516548.pdf'),
(354, 'La Ode Erlangga', '', 'Muna', '1968-12-31', '2022-03-01', '2022-03-03', 'Laode Halisa', 'Waode Ira', 'Wa Hata', 3, 'umum', 'la_ode_erlangga_1659516605.pdf'),
(355, 'Sari Al Baidah Harianto Dundu', '', 'Wapunto', '2005-11-25', '2022-01-05', '2022-01-07', 'Harianto Darmin', 'Suwiati', 'Hasman Husein', 2, 'terlambat', 'sari_al_baidah_harianto_dundu_1659547886.pdf'),
(356, 'Muhamad Rasyid Ridho', '', 'Kendari', '2021-06-16', '2022-01-06', '2022-01-10', 'Hajarul Aswad', 'Fariani', 'La Kara', 2, 'terlambat', 'muhamad_rasyid_ridho_1659548003.pdf'),
(357, 'Fathian Akbar Ananda', '', 'Muna', '2021-12-19', '2022-01-06', '2022-01-10', 'Mardona', 'Wa Ode Seenda', 'Wa Ode Hasrawati', 2, 'umum', 'fathian_akbar_ananda_1659548195.pdf'),
(358, 'Nur Dzatiyah', '', 'Muna', '2021-05-10', '2022-01-06', '2022-01-10', 'La Silani', 'Wa Mini', 'Sitti Hartama', 2, 'terlambat', 'nur_dzatiyah_1659548377.pdf'),
(359, 'Wa Ode Sultiawati', '', 'Mabodo', '1997-04-27', '2022-01-06', '2022-01-10', 'La Ode Abu', 'Wa Wena', 'Sitti Hartama', 2, 'terlambat', 'wa_ode_sultiawati_1659548516.pdf'),
(360, 'La Ode Athar Al Ayyubi', '', 'Muna', '2021-03-27', '2022-01-06', '2022-01-10', 'La Ode Akhiri Zulzaman', 'Ferni', 'Sardina', 2, 'terlambat', 'la_ode_athar_al_ayyubi_1659548622.pdf'),
(361, 'Aidul Failudin', '', 'Rosundano', '2010-08-31', '2022-01-06', '2022-01-07', 'La Jiri', 'Wa Uli', 'Sardina', 2, 'terlambat', 'aidul_failudin_1659548696.pdf'),
(362, 'Siti Afika Hilyanafisah', '', 'Muna', '2020-05-28', '2022-01-06', '2022-01-06', 'Alfin', 'Elisa', 'Wa Ode Sudarni', 2, 'terlambat', 'siti_afika_hilyanafisah_1659548780.pdf'),
(363, 'Muhammad Syaban', '', 'Muna', '2020-04-13', '2022-01-06', '2022-01-06', 'Udin Karimu', 'Ade Rahayu', 'Tuti Damayanti', 2, 'terlambat', 'muhammad_syaban_1659548850.pdf'),
(364, 'Al Iksan Akbar Fatahillah', '', 'Latampu', '2003-09-13', '2022-01-06', '2022-01-06', 'Muhammad Rahmin', 'Sarlina', 'Al Iksan Akbar Fatahillah', 2, 'terlambat', 'al_iksan_akbar_fatahillah_1659548941.pdf'),
(365, 'Alfrits Tumengkol', '', 'Raha', '2006-10-10', '2022-01-06', '2022-01-06', 'Jant Je Tumengkol', 'Netty Mamentiwalo', 'Jan Je Tumengkol', 2, 'terlambat', 'alfrits_tumengkol_1659549067.pdf'),
(366, 'Lisdayanti', '', 'Bonea', '1983-10-21', '2022-01-04', '2022-01-06', 'La Hamlin', 'Wa Sarfia', 'Hardianto', 2, 'terlambat', 'lisdayanti_1659549221.pdf'),
(367, 'Muhammad Akbar Zia Rabbani', '', 'Muna', '2021-12-06', '2022-01-06', '2022-01-06', 'Muhamad Syahrin', 'Citra Sri Resky Galiana', 'Samsiana', 2, 'umum', 'muhammad_akbar_zia_rabbani_1659549310.pdf'),
(368, 'Muhammad Rizki Akhtar', '', 'Muna', '2022-01-04', '2022-01-06', '2022-01-06', 'Suhardi', 'Taslia', 'La Ode Darlin', 2, 'umum', 'muhammad_rizki_akhtar_1659549399.pdf'),
(369, 'Wa Ode Zamriati', '', 'Raha', '1991-09-02', '2022-01-06', '2022-01-06', 'La Ode Dati', 'Suhapi', 'Wa Ode Zamriati', 2, 'terlambat', 'wa_ode_zamriati_1659549521.pdf'),
(370, 'Zid Abdullah Belo', '', 'Muna', '2021-04-12', '2022-01-06', '2022-01-07', 'Rudi Wijaya', 'Farnia', 'Farnia', 2, 'terlambat', 'zid_abdullah_belo_1659549583.pdf'),
(371, 'Fathir Adiguna', '', 'Banjarmasin', '2003-12-30', '2022-04-05', '2022-04-06', 'Nasir Rumu', 'Pairah', 'Fathir Adiguna', 2, 'terlambat', 'fathir_adiguna_1659549681.pdf'),
(372, 'Muhammad Azka Abqary', '', 'Muna', '2022-02-28', '2022-04-05', '2022-04-06', 'Supardi', 'Meliza', 'Supardi', 2, 'umum', 'muhammad_azka_abqary_1659549758.pdf'),
(373, 'Rafael', '', 'Muna', '2022-02-05', '2022-03-23', '2022-03-26', 'Al Fijai', 'Rita', 'Mirsan', 2, 'umum', 'rafael_1659549818.pdf'),
(374, 'Sa\'ad Al Hasan Desmanda', '', 'Muna', '2021-01-21', '2022-04-05', '2022-04-06', 'Rachdian Desmanda', 'Susiati', 'Abdul Halik', 2, 'terlambat', 'saad_al_hasan_desmanda_1659550230.pdf'),
(375, 'Sa\'id Al Husein Desmanda', '', 'Muna', '2021-01-21', '2022-04-05', '2022-04-06', 'Rachdian Desmanda', 'Susiati', 'Abdul Halik', 2, 'terlambat', 'said_al_husein_desmanda_1659550293.pdf'),
(376, 'Maudy Khairunnisa', '', 'Muna', '2021-07-16', '2022-04-04', '2022-04-04', 'Saprillian', 'Tri Usmin', 'Boisandri', 2, 'terlambat', 'maudy_khairunnisa_1659550393.pdf'),
(377, 'Radeffa Jaza Maqhalhy', '', 'Bonea', '2014-12-24', '2022-04-04', '2022-04-06', 'Edi Eka Saputra', 'Fitri Yanti', 'Wa Ode Mahram', 2, 'terlambat', 'radeffa_jaza_maqhalhy_1659550488.pdf'),
(378, 'Nola Dwi Cahya', '', 'Lagasa', '2000-02-02', '2022-04-05', '2022-04-06', 'Usman', 'Karsina', 'Nola Dwi Cahya', 2, 'terlambat', 'nola_dwi_cahya_1659550556.pdf'),
(379, 'Amirah Diah Karsa', '', 'Muna', '2022-02-22', '2022-04-05', '2022-04-05', 'Ahmad Karsa', 'Diana Nun', 'Wa Ode Dara', 2, 'umum', 'amirah_diah_karsa_1659550628.pdf'),
(380, 'Afendi Musa', '', 'Raha', '2001-04-01', '2022-04-04', '2022-04-05', 'La Ode Daano', 'Satiem', 'La Ode Asis Musafar', 2, 'terlambat', 'afendi_musa_1659550714.pdf'),
(381, 'La Ode Abdul Hafiz', '', 'Labulu-Bulu', '2005-08-17', '2022-04-04', '2022-04-05', 'La Ode Daano', 'Satiem', 'La Ode Asis Musafar', 2, 'terlambat', 'la_ode_abdul_hafiz_1659550806.pdf'),
(382, 'Abdul Hoir', '', 'Kendari', '1995-05-11', '2022-04-04', '2022-04-04', 'La Ode Daano', 'Satiem', 'La Ode Asis Musafar', 2, 'terlambat', 'abdul_hoir_1659550875.pdf'),
(383, 'Ahmad Ma\'ruf', '', 'Raha', '1998-12-20', '2022-04-04', '2022-04-05', 'La Ode Daano', 'Satiem', 'La Ode Asis Musafar', 2, 'terlambat', 'ahmad_maruf_1659550928.pdf'),
(384, 'Naura Bunga', '', 'Muna', '2022-02-21', '2022-04-05', '2022-04-06', 'Fajarudin', 'Ratna Sari', 'Al Islami', 2, 'umum', 'naura_bunga_1659550993.pdf'),
(385, 'Siti Azizah', '', 'Labulu-Bulu', '2003-06-23', '2022-04-04', '2022-04-05', 'La Ode Daano', 'Satiem', 'La Ode Asis Musafar', 2, 'terlambat', 'siti_azizah_1659551052.pdf'),
(386, 'Muhammad Khairul Anam Usman', '', 'Wakuru', '2003-11-03', '2022-04-05', '2022-04-06', 'Usman', 'Dasmariani', 'L.M. Amnah', 2, 'terlambat', 'muhammad_khairul_anam_usman_1659551131.pdf'),
(387, 'Kadir Tobian', '', 'Lawurake', '2003-12-18', '2022-04-04', '2022-04-05', 'La Naando', 'Martina', 'Kadir Tobian', 2, 'terlambat', 'kadir_tobian_1659551214.pdf'),
(388, 'Filadin', '', 'Oensuli', '2007-02-17', '2022-04-04', '2022-04-05', 'La Halufi', 'Wa Jija', 'La Halufi', 2, 'terlambat', 'filadin_1659551275.pdf'),
(389, 'Filudin', '', 'Oen', '2011-01-08', '2022-04-04', '2022-04-05', 'La Halufi', 'Wa Jija', 'La Halufi', 2, 'terlambat', 'filudin_1659551333.pdf'),
(390, 'Adifa Alfathunnisa', '', 'Wakobalu Agung', '2021-07-30', '2022-03-28', '2022-03-30', 'Rohmad', 'Lilis Triningseh', 'Syafril Rappe', 2, 'terlambat', 'adifa_alfathunnisa_1659551421.pdf'),
(391, 'Marwah Khumairoh', '', 'Muna', '2020-08-02', '2022-04-05', '0202-04-06', 'La Ambo', 'Wa Supu', 'La Ambo', 2, 'terlambat', 'marwah_khumairoh_1659551543.pdf'),
(392, 'La Ode Nurkholis', '', 'Parigi', '2007-07-20', '2022-04-04', '2022-04-05', 'La Ode Daano', 'Sa', 'La Ode Asis Musafar', 2, 'terlambat', 'la_ode_nurkholis_1659551614.pdf'),
(393, 'Wa Ode Intan Nuraini', '', 'Labulu-Bulu', '2009-09-07', '2022-04-04', '2022-04-05', 'La Ode Daano', 'sa', 'La Ode Asis Musafar', 2, 'terlambat', 'wa_ode_intan_nuraini_1659551668.pdf'),
(394, 'Muhamad Radit Syaputra', '', 'Muna', '2021-04-27', '2022-04-05', '2022-04-05', 'Mardin', 'Hesti', 'Siti Muntilah', 2, 'terlambat', 'muhamad_radit_syaputra_1659551728.pdf'),
(395, 'Vira', '', 'Muna', '2020-04-05', '2022-02-07', '2022-02-10', 'Alim', 'Suria', 'Siti Muntilah', 2, 'terlambat', 'vira_1659551778.pdf'),
(396, 'La Pandu', '', 'Muna', '2016-04-02', '2022-04-05', '2022-04-06', 'La Mbolosi', 'Wa Geni', 'La Ode Haidi', 2, 'terlambat', 'la_pandu_1659551849.pdf'),
(397, 'La Bima', '', 'Muna', '2018-08-07', '2022-03-27', '2022-04-03', 'La Mbolosi', 'Wa Geni', 'La Ode Haidi', 2, 'terlambat', 'la_bima_1659551925.pdf'),
(398, 'Triana Kinanti Azahra', '', 'Muna', '2021-09-16', '2022-04-05', '2022-04-05', 'La Ode Muhammad Umar', 'Mia Kaimuddin', 'Enny Fianti', 2, 'terlambat', 'triana_kinanti_azahra_1659551988.pdf'),
(399, 'Azam Putra Redi', '', 'Muna', '2021-03-25', '2022-04-05', '2022-04-06', 'Redi Haerun', 'Sufiani', 'Fatmawati Nur Palengkak', 2, 'terlambat', 'azam_putra_redi_1659552066.pdf'),
(400, 'Bilfa Qanita Zahra', '', 'Wakuru', '2009-11-17', '2022-04-05', '2022-04-05', 'Usman', 'Dasmariani', 'L.M. Amnah', 2, 'terlambat', 'bilfa_qanita_zahra_1659552123.pdf'),
(401, 'La Ode Hali', '', 'Buton', '1986-07-30', '2022-04-04', '2022-04-04', 'La Ode Samusu', 'Wa Ode Ndofie', 'Sitti Hartama', 2, 'terlambat', 'la_ode_hali_1659552209.pdf'),
(402, 'Fatar', '', 'Muna', '2018-01-31', '2022-01-05', '2022-01-06', 'Risman', 'Herni', 'Hasman Husein', 2, 'terlambat', 'fatar_1659552423.pdf'),
(403, 'Nursanti Zul Fiah', '', 'Laimpi', '1992-05-31', '2022-01-05', '2022-01-05', 'La Usu', 'Wa Simbau', 'Yuliana Ervina Sumual', 2, 'terlambat', 'nursanti_zul_fiah_1659552480.pdf'),
(404, 'Wa Ode Asra', '', 'Poaroha', '1988-03-29', '2022-01-05', '2022-01-06', 'La Ode Pata', 'Wa Mbedo', 'La Rudi', 2, 'terlambat', 'wa_ode_asra_1659552548.pdf'),
(405, 'Muhammad Alzio Fikri', '', 'Muna', '2020-03-16', '2022-01-05', '2022-01-05', 'Arafiq', 'Mariana', 'La Ode Nabarudin', 2, 'terlambat', 'muhammad_alzio_fikri_1659552610.pdf'),
(406, 'La Ode Ahmad Fitrah', '', 'Muna', '2021-04-24', '2022-01-05', '2022-01-05', 'La Ode Maluku', 'Arni', 'Tuti Damayanti', 2, 'terlambat', 'la_ode_ahmad_fitrah_1659552674.pdf'),
(407, 'La Ramuna', '', 'Kolese', '1986-01-02', '2022-01-03', '2022-01-05', 'La Lihu', 'Wa Ode Ndoidi', 'La Ramuna', 2, 'terlambat', 'la_ramuna_1659552740.pdf'),
(408, 'Alfian Alzikri', '', 'Muna', '2020-10-18', '2022-01-05', '2022-01-06', 'La Sadaria', 'Wa Ruwiati', 'Wa Ruwiati', 2, 'terlambat', 'alfian_alzikri_1659552802.pdf'),
(409, 'La Dulu', '', 'Latongku', '1970-10-10', '2022-01-03', '2022-01-05', 'La Saadi', 'Wa Maini', 'Hairil', 2, 'terlambat', 'la_dulu_1659552877.pdf'),
(410, 'La Sili', '', 'Lohiya', '1986-05-22', '2022-01-05', '2022-01-05', 'La Malasi', 'Wa Hamdia', 'La Sili', 2, 'terlambat', 'la_sili_1659552946.pdf'),
(411, 'Muhammad Abdul Azis', '', 'Muna', '2020-11-15', '2022-01-05', '2022-01-06', 'La Ndile', 'Wa Nuru', 'Sabarudin Lembo', 2, 'terlambat', 'muhammad_abdul_azis_1659553129.pdf'),
(412, 'Muhammad Ammar Abqori', '', 'Muna', '2021-10-11', '2022-01-05', '2022-01-06', 'Radimal', 'Jali Irwanti', 'Jali Irwanti', 2, 'terlambat', 'muhammad_ammar_abqori_1659553219.pdf'),
(413, 'Muhammad Arsya Rain', '', 'Kendari', '2021-10-27', '2022-01-05', '2022-01-05', 'Indra Purnama Iqbah', 'Ririn Wulandari Kole', 'M. Iqbah Koja', 2, 'umum', 'muhammad_arsya_rain_1659553373.pdf'),
(414, 'Muhammad Zafran Alvarenora', '', 'Komba-Komba', '2021-04-18', '2022-01-05', '2022-01-05', 'Sabarudin Lembo', 'Rosma Fitra', 'Sabarudin Lembo', 2, 'terlambat', 'muhammad_zafran_alvarenora_1659553437.pdf'),
(415, 'Narni Saudi', '', 'Tampunabale', '1979-04-03', '2022-01-05', '2022-01-06', 'La Sanudi', 'Wa Sunti', 'Bahrun', 2, 'terlambat', 'narni_saudi_1659553502.pdf'),
(416, 'Putriani', '', 'Muna', '2018-09-04', '2022-01-05', '2022-01-05', 'Feri Rahayu', 'Wa Anda', 'Amirul', 2, 'terlambat', 'putriani_1659553625.pdf'),
(417, 'Rayshakirana Putri', '', 'Muna', '2021-04-25', '2022-01-05', '2022-01-05', 'Yasin Sahara', 'Wa Ode Ramina', 'Amirul', 2, 'terlambat', 'rayshakirana_putri_1659553709.pdf'),
(418, 'Sifa April Lianto', '', 'Muna', '2015-04-24', '2022-01-05', '2022-01-05', 'La Ano', 'Wa Afi', 'La Ano', 2, 'terlambat', 'sifa_april_lianto_1659553780.pdf'),
(419, 'Suci Aprilia', '', 'Muna', '2018-04-16', '2022-01-05', '2022-01-05', 'La Ano', 'Wa Afi', 'La Ano', 2, 'terlambat', 'suci_aprilia_1659553838.pdf'),
(420, 'Wa Ode Khayratun Hisan', '', 'Bau-Bau', '2019-09-19', '2022-01-05', '2022-01-05', 'Muh. Haspriadi Syarfa', 'Dian Megawati', 'Muh. Haspriadi Syarfa', 2, 'terlambat', 'wa_ode_khayratun_hisan_1659553971.pdf'),
(421, 'Syarifudin', '', 'Batusuya', '1992-08-14', '2022-01-03', '2022-01-04', 'Nasir', 'Maiya', 'Syarifudin', 2, 'terlambat', 'syarifudin_1659554047.pdf'),
(422, 'Muhammad Barik', '', 'Makassar', '2018-10-07', '2022-04-04', '2022-04-04', 'Muhammad Syukri', 'Hasmira', 'Wa Ode Ndowuna', 2, 'terlambat', 'muhammad_barik_1659554149.pdf'),
(423, 'Rafasya', '', 'Muna', '2022-03-12', '2022-04-04', '2022-04-04', 'Sabarudin', 'Anita', 'Wa Ode Ndowuna', 2, 'umum', 'rafasya_1659554210.pdf'),
(424, 'La Ode Affil', '', 'Taliabo', '1995-07-13', '2022-04-04', '2022-04-04', 'La Ode Oke', 'Haemuna', 'Sitti Hartama', 2, 'terlambat', 'la_ode_affil_1659554384.pdf'),
(425, 'Muhammad Sultan Al Fatih', '', 'Muna', '2021-08-17', '2022-04-04', '2022-04-05', 'Jamaludin Efendy', 'Wa Ode Hesti', 'Wa Ode Ridi', 2, 'terlambat', 'muhammad_sultan_al_fatih_1659554483.pdf'),
(426, 'Wa Ode Aqila Rahmadani', '', 'Muna', '2020-05-14', '2022-03-31', '2022-04-04', 'Budi Yarto', 'Wa Ode Endarti Soraya Endang', 'Budi Yarto', 2, 'terlambat', 'wa_ode_aqila_rahmadani_1659554560.pdf'),
(427, 'Khabib Al-Islami Rahakbauw', '', 'Muna', '2020-11-05', '2022-04-04', '2022-04-05', 'Hidayat Rahakbauw', 'Trince', 'Trince', 2, 'terlambat', 'khabib_al-islami_rahakbauw_1659554759.pdf'),
(428, 'Muhamad Farel Ardiansyah', '', 'Muna', '2021-11-29', '2022-04-04', '2022-04-04', 'La Ode Herman', 'Wa Dewi', 'Selastiani Daya Guna', 2, 'terlambat', 'muhamad_farel_ardiansyah_1659554914.pdf'),
(429, 'La Ode Aswan', '', 'Dopi', '1994-10-23', '2022-04-04', '2022-04-04', 'La Ode Oke', 'Haemuna', 'Sitti Hartama', 2, 'terlambat', 'la_ode_aswan_1659554984.pdf'),
(430, 'Nur Aysyah', '', 'Lianosa', '2006-08-27', '2022-04-04', '2022-04-04', 'La Mondo', 'Wa Miima', 'Rabiul', 2, 'terlambat', 'nur_aysyah_1659555046.pdf'),
(431, 'Silvia Handayani Sarif', '', 'Muna', '2021-11-06', '2022-04-04', '2022-04-05', 'Sarifudin', 'Wa Dira', 'Sarifudin', 2, 'terlambat', 'silvia_handayani_sarif_1659555113.pdf'),
(432, 'Nadyah Apriani Sumardi', '', 'Kendari', '2004-04-12', '2022-04-04', '2022-04-04', 'Sumardi', 'Endang Riani', 'Andi Takdir Asjam', 2, 'terlambat', 'nadyah_apriani_sumardi_1659555203.pdf'),
(433, 'La Ode Muhammad Nabil Azfar', '', 'Muna', '2021-09-03', '2022-04-04', '2022-04-05', 'Kadir', 'Hadira', 'Kadir', 2, 'terlambat', 'la_ode_muhammad_nabil_azfar_1659555271.pdf'),
(434, 'Muhammad Rizky Al Fatan', '', 'Ambon', '2016-04-19', '2022-04-04', '2022-04-05', 'Asis Wamnebo', 'Hadira', 'Kadir', 2, 'terlambat', 'muhammad_rizky_al_fatan_1659555346.pdf'),
(435, 'Muhamad Zaki', '', 'Muna', '2021-05-10', '2022-04-04', '2022-04-04', 'Rachmat', 'Yeni', 'Wa Ode Bay', 2, 'terlambat', 'muhamad_zaki_1659555410.pdf'),
(436, 'Siti Nur Aisya Taumani', '', 'Muna', '2021-12-16', '2022-04-04', '2022-04-04', 'Hamdan', 'Wa Ubo', 'Wa Ode Bay', 2, 'terlambat', 'siti_nur_aisya_taumani_1659555469.pdf'),
(437, 'Siti Nur Ainun Taumani', '', 'Muna', '2021-12-16', '2022-04-04', '2022-04-04', 'Hamdan', 'wa ub', 'Wa Ode Bay', 2, 'terlambat', 'siti_nur_ainun_taumani_1659555534.pdf'),
(438, 'Sahnul Pato Al Maliki', '', 'Muna', '2018-02-12', '2022-04-04', '2022-04-05', 'Malik', 'Siti Harni', 'Wa Ode Usu Serlyanti', 2, 'terlambat', 'sahnul_pato_al_maliki_1659555607.pdf'),
(439, 'Fadhilah Mikaila Kharitza', '', 'Muna', '2019-08-17', '2022-04-04', '2022-04-05', 'Mal', 'siti h', 'Wa Ode Usu Serlyanti', 2, 'terlambat', 'fadhilah_mikaila_kharitza_1659555686.pdf'),
(440, 'Rani Az Zahra', '', 'Jayapura', '2016-09-27', '2022-04-04', '2022-04-04', 'Rachmat', 'Yeni', 'Wa Ode Bay', 2, 'terlambat', 'rani_az_zahra_1659555771.pdf'),
(441, 'Arsal Zikri Rabbani', '', 'Muna', '2022-03-22', '2022-04-04', '2022-04-04', 'La Harudia', 'Wa Ode Liufitri', 'Hasrawati', 2, 'umum', 'arsal_zikri_rabbani_1659555922.pdf'),
(442, 'Dimaz Arif Prasetyo', '', 'Raha', '2004-11-16', '2021-10-22', '2021-10-23', 'Jumadi', 'Nani', 'Jumadi', 2, 'terlambat', 'dimaz_arif_prasetyo_1659556009.pdf'),
(443, 'Wa Ode Arumi Nasha Zainal', '', 'Tampo', '2021-02-16', '2022-02-04', '2022-02-06', 'Andi Zainal', 'Rozalina', 'Andi Zainal', 2, 'terlambat', 'wa_ode_arumi_nasha_zainal_1659556140.pdf'),
(444, 'Naura Azura Sabrian', '', 'Kendari', '2016-06-16', '2022-01-27', '2022-01-27', 'Sabrian', 'Ade Hikma Santi Alam', 'Yuliana Ervina Sumual', 2, 'terlambat', 'naura_azura_sabrian_1659556216.pdf'),
(445, 'Wa Ode Chayra Triadhani Lukman', '', 'Muna', '2021-04-26', '2022-01-11', '2022-01-11', 'Lukman', 'Apriyana', 'Lukman', 2, 'terlambat', 'wa_ode_chayra_triadhani_lukman_1659556410.pdf'),
(446, 'Wa Sahati', '', 'Watumela', '1952-07-01', '2022-01-25', '2022-01-25', 'La Tulunga', 'Wa Nduma', 'Sitti Murni', 2, 'terlambat', 'wa_sahati_1659556490.pdf'),
(447, 'Muhammad Rizky Ramadhan', '', 'Muna', '2020-12-06', '2022-01-13', '2022-01-24', 'Kadir', 'Wa Ode Retri', 'La Kara', 2, 'terlambat', 'muhammad_rizky_ramadhan_1659556556.pdf'),
(448, 'Wa Ode Citra Triyanda', '', 'Muna', '2021-01-16', '2022-02-04', '2022-02-04', 'La Ode Rahmat Suleman', 'Puput Karnila', 'Sitti Hartama', 2, 'terlambat', 'wa_ode_citra_triyanda_1659556619.pdf'),
(449, 'Elsa Aprillia', '', 'Kontunaga', '2004-04-19', '2022-02-04', '2022-02-04', 'Faisal', 'Suryani', 'Sitti Hartama', 2, 'terlambat', 'elsa_aprillia_1659556675.pdf'),
(450, 'Zalsa Khofifah Maulid', '', 'Wawesa', '2021-10-20', '2022-02-04', '2022-02-04', 'Heytting', 'Nur Cahayati Muhiddin', 'Nur Cahayati Muhiddin', 2, 'terlambat', 'zalsa_khofifah_maulid_1659556746.pdf'),
(451, 'Rusda', '', 'Pinrang', '1984-05-24', '2022-01-28', '2022-01-30', 'La Daddi', 'Tani', 'Rusda', 2, 'terlambat', 'rusda_1659556804.pdf'),
(452, 'Alman Al Ghifari Ando', '', 'Raha', '2021-11-03', '2022-02-04', '2022-02-07', 'Arif Rahman Ando', 'Hanum Fauziah Arman', 'Arif Rahman Ando', 2, 'terlambat', 'alman_al_ghifari_ando_1659556940.pdf'),
(453, 'Wa Ode Myiesha Nafeeza Aziz', '', 'Raha', '2015-12-20', '2022-02-04', '2022-02-06', 'La Ode Aziz Zul Jabar', 'Dewy Karlina Mustamu', 'Dewy Karlina Mustamu', 2, 'terlambat', 'wa_ode_myiesha_nafeeza_aziz_1659557129.pdf'),
(454, 'Novi Yanti', '', 'Muna', '2021-11-30', '2022-01-04', '2022-01-04', 'Agwan Madu', 'Wa Abe', 'La Ode Kapriadi', 2, 'terlambat', 'novi_yanti_1659557208.pdf'),
(455, 'Azqila Ziya Yeldiz', '', 'Muna', '2021-11-29', '2022-02-04', '2022-02-04', 'La Ode Syamsibar Mengkoli', 'Sarni', 'Wa Ode Dara', 2, 'terlambat', 'azqila_ziya_yeldiz_1659557300.pdf'),
(456, 'Farra Aisyah Kadir', '', 'Muna', '2021-11-21', '2022-01-27', '2022-01-27', 'Abdul Kadir', 'Munarti', 'Munarti', 2, 'terlambat', 'farra_aisyah_kadir_1659557529.pdf'),
(457, 'Melsin Saputri', '', 'Muna', '2021-04-10', '2022-02-04', '2022-02-04', 'La Ida', 'Wa Saharia', 'Sati', 2, 'terlambat', 'melsin_saputri_1659557587.pdf'),
(458, 'La Ode Muhammad Izwar', '', 'Muna', '2021-12-13', '2022-02-04', '2022-02-04', 'Bahar', 'Helmi', 'Rabiul', 2, 'terlambat', 'la_ode_muhammad_izwar_1659557662.pdf'),
(459, 'Ali Mustafa', '', 'Muna', '2019-11-22', '2022-02-04', '2022-02-04', 'Aris', 'Nur Sukmawati', 'Rasiman', 2, 'terlambat', 'ali_mustafa_1659557805.pdf'),
(460, 'Naura Desti', '', 'Muna', '2020-08-08', '2022-02-04', '2022-02-04', 'La Ndati', 'Ernawati', 'Rabiul', 2, 'terlambat', 'naura_desti_1659557958.pdf'),
(461, 'Elsa', '', 'Muna', '2020-11-12', '2022-02-04', '2022-02-04', 'Alimin', 'Esti Hermas Tuti', 'Rosiman', 2, 'terlambat', 'elsa_1659558032.pdf'),
(462, 'Muhamad Abizar Sahidin', '', 'Muna', '2018-05-12', '2022-01-04', '2022-01-04', 'Sahidin Eso', 'Wa Ramlia', 'Kudusiah', 2, 'terlambat', 'muhamad_abizar_sahidin_1659558151.pdf'),
(463, 'Muhamad Arsyad Sahidin', '', 'Muna', '2021-05-25', '2022-01-04', '2022-01-04', 'Sahidin Eso', 'Wa Ramlia', 'Kudusiah', 2, 'terlambat', 'muhamad_arsyad_sahidin_1659558212.pdf'),
(464, 'Nasrul', '', 'Muna', '2018-12-02', '2022-01-13', '2022-01-13', 'La Hudi', 'Siti Safaria', 'Sardina', 2, 'terlambat', 'nasrul_1659558267.pdf'),
(465, 'Uwais Nur Andri', '', 'Muna', '2021-12-16', '2022-01-04', '2022-01-05', 'Andri Alam Mauna', 'Wa Ode Ferawati', 'Wa Ode Marulia', 2, 'umum', 'uwais_nur_andri_1659595236.pdf'),
(466, 'Al Ikhlas Nordin', '', 'Lasunapa', '2003-09-24', '2022-01-04', '2022-01-05', 'La Udi', 'Wa Ode Norma', 'Muhammad Azwan Raali', 2, 'terlambat', 'al_ikhlas_nordin_1659595305.pdf'),
(467, 'Abdul Azis', '', 'Raha', '1983-05-24', '2022-01-04', '2022-01-05', 'Muhlis', 'Wa Ode Murtabua', 'Abdul Azis', 2, 'terlambat', 'abdul_azis_1659595444.pdf'),
(468, 'Trianingsi Hasimudin', '', 'Raha', '1989-10-22', '2022-01-04', '2022-01-05', 'Hasimudin', 'Ujunia', 'La Ode Maruf Kaishal Amri', 2, 'terlambat', 'trianingsi_hasimudin_1659595521.pdf'),
(469, 'Muhammad Alfathan Hanuddin', '', 'Muna', '2021-05-22', '2022-01-04', '2022-01-05', 'Hanuddin', 'Shinta Dewi Yanti', 'Hanuddin', 2, 'terlambat', 'muhammad_alfathan_hanuddin_1659595596.pdf'),
(470, 'La Ode Muhamad Faldan', '', 'Mabodo', '2005-09-19', '2022-01-03', '2022-01-03', 'La Ode Gane', 'Wa Ode Mae', 'Sitti Hartama', 2, 'terlambat', 'la_ode_muhamad_faldan_1659595651.pdf'),
(471, 'La Ode Maruf Kaishar Amri', '', 'Kendari', '1988-02-09', '2022-01-04', '2022-01-05', 'La Ode Saihu', 'Wa Ode Asmawaty', 'La Ode Maruf Kaishar Amri', 2, 'terlambat', 'la_ode_maruf_kaishar_amri_1659595729.pdf'),
(472, 'Aqila Jeny Mamonto', '', 'Muna', '2020-06-11', '2022-01-04', '2022-01-05', 'Kifli Mamonto', 'Sarniati', 'Sardianto', 2, 'terlambat', 'aqila_jeny_mamonto_1659595789.pdf'),
(473, 'Ningsih Rahmawati', '', 'Muna', '2018-02-02', '2022-01-04', '2022-01-04', 'Inal Safarudin', 'Sarwati', 'Wa Ode Siti Nurmaila', 2, 'terlambat', 'ningsih_rahmawati_1659595851.pdf'),
(474, 'La Ege', '', 'Oelongko', '1966-07-01', '2022-01-04', '2022-01-05', 'La Bila', 'Wa Pera', 'Zainal Mustafa', 2, 'terlambat', 'la_ege_1659595915.pdf'),
(475, 'La Ode Muhamad Irfan', '', 'Mabodo', '2003-12-15', '2022-01-03', '2022-01-03', 'La Ode Gane', 'Wa Ode Mae', 'Sitti Hartama', 2, 'terlambat', 'la_ode_muhamad_irfan_1659595983.pdf'),
(476, 'Muhamad Subhan', '', 'Kendari', '2012-05-28', '2022-01-03', '2022-01-03', 'La Pemilu', 'Wa Nuruana', 'Sitti Hartama', 2, 'terlambat', 'muhamad_subhan_1659596128.pdf'),
(477, 'Nur Zati Aflaha', '', 'Kendari', '2013-05-08', '2022-01-03', '2022-01-03', 'La Pemilu', 'Wa Nuruana', 'Sitti Hartama', 2, 'terlambat', 'nur_zati_aflaha_1659596189.pdf'),
(478, 'Nur Silu Rusdan An Mauilan', '', 'Muna', '2019-07-21', '2022-01-03', '2022-01-03', 'La Pemilu', 'Wa Nuruana', 'Sitti Hartama', 2, 'terlambat', 'nur_silu_rusdan_an_mauilan_1659596255.pdf'),
(479, 'La Ipu Amir Muddin', '', 'Danagoa', '1971-07-01', '2022-01-04', '2022-01-05', 'La Ndimu', 'Wa Nasia', 'L.M. Amnah', 2, 'terlambat', 'la_ipu_amir_muddin_1659596316.pdf'),
(480, 'La Amal', '', 'Posunsuno', '1998-10-11', '2022-01-04', '2022-01-04', 'La Male', 'Wa Djele', 'La Amal', 2, 'terlambat', 'la_amal_1659596372.pdf'),
(481, 'Aldiansyah', '', 'Danagoa', '2004-03-11', '2022-01-04', '2022-01-04', 'La Kapute', 'Wa Fiy', 'La Kapute', 2, 'terlambat', 'aldiansyah_1659596438.pdf'),
(482, 'Awal Ramadhan', '', 'Danagoa', '2006-09-24', '2022-01-04', '2022-01-04', 'La Kapute', 'Wa Fiy', 'La Kapute', 2, 'terlambat', 'awal_ramadhan_1659596500.pdf'),
(483, 'Shaista Nafisa', '', 'Lianosa', '2009-04-21', '2022-01-04', '2022-01-04', 'Haerun Saleh Kahi', 'Rosmin', 'Rosmini', 2, 'terlambat', 'shaista_nafisa_1659596588.pdf'),
(484, 'Muhammad Arsyid Saputera', '', 'Tampunabale', '2004-07-11', '2022-01-04', '2022-01-04', 'Bahrun', 'Narni Sanudi', 'Bahrun', 2, 'terlambat', 'muhammad_arsyid_saputera_1659596652.pdf'),
(485, 'Muhammad Fazrul Radjab', '', 'Tampunabale', '2002-09-28', '2022-01-04', '2022-01-04', 'Bahrun', 'Narni Sanudi', 'Bahrun', 2, 'terlambat', 'muhammad_fazrul_radjab_1659596705.pdf'),
(486, 'Apriyani', '', 'Tampunabale', '2006-04-24', '2022-01-04', '2022-01-04', 'Bahrun', 'Narni Sanudi', 'Bahrun', 2, 'terlambat', 'apriyani_1659596761.pdf'),
(487, 'Jamin', '', 'Warambe', '1990-09-30', '2022-01-04', '2022-01-04', 'La Bani', 'Wa Faane', 'Wa Ode Asriyani', 2, 'terlambat', 'jamin_1659596837.pdf'),
(488, 'Anas', '', 'Muna', '2020-01-14', '2022-01-03', '2022-01-03', 'La Ula', 'Safaria', 'Wa Ode Sahariah', 2, 'terlambat', 'anas_1659596889.pdf'),
(489, 'Syasyabila', '', 'Muna', '2014-12-02', '2022-01-03', '2022-01-03', 'La Ula', 'Safaria', 'Wa Ode Sahariah', 2, 'terlambat', 'syasyabila_1659596961.pdf'),
(490, 'Salimah Sakinah Azzahra', '', 'Kosundano', '2021-02-20', '2022-01-04', '2022-01-04', 'Asrun', 'Wa Ode Suhertin', 'La Samaruddin', 2, 'umum', 'salimah_sakinah_azzahra_1659597032.pdf'),
(491, 'Aulia', '', 'Muna', '2017-10-25', '2022-01-03', '2022-01-03', 'La Ula', 'Safaria', 'Wa Ode Sahariah', 2, 'terlambat', 'aulia_1659597121.pdf'),
(492, 'Udin Karimu', '', 'Lianosa', '1984-12-27', '2022-01-03', '2022-01-03', 'La Karimu', 'Wa Ntuwu', 'Udin Karimu', 2, 'terlambat', 'udin_karimu_1659597251.pdf'),
(493, 'Ahmad Al Billal', '', 'Raha', '2021-12-03', '2022-01-04', '2022-01-04', 'Sawal Seda', 'Jumiati', 'La Ode Bunga', 2, 'umum', 'ahmad_al_billal_1659597305.pdf'),
(494, 'Madmin', '', 'Pasikuta', '1983-08-19', '2022-01-04', '0000-00-00', 'La Samedi', 'Wa Ewo', 'Madmin', 2, 'terlambat', 'madmin_1659597354.pdf'),
(495, 'Asrun', '', 'Muna', '2012-10-08', '2022-01-03', '2022-01-03', 'La Ula', 'Wa Runia', 'Wa Ode Sahariah', 2, 'terlambat', 'asrun_1659597421.pdf'),
(496, 'Resmi Mustika', '', 'Tampunabale', '2011-04-01', '2022-01-04', '2022-01-04', 'Bahrun', 'Narni Sanudi', 'Bahrun', 2, 'terlambat', 'resmi_mustika_1659597485.pdf'),
(497, 'Muhammad Dedi Noer Sidiq', '', 'Kendari', '2014-03-18', '2022-01-04', '2022-01-04', 'Muhammad Ikhsan Gerviahana Pangeran', 'Wa Ode Dasma Sidi', 'Muhammad Ikhsan Gerviahana Pangeran', 2, 'terlambat', 'muhammad_dedi_noer_sidiq_1659597589.pdf'),
(498, 'Noah Al Hasrul', '', 'Muna', '2019-06-07', '2022-02-03', '2022-02-03', 'La Ode Muhammad Hasrul', 'Irene Novita Sari', 'Wa Sahina', 2, 'terlambat', 'noah_al_hasrul_1659597701.pdf'),
(499, 'Rafael Al Hasrul', '', 'Jakarta', '2016-01-13', '2022-02-03', '2022-02-03', 'La Ode Muhammad Hasrul', 'Irene Novita Sari', 'Wa Sahina', 2, 'terlambat', 'rafael_al_hasrul_1659597887.pdf'),
(500, 'Sufirman', '', 'Soppeng', '1952-07-01', '2022-02-03', '2022-02-03', 'Katu', 'Imarilaleng', 'Ahmad Mujadid', 2, 'terlambat', 'sufirman_1659597943.pdf'),
(501, 'Nawar', '', 'P. Mandike', '1963-07-01', '2022-02-03', '2022-02-03', 'Beddu Rassake', 'Puttiri', 'Ahmad Mujadid', 2, 'terlambat', 'nawar_1659598002.pdf'),
(502, 'Aqila Rahmah Alqawiy', '', 'Muna', '2020-03-02', '2022-02-03', '2022-02-03', 'La Ode Husaini', 'Sarfina', 'Ujen', 2, 'terlambat', 'aqila_rahmah_alqawiy_1659598062.pdf'),
(503, 'Fatimah Mehar', '', 'Muna', '2021-11-17', '2022-02-03', '2022-02-03', 'Surumaeka', 'Elfi Eliana', 'Elfi Eliana', 2, 'terlambat', 'fatimah_mehar_1659598124.pdf'),
(504, 'Satria Ghaniun Prima', '', 'Raha', '2014-05-07', '2022-02-03', '2022-02-03', 'Junain', 'Haslia', 'Junain', 2, 'terlambat', 'satria_ghaniun_prima_1659598187.pdf'),
(505, 'Muhammad Aryan Al Zahrawi', '', 'Raha', '2021-09-21', '2022-02-02', '2022-02-02', 'Ilzzan', 'Sri Rahayu Ningsi', 'Ilzzan', 2, 'terlambat', 'muhammad_aryan_al_zahrawi_1659598249.pdf'),
(506, 'Najwa Aulia Putri', '', 'Raha', '2011-02-09', '2022-02-03', '2022-02-03', 'Junain', 'Haslia', 'Junain', 2, 'terlambat', 'najwa_aulia_putri_1659598302.pdf'),
(507, 'Juanti', '', 'Muna', '2019-02-18', '2022-02-03', '2022-02-03', 'Junain', 'Haslia', 'Junain', 2, 'terlambat', 'juanti_1659598352.pdf'),
(508, 'Nur Aqilah Naila Ikhsan', '', 'Muna', '2021-10-22', '2022-02-02', '2022-02-02', 'Muhammad Ikhsan Ardiansyah', 'Devi Triana', 'Muhammad Ikhsan Ardiansyah', 2, 'terlambat', 'nur_aqilah_naila_ikhsan_1659598440.pdf'),
(509, 'Serenggana Wati', '', 'Wapunto', '2012-02-11', '2022-02-03', '2022-02-04', 'Herianto Darmin', 'Suniati', 'Muhammad Al Jasiyah Herianto Dundu', 2, 'terlambat', 'serenggana_wati_1659598524.pdf'),
(510, 'Wa Ode Tiana', '', 'Tobatano', '1979-07-14', '2022-02-03', '2022-02-03', 'La Ode Ngkeu', 'Wa Ode Malifa', 'Kudusiah', 2, 'terlambat', 'wa_ode_tiana_1659598587.pdf'),
(511, 'Syafira Almahira', '', 'Muna', '2021-06-20', '2022-01-27', '2022-01-30', 'Armin Syah', 'Nur Hayati', 'Armin Syah', 2, 'terlambat', 'syafira_almahira_1659598643.pdf'),
(512, 'Muhamad Unais', '', 'Muna', '2021-05-28', '2022-01-26', '2022-01-30', 'Andi Bolo', 'Wa Ode Nening Saputri', 'Erniati', 2, 'terlambat', 'muhamad_unais_1659598701.pdf'),
(513, 'Adam', '', 'Marobo', '1984-05-20', '2022-01-11', '2022-01-13', 'La Saani', 'Wa Ani', 'La Wensa', 2, 'terlambat', 'adam_1659598761.pdf'),
(514, 'Verdin', '', 'Matombara', '1999-08-13', '2022-02-03', '2022-02-03', 'La Bahu', 'Wa Nahari', 'Yuliana Ervina Sumual', 2, 'terlambat', 'verdin_1659598810.pdf'),
(515, 'Faizan Azril Tahrir Patola', '', 'Muna', '2020-02-11', '2022-02-03', '2022-02-03', 'Suniddin', 'Finarti', 'Andi Takdir Asjam', 2, 'terlambat', 'faizan_azril_tahrir_patola_1659598895.pdf'),
(516, 'La Ode Albyan Abdulah', '', 'Laimpi', '2018-11-01', '2022-02-02', '2022-02-03', 'La Ode Jumadin', 'Wa Ode Reformasi', 'Wa Ode Reformasi', 2, 'umum', 'la_ode_albyan_abdulah_1659598965.pdf'),
(517, 'La Ode Maya', '', 'Wakumoro', '1990-12-01', '2022-02-03', '2022-02-03', 'La Ode Madaho', 'Wa Abe', 'La Ode Maya', 2, 'terlambat', 'la_ode_maya_1659599012.pdf'),
(518, 'Rizal', '', 'Muna', '2021-06-12', '2022-01-20', '2022-01-21', 'La Maniangka', 'Wa Ambe', 'Selastiani Daya Guna', 2, 'terlambat', 'rizal_1659599200.pdf'),
(519, 'Ferdinadus Samba', '', 'Muna', '2015-07-10', '2022-01-10', '2022-01-10', 'La Tinggala Paskalis', 'Helena Wa Ubi', 'Rabiul', 2, 'terlambat', 'ferdinadus_samba_1659599283.pdf'),
(520, 'Grifaldo Samba', '', 'Labasa', '2013-10-18', '2022-01-10', '2022-01-10', 'La Tinggala Paskalis', 'Helena Wa Ubi', 'Rabiul', 2, 'terlambat', 'grifaldo_samba_1659599334.pdf'),
(521, 'Falentin Findian', '', 'Labasa', '2018-01-17', '2022-01-10', '2022-01-10', 'La Tinggala Paskalis', 'Helena Wa Ubi', 'Rabiul', 2, 'terlambat', 'falentin_findian_1659599386.pdf'),
(522, 'Ghina Rezkayllah', '', 'Muna', '2020-03-10', '2022-02-02', '2022-02-02', 'Ihsan Insa', 'Umi Salma', 'Wa Ode Sudarni', 2, 'terlambat', 'ghina_rezkayllah_1659599444.pdf'),
(523, 'Adam Alfarizqi', '', 'Muna', '2021-11-18', '2022-02-03', '2022-02-03', 'Baharung', 'Supiani', 'Hasrawati', 2, 'terlambat', 'adam_alfarizqi_1659599513.pdf'),
(524, 'Prisela Zaraswati', '', 'Bangunsari', '2011-01-01', '2022-01-21', '2022-01-21', 'Ismail', 'Supriati', 'Herlien B. Nataningrum', 2, 'terlambat', 'prisela_zaraswati_1659599590.pdf'),
(525, 'Selfitri Wan Putri Sarbin', '', 'Raha', '2006-05-06', '2022-01-21', '2022-01-21', 'Sarbini', 'Fitri', 'Sarbini', 2, 'terlambat', 'selfitri_wan_putri_sarbin_1659599739.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL DEFAULT '#000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `warna`) VALUES
(2, 'Akta Kelahiran', '#00a65a'),
(3, 'Akta Kematian', '#f56954'),
(4, 'Akta Pernikahan', '#00c0ef');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Kepala Bidang'),
(2, 'Kepala Dinas'),
(3, 'Staf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `image`, `role_id`) VALUES
(1, 'admin', 'AHYADI', 'admin@gmail.com', '$2y$10$uGSBRKsWu2Xv0.xCmtNxPe52W2f10pLAqdlyK4o4WVbshywCmvaOe', 'admin.jpg', 1),
(3, 'veenia', 'VEENIA IWO', 'veenia3@gmail.com', '$2y$10$Rn3p7fyF/a5Chj3.Jlrpqe3q1.uYB5r6ofGHkP./eQcRX9FEOR62G', 'veenia.jpg', 3),
(4, 'kadis', 'Kepala Dinas', 'kadis@gmail.com', '$2y$10$jnZQrSvZYIIOhTyhzGQ/B.Fk9Ob3GoMR4.4UVfTjGicMuhImLEe.e', 'admin.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

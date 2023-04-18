-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2021 pada 08.10
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-konsol`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(601, 40, 'admin', 'Es Teler, Sejarahmu Dulu dan Kini', '', '', 'es-teler-sejarahmu-dulu-dan-kini', 'N', 'N', 'N', 'Es Teler adalah minuman es berisi potongan buah alpukat, kelapa muda, nangka matang, dan santan kelapa encer dengan pemanis berupa sirup. Es yang dipakai bisa berupa es serut atau es batu.<br />\r\n<br />\r\nVariasi lain es teler berisi cincau, kolang-kaling, dan pacar china, potongan buah apel, pepaya, sawo, melon, roti, dan agar-agar, hingga es teler menjadi sulit dibedakan dengan es campur.<br />\r\n<br />\r\nEs Teler adalah jenis Kuliner yang murni &quot;Fresh from Nature&quot;, Tanpa diolah, hanya dipotong dan dibersihkan, lalu di beri kuah rasa sesuai selera dan di minum/makan dingin. Sehingga kandungan Gizi yang terdapat dalam buah yang dipakai otomatis masih baik. Es Teler --&gt; recomended deh sebagai makanan penutup dibanding makanan penutup olahan.<br />\r\n<strong><br />\r\nSejarah Es Teler</strong><br />\r\n<br />\r\nEs teler diciptakan Tukiman Darmowijono, pedagang es campur dengan gerobak di Jalan Semarang Jakarta Pusat pada tahun 1980-an. Es campur kreasi Tukiman begitu enak sehingga anak-anak muda yang meminumnya mengaku keenakan seperti &quot;teler&quot; akibat mengkonsumsi narkoba. Es kelapa muda bercampur alpukat yang dijual Tukiman di Jalan Semarang kemudian dikenal sebagai &quot;es teler.&quot;<br />\r\n<br />\r\nKepopuleran es yang bikin teler makin mencuat berkat promosi dari mulut ke mulut dan liputan media massa. Pembeli yang datang bermobil menimbulkan antrian parkir mobil yang dirasakan penduduk Jalan Semarang dan sekitarnya sebagai pengganggu ketenangan. Es teler Tukiman harus pindah ke Jalan Pegangsaan Barat dan kemudian ke dalam kompleks bioskop Megaria. Kedai es teler Tukiman di kompleks bioskop Megaria sekarang bernama kedai ayam bakar dan es teler Sari Mulia Asli.<br />\r\n<br />\r\nWaralaba nasional Es Teler 77 Juara Indonesia didirikan Sukyatno Nugroho, setelah sang mertua bernama Ny Murniati Widjaja menjuarai lomba es teler nasional di tahun 1982. Gerai Es Teler 77 yang pertama terdapat di pertokoan Duta Merlin, Harmoni, Jakarta Pusat. Di gerai Es Teler 77 juga tersedia berbagai makanan pendamping seperti mi bakso dan nasi goreng. Di luar negeri, gerai Es Teler 77 terdapat di Australia, Malaysia, dan Singapura.<br />\r\n', '', 'Jumat', '2012-11-02', '02:33:43', '16es-teler-sejarahmu-dulu-dan-kini.jpg', 31, 'kuliner', 'Y'),
(598, 40, 'admin', 'Laksa Betawi yang Menggugah Selera', '', '', 'laksa-betawi-yang-menggugah-selera', 'N', 'N', 'N', 'Makanan khas betawi yang satu ini memang sudah agak jarang bisa ditemui. Namun bukan berarti punah. Di beberapa lokasi tertentu, anda masih bisa menemukan Laksa betawi. Bagi anda yang belum mengetahui apa itu Laksa Betawi, Laksa betawi adalah Penganan berjenis mie yang diberi bumbu. Laksa Betawi memiliki kuah berwarna kekuningan. Campuran udang rebon yang ada dalam kuah laksa, membuat rasanya menjadi segar dan di padu aroma khas udang.<br />\r\n<br />\r\nSelain itu, Makanan ini menggunakan Ketupat. Isi dari ketupat laksa betawi adalah irisan ketupat, telur, kemangi, tauge. kucai, bihun, perkedel, dan bawang goreng, serta kuahnya yang kental dengan taburan udang kering. Namun ada yang bilang bahwa Bihun dan perkedel hanya variasi tambahan dari laksa, bukan bawaan asli nya.<br />\r\n<br />\r\nCara lain untuk menikmati Laksa adalah menggunakan Semur betawi. Paduan rasa manis pada semur, tentu nya akan menambah rasa gurih di lidah. Namun hal ini bukan suatu keharusan. Tergantung selera masing-masing.<br />\r\n<br />\r\nCara mengolah Laksa Betawi<br />\r\n<br />\r\nMengolah laksa betawi susah-susah gampang. Bumbunya sederhana, terdiri dari kunyit, lengkuas, sereh, daun salam, daun jeruk, jahe, jintan, lada, temu kunci, serta dua kilogram udang rebon. Semua bumbu dihaluskan dengan lumpang lalu ditumis dan dicampur dengan santan cair.<br />\r\n<br />\r\nBumbu baru ditambahkan dengan santan kental. Proses ini dilakukan sampai tiga kali. Sejak dahulu hingga sekarang. Dengan proses yang agak rumit, tidak aneh kalau makanan ini jadi agak langka. Orang maunya langsung jadi tanpa memikirkan cara pembuatannya.<br />\r\n<br />\r\n', '', 'Kamis', '2012-10-25', '02:13:20', '87laksa-betawi_yang_menggugah_selera.jpg', 14, 'kuliner', 'Y'),
(599, 40, 'admin', 'Semur, Aslinya dari Belanda', '', '', 'semur-aslinya-dari-belanda', 'N', 'N', 'N', 'Jangan merasa tidak terima jika dikatakan bahwa semur adalah hidangan Belanda. Sebab, di balik semur memang ada riwayat nusantara, bukti bagaimana silang budaya terjadi antara Indonesia dan Eropa, demikian menurut ahli kajian budaya Dr phil Lily Tjahjandari.<br />\r\n<br />\r\nPercaya tidak, Indonesia ternyata sudah meramu berbagai makanan dengan berbagai jenis rempah sejak abad pertama. Hal ini terjadi karena posisi Indonesia terletak di tengah jalur perdagangan dunia.<br />\r\n<br />\r\nKekayaan rempah Indonesia ini lalu mengundang berbagai bangsa untuk datang dan mengeksplorasi citarasa rempah. Diawali dengan kedatangan pedagang India pada abad 1-7, dan diikuti oleh pedagang China dan Arab. Perdagangan rempah kemudian membuka jalan ekspansi masif bangsa Eropa pada abad 16-19. Mereka menjelajah wilayah Indonesia untuk menemukan rempah-rempah, dan memulai terjadinya interaksi budaya kuliner antara Eropa dan Indonesia.<br />\r\n<br />\r\n&quot;Sebelumnya, penguat rasa makanan Eropa hanya terbatas pada tomat, ceri, bawang bombai, madu, atau wine,&quot; ungkap Lily, yang juga Manajer Penelitian dan Pengabdian Masyarakat Fakultas Ilmu Pengetahuan Budaya Universitas Indonesia. Orang Eropa lalu mendapatkan inspirasi untuk menggunakan berbagai rempah Asia untuk mengolah makanan Eropa.<br />\r\n<br />\r\nNah, ketika keahlian meramu bumbu khas Indonesia seperti lada, kayu manis, jahe, kemiri, cengkeh itu berpadu dengan teknik memasak bangsa Eropa, hadirlah hidangan unik seperti semur. Semur sendiri asalnya dari bahasa Belanda, smoor, yang artinya masakan daging yang direbus dengan tomat dan bawang secara perlahan.<br />\r\n<br />\r\n&quot;Ketika itu, orang Eropa yang bisa memasak dengan rempah-rempah dianggap sebagai kalangan aristokrat. Hidangan semur ini diterima dengan baik oleh lidah kaum priyayi Belanda, dan menjadi menu rijsttafel,&quot; kata Lily, saat talkshow bertema &quot;Semur, Turun-Temurun Menghangatkan Hati Keluarga Indonesia&quot; di Restoran Warung Daun, Kebayoran Baru, Jakarta Selatan, beberapa waktu lalu.<br />\r\n<br />\r\nRijstaffel merupakan konsep penyajian makanan lengkap ala restoran di Eropa, yang diawali dengan hidangan pembuka, hidangan utama, dan hidangan penutup. Namun hidangan yang disajikan bukan hidangan Eropa, melainkan menu Indonesia dimana nasi sebagai makanan utama dinikmati dengan lauk-pauk.<br />\r\n<br />\r\nSebenarnya, semur itu sendiri bukan makanan asli Belanda. Semur, menurut pakar kuliner Chef Ragil Imam Wibowo, merupakan persepsi bangsa Indonesia dari hidangan tradisional Belanda yang bernama hachee. Hachee merupakan hidangan daging rebus yang dipotong-potong, kadang-kadang juga menggunakan ikan, burung, dan sayuran. Bumbu dasarnya adalah bawang dan rasa asam (biasanya didapat dari cuka atau wine). Cengkeh dan daun salam lalu ditambahkan ke dalam kuah kaldunya yang kental.<br />\r\n<br />\r\nHachee kelak menjadi trigger untuk hidangan semur. Dalam versi Indonesia, semur ini menggunakan bumbu bawang merah, bawang putih, dengan tambahan berbagai rempah lain untuk menguatkan rasa, seperti ketumbar, pala, lada, cengkeh, dan kayu manis. Semur lalu menjadi istimewa karena menggunakan kecap sebagai penguat rasa manis yang legit, dan memberi warna coklat yang menggugah selera.<br />\r\n<br />\r\n&quot;Kecap itu idenya ketika orang Indonesia berimajinasi bagaimana membuat warna coklatnya. Pada hachee, warna coklat didapat dari brownstock, yaitu kaldu dari tulang sapi yang dibakar. Orang Indonesia lalu mencari, apa yang kira-kira bisa memberi warna dan rasa yang diinginkan,&quot; ujar Chef Ragil dalam acara yang sama.<br />\r\n<br />\r\nSemur kemudian melekat menjadi tradisi bangsa Indonesia., dan menjadi menu favorit setiap keluarga Indonesia. Menu ini hadir dengan inovasi bumbu dan topping yang beraneka ragam. Jika awalnya semur identik dengan daging sapi, Anda bisa menemukan semur daging kambing, ayam, telur, tahu, tempe, terong, dan bahkan ikan. Dan semuanya lezat!<br />\r\n<br />\r\n<br />\r\n', '', 'Minggu', '2012-11-11', '02:17:45', '16semur_asli-dari-belanda.jpg', 19, 'kuliner', 'Y'),
(608, 19, 'admin', 'Bos Amazon Temukan Mesin Apollo 11', '', 'http://www.youtube.com/embed/mxMiN9iYlkQ', 'bos-amazon-temukan-mesin-apollo-11', 'N', 'N', 'N', 'Jeff Bezos, pendiri retailer online terbesar Amazon, mengumumkan bahwa ia dan timnya telah menemukan 5 mesin Apollo 11 yang jatuh pada tahun 1969 di Samudera Atlantik.<br />\r\n<br />\r\nKini, Jeff Bezos merencanakan untuk mengangkat satu atau dua dari mesin tersebut ke permukaan untuk kemudian dipamerkan di Museum Penerbangan di kampung halamannya, Seattle. Sebelumnya, Jeff Bezos akan meminta izin terlebih dahulu kepada Nasa selaku pemilik dari Apollo 11.<br />\r\n<br />\r\nSeluruh biaya yang diperlukan dalam ekspedisi dan pengangkatan mesin Apollo 11 akan ditanggung oleh Jeff Bezos sendiri. Sementara itu, Nasa menyatakan akan menunggu kabar lebih lanjut tentang penemuan oleh tim Jeff Bezos tersebut.<br />\r\n<br />\r\nMesin berkekuatan 32 juta tenaga kuda (hp) yang mampu membakar 6.000 pon kerosin dan oksigen cair per detik tersebut telah membawa Apollo 11 mendarat dengan sukses di bulan pada tahun 1969. Namun dalam perjalanan kembali ke bumi, mesin tersebut terbakar hingga terjatuh di Samudera Atlantik dan belum ditemukan hingga akhirnya Jeff Bezos mengumumkan berita ini.\r\n', '', 'Senin', '2012-11-19', '04:51:31', '16JeffBezos.jpg', 73, 'internasional', 'Y'),
(611, 21, 'admin', 'Duel Swiss di Semifinal Cincinnati Masters', 'Tenis Cincinnati Masters 2012', '', 'duel-swiss-di-semifinal-cincinnati-masters', 'N', 'N', 'N', 'Cincinnati - Dua petenis asal Swiss berhasil mengempaskan lawan-lawannya dan akan bertemu di semifinal Cincinnati Masters. Stanislas Wawrinka sukses membungkam petenis Kanada, Milos Raonic, sementara Roger Federer berhasil menumbangkan Mardy Fish.<br />\r\n&nbsp;<br />\r\nWawrinka mengalahkan Raonic dengan pertarungan sengit. Bahkan sebelumnya, petenis 27 tahun tersebut sempat tertinggal di set pertama. Pada set awal tersebut, Wawrinka takluk 2-6.<br />\r\n&nbsp;<br />\r\nNamun pada set kedua, Wawrinka mampu mengendalikan permainan, dia mampu mengembalikan dengan baik pukulan keras dari Raonic. Hingga akhirnya sukses merebut set kedua ini dengan skor 7-6.<br />\r\n&nbsp;<br />\r\nSetelah berhasil menyamakan keadaan, Wawrinka terus mendominasi dan mengakhiri perlawanan Raonic dengan skor akhir di set ketiga 6-4. &ldquo;Saya bermain hebat setelah menjalani dua bulan yang menyulitkan,&rdquo; ujar Wawrinka, seperti disitat Yahoo Sports, Sabtu (18/8/2012).<br />\r\n&nbsp;<br />\r\nNantinya di babak semifinal, Wawrinka bakal menghadapi rekan senegaranya, Federer yang menghentikan langkah Fish dengan skor 6-3 7-6. Dengan gugurnya Fish atas Federer, maka tak ada satu pun petenis Amerika yang berpeluang menjadi juara di kandang sendiri.<br />\r\n', 'Stanislas Wawrinka.\r\n', 'Minggu', '2012-08-19', '05:22:25', '46Stanislas-Wawrinka.jpg', 16, 'olahraga', 'Y'),
(612, 19, 'admin', 'Google Pakai Motorola untuk Gugat Apple', '', '', 'google-pakai-motorola-untuk-gugat-apple', 'N', 'N', 'N', 'Jakarta - Perang gugatan antara para produsen smartphone belum menunjukkan tanda berakhir. Yang terbaru, Motorola menuding Apple melanggar tujuh patennya.<br />\r\n<br />\r\nVendor ponsel yang diakuisisi Google pun meminta pihak berwewenang untuk memblokir impor iPhone, iPad dan komputer Mac. Perangkat-perangkat tersebut diminta dilarang beredar di Amerika Serikat.<br />\r\n<br />\r\nKomplain Motorola didaftarkan ke lembaga International Trade Comission (ITC). Paten yang dipermasalahkan terkait location reminders, notifikasi email, pemutar video dan sebagainya.<br />\r\n<br />\r\n&quot;Kami ingin menyelesaikan persoalan paten tersebut, namun ketidakmauan Apple untuk melisensinya membuat kami tidak punya pilihan selain mempertahankan inovasi kami,&quot; demikian pernyataan Motorola yang TerasJakarta kutip dari DigitalTrends, Minggu (19/8/2012).<br />\r\n<br />\r\nHal ini dinilai sebagai perang antara Google dan Apple, dengan Google menggunakan paten Motorola untuk menyerang Apple. Terlebih lagi, Apple banyak memperkarakan vendor Android seperti Samsung dan juga Motorola sendiri.\r\n', '', 'Senin', '2012-08-20', '04:49:48', '7google_motorola.jpg', 15, 'teknologi', 'Y'),
(614, 22, 'admin', 'Zuckerberg akan Berhenti Pimpin Facebook?', 'Buntut Anjloknya di Bursa Saham', '', 'zuckerberg-akan-berhenti-pimpin-facebook', 'N', 'N', 'Y', 'Jakarta - Harga saham Facebook terus terjun bebas. Rekor harga terendah terjadi baru-baru ini senilai USD 19,06 dari harga awalnya USD 38. Buruknya performa saham Facebook ini memunculkan spekulasi bahwa Mark Zuckerberg tidak seharusnya terus memimpin Facebook sebagai CEO.<br />\r\n<br />\r\nSeorang analis industri menilai bahwa Zuckerberg yang dikenal dengan dandanan kasualnya bisa fokus pada urusan teknologi di Facebook. Sedangkan bisnis Facebook dipegang oleh orang yang benar-benar kompeten.<br />\r\n<br />\r\n&quot;Saya pikir ada rasa kurang percaya terhadap kemampuannya untuk menjalankan korporasi,&quot; kata Andre Stoltman, pengacara sekuritas di New York yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\n&quot;Zuckerberg, dipandang dari sisi manapun memang adalah orang yang jenius. Akan tetapi Anda seharusnya memiliki chief executive yang dewasa dan lebih berpengalaman dalam menjalankan perusahaan tersebut,&quot; imbuhnya.<br />\r\n<br />\r\nNamun demikian, Zuckerberg tetap punya dukungan untuk terus memimpin Facebook. Patrik Moorhead, analis di Moor Insights &amp; Strategy, menyatakan masih terlalu awal untuk membicarakan kemungkinan pergantian CEO Facebook.<br />\r\n<br />\r\n&quot;Dia telah menyediakan visi yang diperlukan Facebook untuk menjadi sebesar sekarang dan mereka tetap akan membutuhkan dia sebagai pemandu. Zuckerberg harus tetap ada di posisi top sekarang,&quot; kata Patrik.<br />\r\n<br />\r\nKarten Weide selaku analis di IDC menyatakan pula bahwa Zuckerberg tidak akan memberi kesempatan pada orang lain untuk memimpin perusahaan yang didirikannya itu.<br />\r\n<br />\r\n&quot;Mark Zuckerberg tidak akan lengser dalam waktu dekat. Dia adalah pria dalam sebuah misi, yaitu ingin memaksa dunia, jika perlu, agar lebih terbuka. Dan sebagai pria dalam sebuah misi, dia tidak mengutamakan soal bisnis,&quot; demikian pendapat Karten.<br />\r\n', '<font face=\"Verdana, Arial, Helvetica, sans-serif\" color=\"#000000\">Mark Zuckerberg</font>\r\n', 'Jumat', '2012-11-02', '04:59:50', '22Mark-Zuckerberg.jpg', 38, 'teknologi', 'Y'),
(610, 21, 'admin', 'Max Biaggi Bantah ke Ducati Musim Depan ', '', '', 'max-biaggi-bantah-ke-ducati-musim-depan-', 'N', 'N', 'Y', 'Roma- Mantan pembalap MotoGP Max Biaggi tengah menikmati kariernya di World Super Bike (WSBK). Terlebih, pencapaiannya di musim ini cukup membuatnya bahagia.<br />\r\n<br />\r\nBiaggi masih memimpin di puncak klasemen WSBK musim ini dengan 272 poin. Hasil ini membuatnya semakin bersemangat untuk menorehkan lagi prestasi juara seperti yang ditorehkannya pada 2010.<br />\r\n<br />\r\nSituasi seperti itu, semakin membuat The Roman Emperor, julukan Biaggi, nyaman membela timnya Aprilia. Makanya, saat disinggung masalah isu kepindahannya ke Ducati musim depan, Biaggi buru-buru membantah. Dia menegaskan ingin mengakhiri kariernya bersama Aprilia.<br />\r\n<br />\r\nSetelah empat tahun melanglang buana di ajang MotoGP dengan prestasi terbaik menjadi runner-up pada musim pertamanya bersama Yamaha, Biaggi memutuskan hengkang pada 2005. Dua tahun berikutnya, pembalap kelahiran Juni 1971 ini terjun ke arena WSBK.<br />\r\n<br />\r\nSebelum berlabuh di Aprilia, Biaggi lebih dulu bergabung dengan Suzuki di tahun pertamanya, dan setahun berikutnya ke Ducati sebelum akhirnya melompat ke Aprilia pada 2009.\r\n', 'Max Biaggi.\r\n', 'Minggu', '2012-08-19', '05:13:20', '6max_biaggi.jpg', 18, 'olahraga', 'Y'),
(615, 21, 'admin', 'Foto Panas Beredar Lagi, Nikita Mirzani Syok', '', '', 'foto-panas-beredar-lagi-nikita-mirzani-syok', 'N', 'N', 'Y', 'Jakarta - Nama Nikita Mirzani memang sedang naik daun belakangan ini. Dengan keberaniannya dalam menampilkan lekuk tubuhnya di beberapa film yang diperaninya, dirinya pun sempat didaulat dengan predikat sebagai salah satu artis hot tanah air.<br />\r\n<br />\r\nNamun, keberaniannya tersebut ternyata harus seiring dengan pil pahit yang ditelannya. Beberapa waktu lalu, foto topless dirinya sempat beredar luas di dunia maya. Dan kini, kembali foto-foto yang memperlihatkan kenekatannya di depan kamera dipertontonkan.<br />\r\n<br />\r\nDalam foto-foto ini, Nikita hanya menutupi payudaranya dengan jari ataupun rambutnya, tanpa mengenakan sehelai baju pun. Saat dikonfirmasi, Nikita mengaku syok.<br />\r\n<br />\r\n&quot;Gue syok. Gak tahu mau ngomong apa lagi. Itu foto emang udah lama banget,&quot; tuturnya, Rabu (15/8).<br />\r\n<br />\r\nArtis yang sempat mengisi program Kakek Kakek Narsis di Trans TV ini belum mau memberikan konfirmasi lebih. Dirinya masih mencari ketenangan atas musibah yang menimpanya untuk ke sekian kali.<br />\r\n<br />\r\n&quot;Gak bisa mikir. Mau ngomong apa. Kasih nafas dulu, kasih gue ketenangan. Ya Tuhan, ada aja musibah menimpa hidup gue. Pokoknya maaf gak bisa ngomong banyak,&quot; tukasnya.\r\n', 'Nikita Mirzani \r\n', 'Senin', '2012-08-20', '05:24:44', '11NikitaMirzani.jpg', 17, 'hiburan,selebritis', 'Y'),
(613, 19, 'admin', 'Lenovo Yakin Kalahkan Microsoft Surface', '', '', 'lenovo-yakin-kalahkan-microsoft-surface', 'N', 'N', 'N', 'Jakarta - Microsoft akan menjual tablet produksi sendiri yang bernama Surface. Beberapa mitra produsen PC kabarnya tak senang dengan kehadiran Surface yang dianggap sebagai pesaing. Namun Lenovo percaya diri tablet buatannya akan mampu mengalahkan Surface.<br />\r\n<br />\r\n&quot;Microsoft memang kuat di software, namun saya tidak percaya mereka bisa menyediakan hardware terbaik di dunia. Sedangkan Lenovo bisa,&quot; klaim CEO Lenovo, Yang Yuanqing.<br />\r\n<br />\r\n&quot;Meskipun kami tidak suka Microsoft membuat hardware, namun meskipun mereka memulai bisnis hardware ini, kami pikir itu hanya berarti satu kompetitor bertambah lagi,&quot; imbuhnya, yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\nSebelumnya, kehadiran Microsoft Surface mendapat perlawanan dari Acer. Vendor komputer asal Taiwan itu menyatakan bahwa kedatangan Surface akan berdampak negatif bagi ekosistem industri PC.<br />\r\n<br />\r\nDi masa lalu, Microsoft memang selalu bermitra dengan vendor PC untuk membuat komputer berbasis sistem operasi Windows. Namun untuk Windows 8, mereka memutuskan membuat tablet PC sendiri.<br />\r\n<br />\r\nBahkan, ada kabar yang beredar bahwa Surface akan dijual hanya USD 199. Jika benar, bisa jadi Surface sukses besar mengingat harganya yang sangat terjangkau. Kabarnya, Surface akan dipasarkan sekitar bulan Oktober mendatang, bersamaan dengan perkenalan resmi OS Windows 8.\r\n', '', 'Senin', '2012-08-20', '04:53:44', '43Microsoft-Surface.jpg', 14, 'teknologi', 'Y'),
(617, 23, 'admin', '\"Expendables 2\" Impian Jean Claude Van Damme', '', 'http://www.youtube.com/embed/7rkdTcQLwZ4', 'expendables-2-impian-jean-claude-van-damme', 'N', 'N', 'N', 'Peran dalam Expendables 2 telah lama diinginkan oleh Jean-Claude Van Damme. Pasalnya aktor laga yang satu ini punya impian untuk bermain bersama Arnold Schwarzenegger, Sylvester Stallone dan Bruce Willis.<br />\r\n<br />\r\nVan Damme yang memerankan si jahat Jean Vilain dalam Expendables 2 mengungkap kepada PostMedia bahwa kesempatan yang didapat untuk bermain bersama kedua aktor idamannya itu sangatlah berharga.<br />\r\n<br />\r\n&quot;Aku selalu berharap untuk bisa membuat film bersama salah satu dari mereka. Kini aku bermain film bersama keduanya,&quot; ungkapnya. Ahli bela diri asal Belgia ini juga mengaku kagum dengan dedikasi Stallone dalam membuat film laga spektakuler ini (Expendables).<br />\r\n<br />\r\n&quot;Aku melihat pria dengan usia lebih dari 60 dan ia masih bisa menikmati apa yang ia lakukan. Aku bahagia kembali, ia (Stallone) membuatku cinta kepada film lagi,&quot; komentarnya.<br />\r\n<br />\r\nSeperti filmnya yang pertama, The Expendables 2 sudah pasti menyajikan baku hantam, adegan tembak-menembak yang intens, serta ledakan di mana-mana. Itulah alasan mengapa The Expendables 2 dibuat, supaya adrenalin penonton terpacu.\r\n', 'Jean-Claude Van Damme.\r\n', 'Senin', '2012-08-20', '05:47:30', '76jean-claude-van-damme-the-expendables-2.jpg', 23, 'film,hiburan', 'Y'),
(616, 21, 'admin', 'Nyanyikan Anti Putin, Personel Pussy Riot Dibui', '', '', 'nyanyikan-anti-putin-personel-pussy-riot-dibui', 'N', 'N', 'N', 'Rusia - Pengadilan Rusia memvonis penjara dua tahun personel band Pussy Riot karena menyanyikan lagu anti Presiden Vladimir Putin.<br />\r\n<br />\r\nPengadilan menetapkan tiga anggota band itu bersalah melakukan &#39;hooliganisme&#39; dengan motivasi agama.<br />\r\n&nbsp;<br />\r\nHakim Marina Syrova mengatakan para anggota band &quot;secara berhati-hati merencanakan&quot; nyanyian mereka tanggal 21 Februari lalu di dalam katedral di Moskow. &quot;Tolokonnikova, Alyokhina dan Samutsevich melakukan &quot;hooliganisme&quot; -- dengan kata lain pelanggaran berat ketertiban umum,&quot; kata Syrova.<br />\r\n<br />\r\n&quot;Pengadilan menyatakan mereka bersalah. Pengadilan meraih putusan berdasarkan kesaksian terdakwa sendiri dan bukti lain,&quot; tambahnya.<br />\r\n<br />\r\nJaksa menuntut hukuman tiga tahun penjara atas tiga anggota band itu.<br />\r\n<br />\r\nPara pendukung band itu melakukan protes di sejumlah tempat di Moskow.&nbsp; Keamanan ketat pun diterapkan dan sejumlah jalan ditutup.<br />\r\n<br />\r\nPussy Riot mengecam kasus tersebut yang mereka katakan diorganisir Putin.<br />\r\n<br />\r\n<strong>Buat Marah Gereja</strong><br />\r\n<br />\r\nSejumah selebriti termasuk bintang pop Amerika, Madonna, menyerukan agar mereka dibebaskan.<br />\r\n<br />\r\nKetiga anggota band itu mengatakan &quot;doa punk&quot; mereka adalah tindak politik untuk memprotes gereja ortodoks Rusia yang mendukung Presiden Putin.<br />\r\n<br />\r\nDalam penampilan seronok mereka di dekat altar mereka meminta Bunda Maria untuk &quot;menggeser Putin&quot;.<br />\r\n<br />\r\nNyanyian mereka membuat marah gereja Ortodoks dan ketua gereka Kirill menyebutkan penampilan itu sama saja dengan penghujatan agama. Namun sejumlah warga Rusia menganggap kasus itu sebagai upaya pemerintah membungkam kritikan.\r\n', '<span class=\"judul judul_artikel2011\">Pussy Riot. </span>\r\n', 'Senin', '2012-08-20', '05:30:13', '46Pussy-Riot.jpg', 17, 'hiburan,musik', 'Y'),
(619, 31, 'admin', '4 Alasan Kenapa Memaafkan Penting Bagi Kesehatan', '', '', '4-alasan-kenapa-memaafkan-penting-bagi-kesehatan', 'N', 'N', 'N', 'Jakarta - Memaafkan bukan berarti melupakan, tapi memberi kesempatan kepada diri sendiri untuk menghapus rasa kesal dan dendam terhadap orang lain. Dengan demikian, rasa marah dan tekanan yang mengganggu emosi pun dapat diredakan. Akibatnya, pikiran jadi lebih tenang dan jauh dari stres. Sejatinya, tak hanya itu saja manfaat kesehatan dari memaafkan orang lain.<br />\r\n<br />\r\nSecara ilmiah, memaafkan kesalahan orang lain dapat bermanfaat baik bagi kesehatan fisik maupun mental. Secara sosial, memaafkan orang lain merupakan wujud kebesaran jiwa dan perilaku yang dianggap baik. Ada banyak manfaat kesehatan dari memaafkan orang lain seperti dilansir Mayo Clinic dan Telegraph, Minggu (19/8/2012) antara lain:<br />\r\n<br />\r\n<strong>1. Terhindar dari Penyakit Tekanan Darah Tinggi</strong><br />\r\nPara peneliti dari University of California, San Diego menemukan bahwa orang-orang yang bisa melepaskan kemarahannya dan memaafkan kesalahan orang lain cenderung lebih rendah risikonya mengalami lonjakan tekanan darah.<br />\r\n<br />\r\nPeneliti meminta lebih dari 200 relawan untuk memikirkan saat temannya menyinggung perasaan. Setengah dari kelompok diperintahkan untuk berpikir mengapa hal tersebut bisa membuatnya marah, sedangkan yang lainnya didorong untuk memaafkan kesalahan tersebut. Peneliti menemukan bahwa orang yang marah mengalami peningkatan tekanan darah lebih besar dibanding orang yang pemaaf.<br />\r\n<strong><br />\r\n2. Terhindar dari Risiko Penyalahgunaan Obat dan Alkohol</strong><br />\r\nSejumlah penelitian telah membuktikan bahwa rasa benci, dendam dan permusuhan dapat memicu tekanan darah tinggi. Stres muncul ketika perasaan kecewa atau tersakiti. Memaafkan adalah sebuah proses perdamaian dengan diri sendiri. Seseorang yang memberi maaf justru akan merasa lebih rileks untuk menerima kondisinya.<br />\r\n<br />\r\nDengan kondisi mental yang lebih rileks, seseorang juga akan terhindar dari risiko penyalahgunaan alkohol dan obat terlarang. Risiko tersebut umumnya dihadapi oleh para pendendam yang membutuhkan jalan pintas untuk lepas dari beban emosi negatifnya.<br />\r\n<br />\r\n<strong>3. Menurunkan Risiko Serangan Jantung</strong><br />\r\nPara ilmuwan membuktikan bahwa permintaan maaf yang ditujukan pada seseorang bisa meningkatkan kesehatan jantungnya. Orang yang mengalami perlakuan kasar akan mengalami peningkatan tekanan darah yang dapat memicu serangan jantung atau stroke. Namun ketika mendengarkan kata &#39;maaf&#39;, tekanan darah akan menurun kembali.<br />\r\n<br />\r\nTekanan darah yang diukur dalam penelitian adalah tekanan darah diastolik, yaitu tekanan dalam darah antara detak jantung atau tekanan dalam arteri-arteri ketika jantung istirahat setelah kontraksi. Jika terlalu tinggi atau terjadi untuk waktu yang lama, dapat meningkatkan kemungkinan stroke atau serangan jantung.<br />\r\n<br />\r\n<strong>4. Jauh dari Stres dan Depresi</strong><br />\r\nSebuah penelitian yang dimuat Personality and Social Psychology Bulletin menemukan bahwa memafkan secara positif dapat mengurangi gejala depresi. Tak hanya itu, memaafkan akan mengembalikan pikiran positif, dan memperbaiki hubungan. Selain itu, memaafkan juga berkaitan dengan perilaku positif lain seperti sifat dermawan, murah hati dan tidak mudah tertekan.<br />\r\n', '', 'Sabtu', '2012-11-17', '08:14:51', '7health.jpg', 23, 'kesehatan', 'Y'),
(625, 41, 'admin', 'Effendi Ghazali: Putaran Kedua Pilkada DKI Ketat', '', '', 'effendi-ghazali-putaran-kedua-pilkada-dki-ketat', 'N', 'Y', 'N', 'Jakata - Pengamat politik dari Universitas Indonesia, Effendi Ghazali, mengungkapkan pada putaran kedua pemilihan kepala daerah (Pilkada) pada September mendatang, akan terjadi persaingan ketat antara pasangan Joko Widodo-Basuki T Purnaka dengan pasangan Fauzi Bowo-Nachrowi Ramli.<br />\r\n<br />\r\n&ldquo;Kami telah mengadakan survey internal, dan hasilnya, akan terjadi persaingan ketat antara Pak Jokowi dan Pak Fauzi Bowo. Tidak seperti hasil sebelumnya yang memang jauh jarak perolehannya,&rdquo; ujarnya ditemui di acara open house yang diadakan Gubernur Fauzi Bowo, di rumah dinasnya Jalan Taman Suropati No. 7, Jakarta Pusat, Minggu (19/08/2012).<br />\r\n<br />\r\nMeski demikian, Effendi urung menyebutkan nilai dari survey yang dilakukan oleh pihaknya, mengingat masih ada margin eror yang besar dari 450 responden yang dilakukan survey. &ldquo;Siapa yang lebih unggul, belum bisa saya kasih tahu sekarang, karena survey kami agak besar margin errornya,&rdquo; jelasnya.<br />\r\n<br />\r\nMenyinggung maraknya penggunaan isu SARA yang terjadi selama bulan ramadhan kemarin, Effendi angkat bicara. Menurutnya, penggunaan isu SARA yang dilakukan oleh pihak-pihak tertentu sudah menimbulkan dampak yang besar, baik di kalangan masyarakat bawah maupun untuk calon pasangan. &ldquo;Itu jelas ada dampaknya. Bahkan pengaruhnya cukup besar untuk pilkada putaran kedua nanti,&rdquo; tandasnya.\r\n', 'Joko Widodo (kiri), Fauzi Bowo (kanan)\r\n', 'Jumat', '2012-09-14', '10:42:25', '53joko_foke.jpg', 24, 'metropolitan', 'Y'),
(624, 41, 'admin', 'Tuntut THR, Ratusan Pekerja Transjakarta Mogok', '', '', 'tuntut-thr-ratusan-pekerja-transjakarta-mogok', 'N', 'N', 'N', 'Jakarta - Ratusan pekerja bus koridor I (Blok M-Kota) dan X (Cililitan-Tanjung Priok) mogok bekerja. pramudi, teknisi, dan petugas keamanan menuntut kenaikan upah dan pembayaran Tunjangan Hari Raya (THR). Mereka di depan Pool Pinang Ranti, Jalan Raya Pondok Gede, Pinang Ranti, Makassar, Jakarta Timur, sambil berorasi membentangkan spanduk bertemakan agar PT Jakarta Expres Trans (JET) membayar THR.<br />\r\n<br />\r\nMenurut&nbsp; pramudi Bus TransJakarta Koridor I, Maya, pihaknya terpaksa melakukan mogok operasi karena pihak perusahaan tidak membayarkan kewajibannya memberikan THR.<br />\r\n<br />\r\n&quot;Sementara, anak-anak sudah menunggu di rumah ingin jalan-jalan ke mal untuk beli baju Lebaran,&quot; ujarnya kepada wartawan, Senin (13/08/2012).<br />\r\n<br />\r\nSedangkan Abdul Chakim berharap, selain memberikan THR perusahaan PT JET juga menaikan upah. Pasalnya, untuk Pramudi yang di bawah manajeman PT JET upahnya bervariasi mulai dari Rp2,4 juta-Rp2,8 juta. Sedangkan pramudi yang berada di bawah manajemen gajinya mencapai Rp5,3 juta.<br />\r\n<br />\r\n&quot;THR kami segera terbayar dan gaji kami dinaikkan sejajar dengan pramudi dari koridor lainnya,&quot; imbuhnya.<br />\r\n<br />\r\nHingga bubar aksi berjalan berdamai, pihak perusahaan berjanji akan membayarka THR dan menaikan upah para pekerja bus Transjakarta.\r\n', '', 'Senin', '2012-08-20', '10:14:24', '95demo_karyawan-transjakarta.jpg', 69, 'metropolitan', 'Y'),
(622, 31, 'admin', 'Orang Beriman Kondisi Fisik n Mentalnya Lebih Sehat', '', '', 'orang-beriman-kondisi-fisik-n-mentalnya-lebih-sehat', 'N', 'N', 'N', '<p>Orang yang beriman disayang Tuhan, mungkin itulah sebabnya kemudian orang yang beriman juga memiliki kondisi kesehatan yang baik. Nyatanya, berbagai penelitian menunjukkan bahwa orang-orang yang memiliki keyakinan dan keimanan yang teguh juga memiliki kondisi fisik yang lebih prima.<br /> <br /> \"Keyakinan terhadap agama bisa mengurangi stres, depresi, dan meningkatkan kualitas hidup,\" kata Dr Harold G. Koenig, profesor psikiatri dan ilmu perilaku di Duke University Medical Center seperti dilansir Medpagetoday.com, Minggu (19/8/2012).<br /> <br /> Data sebuah penelitian yang dimuat American Journal of Health Promotion tahun 2005 menyimpulkan bahwa orang yang banyak berdoa lebih banyak mendapat manfaat kesehatan dengan cara menerapkan perilaku yang sehat, menjalankan antisipasi terhadap penyakit dan lebih puas terhadap pelayanan kesehatan.<br /> <br /> Sebuah penelitian tahun 2006 yang dimuat British Medical Journal juga menemukan bahwa kehadiran dalam sebuah acara keagamaan ternyata berkaitan dengan penurunan risiko penyakit menular.<br /> <br /> Menurut Koenig, adanya keyakinan beragama dan kegiatan spiritual berhubungan dengan risiko penyakit atau gangguan kesehatan yang lebih rendah, misalnya stres, penyakit kardiovaskular, tekanan darah, reaktivitas kardiovaskular, gangguan metabolisme serta dapat menjamin keberhasilan operasi jantung. Namun di sisi lain, Koenig juga memperingatkan bahwa cara kerja Tuhan ini tidak dapat diukur dengan cara dan metode apapun.<br /> <br /> \"Saya percaya bahwa doa efektif, tapi tidak berfungsi secara ilmiah dan tidak dapat diprediksi. Tidak ada alasan ilmiah atau teologis atas setiap efek dari keyakinan yang dapat dipelajari atau didokumentasi, seolah-olah Tuhan adalah bagian dari alam semesta yang dapat diprediksi. Ilmu pengetahuan tidak dirancang untuk membuktikan hal-hal yang supranatural,\" kata Koenig.<br /> <br /> Selain itu, keyakinan terhadap agama juga telah dikaitkan dengan umur panjang, perkembangan penyakit kognitif yang lebih lambat dan penuaan yang sehat. Senada dengan Koenig, dr Robert A. Hummer, profesor sosiologi di University of Texas di Austin yang berfokus pada hubungan antara agama dan rendahnya risiko kematian juga memiliki pendapat yang sama.<br /> <br /> Hummer merujuk sebuah penelitian yang melacak beberapa orang berusia 51 - 61 tahun selama 8 tahun untuk mendokumentasikan tingkat ketahanan hidupnya. Penelitian tersebut menemukan bahwa peserta yang tidak menghadiri acara keagamaan sama sekali memiliki kemungkinan 64 persen lebih tinggi mengalami kematian dibandingkan orang yang sering beribadah.</p>', '', 'Senin', '2012-08-20', '08:51:08', '19shalat.jpg', 26, 'kesehatan', 'Y'),
(644, 41, 'admin', '\"Banjir Jakarta\" Paling Dicari di Google', 'Jakarta Darurat Banjir', '', 'banjir-jakarta-paling-dicari-di-google', 'N', 'Y', 'N', '<p>\r\nJakarta - Banjir yang mengguyur Jakarta beberapa hari lalu membuat sejumlah lokasi di ibukota banjir. Internet, jadi media yang digunakan warga Jakarta untuk mencari tahu informasi terkini seputar banjir. &nbsp;\r\n</p>\r\n<p>\r\nDalam laporan Pencarian Terhangat Google Indonesia sepanjang 11 - 17 Januari 2013, kata kunci &quot;Banjir di Jakarta&quot; adalah yang paling banyak dimasukkan dalam mesin pencari Google.\r\n</p>\r\n<p>\r\nTak hanya mesin pencari, beberapa platform milik Google juga digunakan untuk memberi informasi seputar banjir. Ada Google Crisis Response, yang menyajikan informasi lokasi-lokasi banjir di Jakarta. Bahkan, layanan ini juga memperlihatkan kondisi lalu lintas yang macet akibat banjir.\r\n</p>\r\n<p>\r\nDi dalam Google Crisis Response juga terdapat beberapa nomor telepon penting dari lembaga pemerintah DKI Jakarta maupun swadaya masyarakat, yang dapat dihubungi oleh warga untuk mendapat bantuan dan evakuasi.\r\n</p>\r\n<p>\r\nSelain layanan Google, jejaring sosial Twitter juga banyak digunakan untuk mencari informasi terkini. Beberapa akun Twitter yang memberi informasi banjir antara lain @TMCPoldaMetro dan @LewatMana.\r\n</p>\r\n<p>\r\nSitus web pemberi informasi lalu lintas LewatMana.com juga laris dikunjungi dalam sepekan ini. LewatMana memperlihatkan kondisi lalu lintas dan gambar dari CCTV. Ia menduduki peringkat 10 Pencarian Terhangat Google Indonesia pada 11 - 17 Januari 2013.\r\n</p>\r\n<p>\r\nDalam sepekan ini, warga juga ingin tahu soal perkiraan cuaca dengan memasukkan kata kunci BMKG di mesin pencari Google. BMKG (Badan Meteorologi Klimatologi dan Geofisika) masuk ke posisi 9 sebagai topik yang paling dicari di Google Indonesia pekan ini. (Sumber: kompas.com)\r\n</p>\r\n', '', 'Senin', '2013-01-21', '09:46:27', '25banjir-jakarta.jpg', 31, 'nasional', 'Y'),
(645, 48, 'admin', 'Korban dan Pelaku Pemerkosaan parah', 'Seleksi Calon Hakim Agung', '', 'korban-dan-pelaku-pemerkosaan-saling-menikmati', 'N', 'N', 'Y', '<p>\r\nCalon hakim agung Muhammad Daming Sanusi menyatakan, hukuman mati tidak layak diberlakukan bagi pelaku pemerkosaan. Penjelasannya soal ini mengundang tawa sejumlah anggota Komisi III saat berlangsung fit and proper test hakim agung di Komisi III DPR pada Senin (14/1/2013) ini.\r\n</p>\r\n<p>\r\n&quot;Bagaimana menurut Anda, apabila kasus perkosaan ini dibuat menjadi hukuman mati?&quot; tanya anggota Komisi III dari Fraksi PAN, Andi Azhar, ketika itu kepada Daming.\r\n</p>\r\n<p>\r\nDaming menjawab, &quot;Yang diperkosa dengan yang memerkosa ini sama-sama menikmati. Jadi, harus pikir-pikir terhadap hukuman mati.&quot;\r\n</p>\r\n<p>\r\nJawaban Daming ini pun langsung mengundang tawa, tetapi tidak sedikit yang mencibir pernyataannya. Dijumpai seusai menjalani fit and proper test, Daming berdalih bahwa pernyataannya itu hanya untuk mencairkan suasana.\r\n</p>\r\n<p>\r\n&quot;Kita tadi terlalu tegang, jadi supaya tidak terlalu tegang,&quot; imbuhnya.\r\n</p>\r\n<p>\r\nMenurut Daming, hukuman mati harus dipertimbangkan baik-baik. Ia beralasan, dirinya belum memberikan jawaban tegas apakah ia mendukung atau tidak penerapan hukuman mati bagi pelaku pemerkosaan. &quot;Tentu kita harus pertimbangkan baik-baik kasus tertentu, seperti narkoba, korupsi, saya setuju. Tapi untuk kasus pemerkosan, harus dipertimbangkan dulu. Tadi saya belum memberikan jawaban yang tegas,&quot; kata Daming.\r\n</p>\r\n<p>\r\nMenanggapi pernyataan itu, anggota Komisi III lain dari Fraksi Partai Demokrat, Himmatul Aliya Setiawati, menilai candaan Daming sangat tidak pantas.\r\n</p>\r\n<p>\r\n&quot;Saya kira candaannya tidak pas. Saya setuju ada hukuman mati ya,&quot; ucap Aliya.\r\n</p>\r\n<p>\r\nMeski menganggap tak pantas, ia menilai jawaban Daming sudah memenuhi kriteria yang diharapkan dari seorang hakim agung. &quot;Dari Fraksi Gerindra menyatakan tidak akan memilih, tapi kalau saya sih soal memilih kita lihat nilai-nilai keseluruhannya,&quot; tutur Aliya. (Sumber: kompas.com\r\n</p>\r\n', '', 'Senin', '2013-01-21', '15:59:46', '31palu-hakim.jpg', 56, 'hukum', 'Y'),
(602, 54, 'admin', 'La Nyalla Kembalikan Riedl Jadi Pelatih Timnas', '', '', 'la-nyalla-kembalikan-riedl-jadi-pelatih-timnas', 'Y', 'N', 'N', 'Jakarta - Jakarta - Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.<br />\r\n<br />\r\nPria asal Austria itu sebelumnya pernah menukangi Timnas, namun dipecat pada 13 Juli 2011 akibat kisruh ditubuh PSSI. Dengan penunjukan itu, berarti Riedl akan kembali jadi peramu permainan skuad &#39;Pasukan Garuda&#39; jelang Piala AFF di Malaysia, November mendatang. <br />\r\n<br />\r\nMenurut Acting Sekjen PSSI Tigor Shalom Boboy,&nbsp; Riedl ditunjuk oleh Direktur Teknik Timnas Benny Dollo yang sebelumnya diberi mandat oleh PSSI&nbsp; Rabu (8/8/2012) lalu. <br />\r\n<br />\r\n&quot;Benny Dollo telah memberikan rekomendasinya terkait posisi pelatih kepala tim nasional senior kepada Exco PSSI melalui Ketua Umum La Nyalla Mahmud Mattalitti. Posisi pelatih kepala tim nasional senior yg direkomendasikan oleh Benny Dollo selaku Direktur Teknik adalah Alfred Riedl,&quot; ujar Tigor melalui rilis yang diterima INILAH.COM, Kamis (16/8/2012).<br />\r\n<br />\r\nTigor mengungkapkan bahwa Riedl sudah menyatakan kesediaannya terhadap penunjukannya sebagai pelatih kepala tim nasional senior. Pria 62 tahun itu akan&nbsp; tiba di Indonesia pada akhir Agustus 2012.<br />\r\n<br />\r\nSetelah itu, Riedl akan langsung menyusun nama-nama siapa saja yang akan masuk dalam tim besutannya.<br />\r\n<br />\r\n&quot;Susunan Managemen dan Official serta pemain Tim Nasional akan diumumkan pasca lebaran menunggu konfirmasi pelatih kepala Alfred Riedl,&quot; tukas Tigor.<br />\r\n<br />\r\nSebelumnya, pihak PSSI KLB pimpinan La Nyalla menyatakan membentuk Timnas sendiri setelah mandegnya pertemuan Joint Committee PSSI. Menurut pihak La Nyalla, seharusnya pembentukan Timnas dibahas di komite bersama tersebut melibatkan dua belah pihak, antara kubu Djohar Arifin dengan pihaknya.<br />\r\n<br />\r\nPiala AFF akan diselenggarakan 22 November hingga 22 Desember 2012 dengan tuan rumah Malaysia dan Thailand. Indonesia akan bermain di Grup B yang bertempat di Malaysia bersama Malaysia, Singapura dan Runner Up babak penyisihan.\r\n', '', 'Minggu', '2012-08-19', '03:19:23', '84alfred-riedl6.jpg', 21, 'bola,olahraga', 'Y'),
(603, 54, 'admin', '4 Teknologi yang Bakal Bertahan Sampai 2030', '', '', '4-teknologi-yang-bakal-bertahan-sampai-2030', 'Y', 'Y', 'N', 'Perkembangan teknologi telah mengantarkan berbagai perangkat yang lebih kecil, cepat dan tangguh ke dalam genggaman tangan. Ada juga yang telah ditinggalkan atau digantikan teknologi lain, seperti sebuah floppy disk. &nbsp;<br />\r\nSelain teknologi yang ditiggalkan, ada juga beberapa teknologi yang diprediksi akan tetap bertahan sampai puluhan tahun ke depan. Seperti dilansir Live Science, Sabtu (18/8/2012), berikut empat teknologi yang diprediksi akan bertahan sampai 2030.<br />\r\n<br />\r\n<strong>1. Papan Ketik QWERTY</strong><br />\r\nTeknologi untuk melakukan input telah semakin banyak, ada voice recognition, handwriting recognition dan gesture control. Ini diperkiraka akan semakin akurat dan populer dalam dua dekade ke depan. Namun, sampai nanti ditemukan cara input teks menggunakan kendali pikiran, metode mengetik akan tetap sebuah metode menyusun teks yang paling akurat.<br />\r\nKehadiran papan ketik di tablet dan telefon genggam memang semakin terancam, namun layout QWERTY yang sejak dulu digunakan akan terus hidup.<br />\r\n<br />\r\n<strong>2. PC</strong><br />\r\nBeberapa orang berpendapat kita sedang memasuki zaman pasca PC. Pasalnya kini orang semakin sering menghabiskan waktu menggunakan smartphone dan tablet ketimbang menggunakan komputer desktop tradisional berbasis Windows atau Mac.<br />\r\nNamun di sisi lain, ketika sudah waktunya menggarap pekerjaan yang benar-benar serius, terutama yang melibatkan multitasking, PC masih merupakan perangkat yang&nbsp; paling bisa diandalkan.<br />\r\n&nbsp;<br />\r\nPada 2030, ukuran serta bentuk PC mungkin akan berubah. Beberapa orang bahkan berpendapat bahwa dengan adanya prosesor berotak empat, telefon genggam dan tablet menjelma menjadi PC. Tetap saja, apapun faktor yang mempengaruhi, pengguna yang fokus pada produktivitas akan membutuhkan sebuah komputer utama dengan kemampuan proses yang tinggi dan sanggup multitasking.<br />\r\n&nbsp;<br />\r\n<strong>3. USB Ports</strong><br />\r\nSekarang telah lebih dari 15 tahun sejak USB pertama kali diperkenalkan dan kita akan sulit membayangkan hidup tanpa USB. Ini hampir menjadi sebuah standar untuk membuat Anda bisa menransfer data dan menghubungkan dengan berbagai hal seperti papan ketik atau harddisk eksternal. Beberapa orang berpendapat bahwa standar seperti Thunderbolt dari Intel akan menandingi USB, tapi mereka tidak memiliki dasar instalasi untuk menandingi USB. Standar ini diprediksi akan semakin berkembang ke depannya.<br />\r\n<strong><br />\r\n4. Uang Tunai</strong><br />\r\nAda beberapa perdebatan mengenai apakah kartu kredit dan debit akan sepenuhnya digantikan oleh sistem pembayaran mobile dalam beberapa tahun ke depan. Walau bagaimanapun, uang tunai tampaknya akan tetap dibawa meski pada 2030.<br />\r\n&nbsp;<br />\r\nPasalnya di era informasi ini, membayar dengan uang tunai adalah cara terbaik untuk membuat pembelian yang Anda lakukan tetap anonim dan pribadi. Selain itu, uang kertas memiliki perlindungan terbaik dalam melawan pencuri indentitas karena orang yang menerima pembayaran tidak harus mengetahui nama Anda.\r\n', '', 'Sabtu', '2012-11-17', '03:27:34', '5technology-gadgets.jpg', 20, 'teknologi', 'Y'),
(604, 54, 'admin', 'Usai China, Indonesia Tuan Rumah Miss World 2013', '', '', 'usai-china-indonesia-tuan-rumah-miss-world-2013', 'Y', 'N', 'N', 'Masyarakat Indonesia pantas bahagia dua kali lipat saat penyelenggaraan final Miss World 2012. Bukan saja prestasi Ines Putri yang masuk dalam jajaran 15 besar, tetapi Indonesia juga diumumkan menjadi lokasi penyelenggaraan Miss World 2013.<br />\r\n&nbsp;<br />\r\nAjang Miss World 2012 di Ordos, Mongolia, China, berlangsung sukses. Diikuti 116 finalis dari seantero dunia, Miss World yang diselenggarakan ke-62 tahun ini akhirnya mendaulat Wenxia Yu sebagai Miss World 2012.<br />\r\n<br />\r\nSelama setahun, wakil dari Republik Rakyat China ini akan berkeliling dunia dan menjalankan misi sosial dalam program yang dikemas secara baik bernama Beauty with a Purpose.<br />\r\n<br />\r\nAdapun masa tugas terakhir dari pemilik tinggi badan 177 sentimeter ini akan dilakukan saat penyelenggaraan Miss World 2013 di Indonesia. Dan, kepastian soal lokasi penyelenggaraan Miss World dilakukan secara simbolis saat malam final Miss World 2012. Saat itu, Nana Putra, Managing Director MNC Group menerima bendera Miss World.<br />\r\n<br />\r\nRencananya, Miss World 2013 diselenggarakan September dengan mengambil lokasi karantina di Bali. Sementara itu, Jakarta sebagai Ibu Kota Indonesia dipilih menjadi lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Jakarta akan menjadi tuan rumah malam final Miss World 2013. Namun tepatnya di mana lokasi tersebut, kami belum bisa memastikan,&rdquo; tutur Kanti Mirdiati kepada Okezone di Blacksteer Lounge, Belleza Shopping Arcades, Permata Hijau, Jakarta, belum lama ini.<br />\r\n<br />\r\nProject Director Miss Indonesia &amp; Managing Director RCTI ini pun menjelaskan alasan Jakarta dipilih sebagai lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Ini merupakan bagian dari upaya memperkenalkan Jakarta dan Indonesia sendiri ke mata dunia. Kebanyakan orang luar negeri tahu Bali, tapi tidak tahu kalau Bali ada di Indonesia. Mereka mengira bahwa Bali itu sebuah negara,&rdquo; ucap wanita ramah ini.\r\n', '', 'Minggu', '2012-08-19', '03:37:05', '85missworld.jpg', 25, 'internasional', 'Y'),
(605, 54, 'admin', 'Memalukan! Bu Guru di AS Bercinta dengan 4 Muridnya ', 'Didakwa Penyimpangan Seks', '', 'memalukan-bu-guru-di-as-bercinta-dengan-4-muridnya-', 'Y', 'N', 'N', 'Texas - Memalukan! Seorang guru SMA di Amerika Serikat diadili karena berhubungan seks dengan empat muridnya sementara murid kelima merekam aksi mesum tersebut.<br />\r\n<br />\r\nWanita bernama Brittni Colleps tersebut dikenai sejumlah dakwaan, termasuk seks menyimpang dan hubungan tidak pantas antara pendidik dan pelajar.<br />\r\n<br />\r\nWanita berumur 28 tahun itu tadinya merupakan guru Bahasa Inggris di SMA Fort Worth, Texas. Di persidangan yang digelar hari ini seperti dilansir MyFoxDFW.com, Kamis (16/8/2012), terungkap bahwa terdakwa yang telah memiliki tiga anak itu, menggunakan pesan-pesan SMS untuk mendekati kelima pelajar putra tersebut.<br />\r\n<br />\r\nSalah seorang remaja mengaku, dia dan Colleps berkirim 100 SMS dalam satu hari saat musim semi pada tahun 2010. Pesan-pesan itu kemudian kian menjadi-jadi sehingga akhirnya mereka sepakat untuk bertemu guna bercinta.<br />\r\n<br />\r\n&quot;Dia (Colleps) bilang dia mendambakan... bahwa saya punya sesuatu yang dia inginkan,&quot; kata remaja tersebut.<br />\r\n<br />\r\nDiungkapkan remaja laki-laki tersebut, dalam satu kesempatan, empat remaja berhubungan intim dengan bu guru yang telah dipecat tersebut. Para remaja tersebut sebenarnya sudah bisa digolongkan dewasa, namun hukum melindungi para pelajar dari hubungan dengan seseorang yang jabatannya lebih tinggi, dalam hal ini guru.<br />\r\n<br />\r\nSeorang remaja lainnya merekam adegan seks tersebut dengan video telepon genggamnya. Video tersebut diputar di persidangan.<br />\r\n<br />\r\nJika terbukti bersalah, Colleps terancam hukuman penjara maksimum 20 tahun. Suaminya, Christopher Colleps, seorang tentara AS, telah menegaskan bahwa dirinya akan terus mendukung istrinya dan bahwa mereka akan tetap mempertahankan rumah tangga mereka.\r\n', 'Brittni Colleps (foto:abc)\r\n', 'Minggu', '2012-08-19', '04:20:50', '97abc_brittni_colleps.jpg', 42, 'internasional', 'Y'),
(606, 42, 'admin', 'Astagfirullah, Festival Wine Digelar di Halaman Masjid ', '', '', 'astagfirullah-festival-wine-digelar-di-halaman-masjid-', 'N', 'N', 'N', 'Beer El-Sabe - Kelompok Muslim menyatakan kemarahannya atas rencana penyelenggaraan Festival Wine di kota Beer el-Sabe, Israel. Kemarahan karena, penyelenggaraan akan dilaksanakan di halaman luar sebuah bangunan bekas masjid kuno di wilayah tersebut.<br />\r\n<br />\r\nMenurut laporan media Israel, Gerakan Islam di Israel mengatakan festival ini merupakan &quot;dosa tak termaafkan&quot;. Festival juga dianggap sebagai pukulan keras bagi umat Muslim di sana Sebab menurut kelompok Muslim tersebut, publisitas festival anggur merupakan penghinaan terhadap sensitivitas Muslim. Seperti diketahui Islam melarang konsumsi alkohol.<br />\r\n<br />\r\nFestival &quot;Salut Wine dan Beer Festival&quot; ke enam ini rencananya akan diselenggarakan di pelataran sebuah bangunan bekas masjid di Beer el-Sabe, pada 5-6 September. Festival akan menampilkan minuman beralkohol dari sekitar 30 pabrik dan perkebunan anggur di seluruh negeri.<br />\r\n<br />\r\nPusat Hukum untuk Hak Minoritas Arab di Israel, Kamis (16/8) lalu, mengirimkan surat pada Jaksa Agung, Menteri Kebudayaan dan Olahraga Israel serta Kotamadya Beer el-Sabe. Mereka menuntut agar festival Wine di wilayah tersebut dibatalkan. &quot; Penggunaan pelataran Masjid untuk festival minuman beralkohol adalah sesuatu yang sensitif. Sebab Islam melarang konsumsi alkohol dan tak sesuai dengan penggunaan masjid untuk beribadah,&quot; tulis organisasi tersebut dalam surat ke Jaksa Aram Mahameed.<br />\r\n<br />\r\nSurat juga menambahkan, Festival Wine melanggar keputusan Mahkamah Agung Israel yang keluar Juni 2011 lalu. Dalam keputusan tersebut memerintahkan masjid untuk diubah menjadi museum sejarah dan kebudayaan Islam.<br />\r\n<br />\r\nMasjid yang dibangun pada Era Usmani pada 1906 ini sempat menjadi tempat ibadah hingga 1948. Kemudian berubah menjadi penjara dan pengadilan hingga 1952. Lalu dari 1953-1991 dibuka sebagai Museum Tanah Negeb. Pada 2002 sempat ada sebuah petisi yang meminta masjid untuk dibuka kembali sebagai tempat ibadah.\r\n', '', 'Minggu', '2012-08-19', '04:32:25', '42festival_wine.jpg', 32, 'dunia-islam', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(607, 54, 'admin', 'Moskow Larang Parade Gay Selama 100 Tahun', '', '', 'moskow-larang-parade-gay-selama-100-tahun', 'Y', 'Y', 'N', '<p>\r\nPengadilan di Moskow mengukuhkan keputusan untuk melarang parade homoseksual untuk seratus tahun ke depan.<br />\r\n<br />\r\nLangkah ini dilakukan menyusul upaya pegiat hak homoseksual Rusia, Nikolay Alexeyev untuk membatalkan keputusan pemerintah kota melarang parade.<br />\r\n<br />\r\nIa meminta hak melakukan parade selama 100 tahun ke depan.<br />\r\n<br />\r\nAlexeyev juga menentang larangan kota St Petersburgh untuk menyebarkan &quot;propaganda homoseksual.&quot;\r\n</p>\r\n<p>\r\nMahkamah hak asasi Eropa telah  meminta pemerintah Rusia untuk membayar kerugian kepada Alexeyev.\r\n</p>\r\n<p>\r\nAlexeyev mengatakan Jumat (17/08) ia akan kembali ke Mahkamah Eropa untuk meminta agar menetapkan bahwa larangan itu tidak adil.\r\n</p>\r\n<p>\r\nPemerintah kota Moskow menyatakan parade gay akan menimbulkan risiko gangguan ketertiban umum.\r\n</p>\r\n<p>\r\nPemkot juga mengatakan sebagian besar warga Moskow menentang kegiatan itu.\r\n</p>\r\n<p>\r\nBulan September lalu, Dewan Eropa -pengawasan \r\nHAM di Eropa- akan meneliti tanggapan Rusia atas keputusan Mahkamah \r\nEropa sebelumnya tentang hak gay, menurut media Rusia.\r\n</p>\r\n<p>\r\nBulan Oktober 2010, Mahkamah Eropa mengatakan Rusia melakukan diskriminasi terhadap Alexeyev karena orientasi seksualnya.\r\n</p>\r\n<p>\r\nMahkamah saat itu menangani larangan Moskow atas parade gay antara tahun 2006-2008.\r\n</p>\r\n', 'Nikolay Alexeye. \r\n', 'Sabtu', '2012-11-17', '04:43:57', '7Nikolay-Alexeyev.jpg', 36, 'internasional', 'Y'),
(597, 54, 'admin', 'Pasar Tiban Kalibata Selalu Ramai Pengunjung', '', '', 'pasar-tiban-kalibata-selalu-ramai-pengunjung', 'Y', 'Y', 'N', 'Jakarta - Pasar tiban, atau pasar musiman, istilah untuk menjelaskan pasar yang musiman, tidak punya tempat menetap. Ada juga istilah pasar malam, pasar tumpah atau pasar kaget. Biasanya pasar ini mengambil waktu tertentu misalnya: bulan puasa, atau hari tertentu yang libur. Pasar tiban di Kalibata &lsquo;buka&rsquo; tiap hari minggu.<br />\r\n<br />\r\nBermacam-macam barang dijajakan, mulai dari pakaian, mainan anak-anak, sepatu, tas, tanaman hias, jajan pasar, peralatan rumah tanggga, sprei, parfum, buku dan majalah bekas, pigura, dll. Semua dengan harga murah. Pasar ini mengambil tempat sepanjang jalan dari menuju Stasiun Kalibata sampai depan STEKPI, samping periumahan DPR RI Kalibata.<br />\r\n<br />\r\nPasar ini awalnya tidak begitu ramai. Waktu itu setiap hari minggu di danau Taman Makam pahlawan (TMP) Kalibata banyak orang yang melakukan olah raga pagi. Muda-mudi paling banyak. Hukum ekonomi berjalan, di mana ada keramaian selalu ada yang menggunakan peluang. Maka ada orang jualan bubur ayam, lontong sayur, ketoprak dan lainnya. Mengambil tempat sempit di depan gerbang parkir TMP.<br />\r\n<br />\r\nLama-lama ada yang berjualan pakaian, mainan, poster, dan lainnya. Semakin banyak yang berjualan dan mengambil tempat di sepanjang jalan depan TMP. Di sini mulai ada masalah, kemacetan. Mungkin karena pengunjung semakin banyak, membuat kemacetan, pasar &lsquo;dipindah&rsquo; ke dalam. Hingga sekarang. Sebenarnya tidak tahu dipindah atau pindah sendiri, mungkin pihak berwenang berprinsip, yang penting tidak mebuat jalan macet.<br />\r\n<br />\r\nJadilah seperti sekarang, pasar tiban menjadi hiburan sendiri untuk warga Kalibata, Pancoran, Pasar minggu dan sekitarnya. Tempatnya yang relatif jauh dari jalan raya, masih hijau, memang enak buat jalan-jalan. Setelah lelah jalan-jalan melihat-lihat barang, tersedia berbagai warung yang meyediakan berbagai menu, tinggal pilih: Nasi uduk, lontong sayur, nasi rames, mendowan, bubur ayam, pecel lele, warung Padang, warung Sunda. Juga minuman, ada es tebu, Es Teh, es buah.<br />\r\n<br />\r\nPenasaran, sempatkan hari muingggu ke Kalibata. Tersedia angkutan dari berbagai arah: Dari Blok M, naik Kopaja 57, Dari Cililitan kopaja 57/ Metrimini 64, dari Kampung melayu dan Pasar Minggu naik M16, dari Manggarai naik Metromini 62. Jangan lupa ajak keluarga, sekalian makan bersama di hari Minggu.<br />\r\n', '', 'Minggu', '2012-08-19', '01:54:07', '15pasar_tiban_kalibata.jpg', 28, 'wisata', 'Y'),
(627, 40, 'admin', 'Nikmatnya Bubur Ayam Cikini', '', '', 'nikmatnya-bubur-ayam-cikini', 'N', 'N', 'N', 'Jakarta - Jika Anda pecinta kuliner Bubur, pasti sudah mengenal Bubur Cikini H. Sulaiman. Bubur yang satu ini memang terbilang populer di Jakarta. Kabarnya bubur ini didirikan sejak tahun 1980-an. Bisa bertahan sampai sekarang tentu merupakan jaminan tersendiri. Kualitas rasa adalah modal utama sebuah usaha kuliner selalu diterima konsumen. Bubur Cikini H. Sulaiman memiliki hal tersebut.<br />\r\n<br />\r\nDahulu Bubur Cikini H. Sulaiman bisa dijumpai di tenda kaki lima. Jam operasional juga dimulai sekitar jam 6 sore hari. Namun kini Bubur Cikini H. Sulaiman telah memiliki tempat permanen yang lebih nyaman. Jam operasional juga berubah. Kini Bubur Cikini juga bisa dinikmati di pagi hari. Bagi yang suka menu bubur untuk sarapan, jangan sampai melewatkan Bubur Cikini.<br />\r\n<br />\r\nSoal menu, Bubur Cikini H. Sulaiman tentu menyajikan menu bubur sebagai sajian utama. Menu yang bisa dicicipi antara lain Bubur Ayam Biasa, Bubur Ayam Telur, Nasi Goreng Ayam, Nasi Goreng Otokwok, Mie Goreng/Rebus, Telur Goreng, Empal Gentong Nasi/Lontong, Ati Ampela, aneka minuman dan masih banyak lagi lainnya. Jika Ingin menikmati empal Gentong Nasi/Lontong harus datang di hari Sabtu atau Minggu sebab menu tersebut tidak tersedia setiap harinya.<br />\r\n<br />\r\nSoal harga memang fluktuatif. Bisa berubah kapanpun. Tetapi sebagai deskripsi harga, seporsi Bubur Ayam Biasa bisa dinikmati dengan harga Rp.13.000 per porsi, menu Bubur Telur juga di harga yang sama. Untuk Nasi Goreng Ayam bisa dinikmati dengan membayar Rp.15.000, sedangkan Nasi Goreng Otokwok bisa dinikmati dengan harga Rp,17.000. Bagi yang menyukai menu Empal Gentong Nasi/Lontong bisa dicicipi dengan membayar Rp.20.000 per porsi. Cukup murah!\r\n', '', 'Selasa', '2012-08-21', '13:55:20', '32bubur_ayam_cikini.jpg', 28, 'kuliner', 'Y'),
(628, 40, 'admin', 'Soto Betawi H. Husein sangat enak sekali', '', '', 'soto-betawi-h-husein', 'N', 'N', 'N', 'Indonesia sangat kaya akan khazanah kuliner. Masing-masing wilayah mempunyai makanan yang khas. Meskipun sama jenisnya, namun rasa dan racikannya berbeda.<br />\r\nSama seperti daerah-daerah lain di Indonesia, masyarakat Betawi juga mempunyai makanan khas yaitu soto Betawi. Salah satu yang terkenal adalah soto Betawi Haji Husein yang ada di kawasan Minangkabau, Manggarai, Jakarta Selatan. Di tempat seluas 5 x 10 meter, Bang Husein, 57; panggilan akrabnya, membuka usahanya dari pukul 07.00 WIB hingga dagangannya habis. Usaha ini telah dirintisnya sejak tahun 1989. Sebelum membuka usaha sendiri, ia terlebih dahulu belajar dari pamannya sejak tahun 1970-an.<br />\r\n<br />\r\nSaya sudah mulai ikut usaha sejak Kelas 4 SD. Waktu itu ikut Uwak (panggilan paman-Red) jualan sate, tongseng, sama soto, kata Bang Husein. Bapak empat orang anak ini mengaku memilih soto karena lebih praktis, selain itu ia ingin melestarikan makanan asli Betawi.<br />\r\nYang membedakan soto Betawi Haji Husein dengan soto di daerah lainnya adalah proses pengolahan isi sotonya. Olahan daging sapi yang berupa daging, jeroan, dan kikil terlebih dahulu direbus; baru kemudian digoreng. Yang hampir sama biasanya soto Makassar, cuma biasanya dagingnya direbus saja, nggak digoreng, ujar pria kelahiran Jakarta ini.<br />\r\nDalam sehari Bang Husein biasa menyediakan 50 Kg olahan daging sapi yang terdiri dari daging, jeroan, dan kikil. Mulai pukul 03.00 WIB ia merebus semuanya hingga pukul 06.00 WIB. Menurutnya proses merebus membutuhkan waktu yang cukup lama. Bumbu yang digunakan untuk kuah sotonya hanya terdiri dari rempah-rempah biasa yang banyak dijual di pasar. Bahan-bahan itu kemudian diracik sedemikian rupa sehingga mempunyai rasa yang khas. Kuah soto Betawi umumnya kental karena menggunakan santan. Dalam sehari ia bisa menghabiskan berpuluh butir kelapa tua untuk diolah menjadi santan.<br />\r\n<br />\r\nSetiap hari warungnya selalu ramai dikunjungi orang. Biasanya mereka datang pada saat jam istirahat makan siang. Penikmat soto Haji Husein berasal dari berbagai kalangan. Mulai dari yang berkantong tipis sampai yang berkantong tebal. Demikian lakunya, tidak jarang pelanggannya harus antre menunggu pelanggan lain yang sedang makan.<br />\r\nTempatnya yang terletak persis di pinggir jalan terkadang tidak muat menampung sepeda motor dan mobil yang dikendarai para pelanggannya. Tak jarang pula orang-orang kantoran datang jauh-jauh hanya untuk merasakan kenikmatan sotonya.<br />\r\n<br />\r\nMelihat banyaknya pengunjung yang datang, bisa dipastikan rasanya pastilah menggugah selera. Dalam sehari Bang Husein mengaku bisa menghabiskan lebih kurang 100 porsi. Untuk satu porsinya ia hargai Rp16.000, itu sudah termasuk nasi. Omzet per-bulannya bisa mencapai lebih kurang Rp20 juta. Ke-12 orang karyawan kini membantunya melayani pelanggan setiap hari. Waktu awal buka mah cuma berdua. Sekarang pegawainya nggak pernah berubah, ungkapnya. Di antara karyawannya ada dua anak lelakinya yang ikut membantu.<br />\r\nUsaha ini merupakan usaha keluarga turun-temurun. Bang Husein merupakan generasi keempat. Sebelum di tempatnya saat ini ia sempat merasakan berjualan keliling menggunakan pikulan.<br />\r\n<br />\r\nUang Rp400.000 menjadi modal awal usahanya. Dulu uang segitu besar, bisa buat beli semua, katanya. Usaha ini dijalaninya mulai dari bawah sekali. Bahan-bahan sotonya didapatkan dengan cara mengutang. Ia juga harus membayar sewa tempat.<br />\r\nSaat ini dengan omzet besar ia tidak perlu lagi mengutang. Bahkan sejak tahun 2000 tempatnyapun sudah menjadi milik pribadi. Asal ada kemauan, semua pasti bisa. Yang penting jangan pernah bosan kalau usaha, ujarnya. Untuk mempertahankan cita-rasa agar tidak berubah, Bang Husein selalu memerhatikan takaran komposisinya. Hal inilah yang menjadi salah satu daya tarik pengunjung untuk kembali karena rasa tidak berubah-ubah.<br />\r\n<br />\r\nMeski sudah menjadi pemilik, kakek dua orang cucu ini masih melayani sendiri para pelanggannya. Ia tidak canggung berbaur dengan karyawan lainnya. Ini juga menjadi salah satu trik untuk menarik pelanggannya. Terkadang para pelanggan yang seumurnya apabila dilayani olehnya akan merasa senang. Menurut mereka liat muka kita aja udah enak, makanan nomer dua, katanya sambil tertawa. Pertemuan seperti ini seperti sebuah nostalgia baginya.<br />\r\nSemua jerih payahnya telah membuahkan hasil yang cukup membanggakan baginya. Dari hasilnya berjualan ia sudah bisa pergi haji dan membiayai anak-anaknya sekolah. Ia juga sudah memberangkatkan dua karyawannya untuk menunaikan ibadah haji. Soto Betawi Bang Husein buka dari Senin sampai Minggu. Khusus hari Jumat ia sengaja tidak membuka warungnya untuk ibadah sholat Jumat. Pada bulan Ramadhan ia juga menutup usahanya sebulan penuh.<br />\r\n<br />\r\nInilah Bang Husein, usahanya dijalani secara seimbang dengan ibadah. Ia juga tidak sungkan membagi rahasia dapurnya. Rezeki mah ada aja, udah ada yang ngatur. Selain usaha juga jangan lupa berdoa, ujarnya.\r\n', '', 'Selasa', '2012-08-21', '14:35:48', '16Soto-Betawi.jpg', 23, 'kuliner', 'Y'),
(629, 31, 'admin', 'Cokelat Hitam Turunkan Tekanan Darah', '', '', 'cokelat-hitam-turunkan-tekanan-darah', 'N', 'N', 'N', 'Cokelat hitam sudah lama diketahui manfaatnya bagi kesehatan. Hasil analisa terhadap 20 studi menunjukkan, konsumsi cokelat hitam setiap hari akan menurunkan tekanan darah.<br />\r\n<br />\r\nPenelitian yang dilakukan The Cochrane Group melaporkan, zat aktif dalam cokelat bermanfaat untuk membuat pembuluh darah lebih rileks. Akibatnya, tekanan darah pun turun.<br />\r\n<br />\r\nZat aktif yang punya efek positif tersebut adalah flavonol, yang di dalam tubuh akan menghasilkan zat kimia oksida nitrat dan membuat pembuluh darah lemas sehingga darah lebih lancar bersirkulasi.<br />\r\n<br />\r\nAnalisis yang dibuat tersebut mengombinasikan beberapa penelitian sebelumnya untuk mengetahui ada tidaknya efek cokelat bagi tekanan darah. Cokelat hitam yang dikonsumsi partisipan dalam penelitian itu cukup banyak, antara 3 gram sampai 105 gram setiap hari.<br />\r\n<br />\r\nNamun penurunan tekanan darah yang dihasilkan tidak terlalu besar, hanya 2-3 mmHg. Akan tetapi penelitian hanya dilakukan selama dua minggu sehingga tidak diketahui dampaknya dalam jangka panjang.<br />\r\n<br />\r\n&quot;Meski kami belum mendapat bukti adanya efek jangka panjang penurunan tekanan darah, tetapi penurunan sedikit dalam jangka pendek ini mungkin dalam jangka panjang bisa berkontribusi pada penurunan risiko penyakit jantung,&quot; kata Karin Ried, dari National Institute of Integrative Medicine di Melbourne, Australia.<br />\r\n<br />\r\nTekanan darah tinggi cukup banyak diderita dan diperkirakan menjadi penyebab terbanyak stroke dan penyakit jantung.<br />\r\n<br />\r\nBila Anda ingin mendapatkan manfaat dari cokelat hitam, sebaiknya pastikan produk yang dibeli mengandung cokelat dalam jumlah tinggi karena kebanyakan produk di pasaran lebih banyak kandungan gula dan lemaknya.<br />\r\n<br />\r\nSelain cokelat, kacang, aprikot, blackberries, dan apel juga mengandung flavonol meski kadarnya lebih rendah daripada cokelat.\r\n', '', 'Selasa', '2012-08-21', '14:48:52', '78chocolate-negro-corazon.jpg', 27, 'kesehatan', 'Y'),
(630, 19, 'admin', 'Bos Yahoo Bajak 2 Karyawan Google', '', '', 'bos-yahoo-bajak-2-karyawan-google', 'N', 'N', 'N', 'Marissa Mayer, sang CEO Yahoo kembali memperkuat &#39;pasukannya&#39;. Pernah \r\nbernaung di bawah bendera Google, Mayer pun membajak dua karyawan dari \r\nkantor terdahulunya tersebut.<br />\r\n<br />\r\nWanita yang diangkat menjadi CEO perusahaan internet pada bulan Juli lalu ini telah mempekerjakan mantan<em> Product Marketing Manager</em> Google yang bernama Andrew Schulte. Ia kini menjadi kepala staff di tubuh Yahoo.<br />\r\n<br />\r\nSchulte\r\nbergabung dengan Google pada tahun 2007. Ia sempat menangani kampanye \r\nmarketing Google+. Penegasan kepindahan dirinya ia tuliskan di akun \r\nTwitter maupun profil LinkedInnya.<br />\r\n<br />\r\nSebelum Schulte, Mayer sudah membajak Anne Espiritu di mana duluanya bekerja sebagai<em> consumer technology PR </em>di Google, demikian dikutip dari <em>Cnet</em>, Senin (20/8/2012).<br />\r\n<br />\r\nMayer memang tengah sibuk menata struktur manajemen Yahoo. Perusahaan ini kabarnya juga tengah berburu <em>Chief Operating Officer </em>(COO) dengan pengalaman di bidang manajemen finansial dan restrukturisasi perusahaan.\r\n', '', 'Selasa', '2012-08-21', '14:58:08', '82yahoodlm.jpg', 21, 'teknologi', 'Y'),
(631, 22, 'admin', 'Perusahaan Besar Sharp Tak Lagi Produksi TV?', '', '', 'perusahaan-besar-sharp-tak-lagi-produksi-tv', 'N', 'N', 'N', '<p>Tokyo - Sharp kabarnya mempertimbangkan untuk lebih fokus memproduksi panel LCD (liquid crsytal display) sehingga perlu menjual sejumlah unit bisnisnya. Perusahaan asal Jepang ini berencana untuk tak lagi merakit TV.<br /> <br /> Sharp seperti dilaporkan surat kabar setempat Nikkei, disebut-sebut akan melepas unit bisnis mesin fotokopi dan pendingin ruangan (AC) agar lebih fokus dalam persaingan pasar LCD.<br /> <br /> Namun seperti dilansir Reuters dan dikutip detikINET, Sabtu (18/8/2012), Sharp melalui juru bicaranya menolak laporan tersebut. \"Kami mempelajari berbagai pengukuran, namun tidak ada fakta yang mendukung laporan surat kabar Nikke mengenai kemungkinan penjualan operasional utama Sharp,\" ujar juru bicara tersebut.<br /> <br /> Performa perusahaan elektronik ini memang tidak menggembirakan awal bulan ini, dengan harga saham yang merosot pada titik terendahnya dalam 40 tahun terakhir.<br /> <br /> Nikkei menyebutkan, sebagai bagian dari upaya pemulihan, Sharp juga akan melakukan spinoff pabriknya di pusat Jepang, yang membuat panel LCD untuk smartphone dan tablet, termasuk untuk komponen iPhone dan iPad Apple.<br /> <br /> \"Sharp mungkin saja menerima suntikan investasi dari pabrikan lain dan menjalankan operasional pabrik bersama-sama, seperti yang dilakukan Hon Hai roPrecision asal Taiwan di pabrik Sakai yang berlokasi di prefecture Osaka,\" tulis Nikkei.<br /> <br /> Saham Sharp turun 1,14% menjadi 173 yen pada penutupan perdagangan Jumat.</p>', '', 'Selasa', '2012-08-21', '15:01:36', '68sharptv.jpg', 28, 'teknologi', 'Y'),
(632, 19, 'admin', 'Kemungkinan Kodak Batal Jual Paten', '', '', 'kemungkinan-kodak-batal-jual-paten', 'N', 'N', 'N', 'New York - Kodak berencana menjual sebagian dari paten-patennya guna melindungi perusahaannya dari kebangkrutan. Namun belakangan, sang pionir di dunia fotografi ini menimbang ulang rencana tersebut.<br />\r\n<br />\r\nDilaporkan bahwa Kodak bisa jadi hanya menjual sebagian paten digital imaging yang hendak dilepas, atau malah tidak menjualnya satupun, demikian seperti dikutip detikINET dari AllThingsD, Senin (20/8/2012).<br />\r\n<br />\r\nKabar ini menyusul pemberitaan sebelumnya yang mengatakan bahwa Kodak telah menunda pengumuman hasil penjualan patennya. &quot;Kodak belum mencapai kepastian atau persetujuan untuk menjual portofolio paten digital imagingnya, &quot;ujar Kodak dalam sebuah pernyataan.<br />\r\n<br />\r\nSuara resmi tersebut menyugestikan bahwa lelang paten yang sudah berjalan tidak berjalan sesuai harapan perusahaan yang berbasis di Rochester, New York, Amerika Serikat ini.<br />\r\n<br />\r\nSebuah sumber yang mengetahui hal itu mengatakan bahwa tawaran yang datang untuk portofolio ini hanya berada di bawah angka USD 2 miliar.<br />\r\n<br />\r\nSebelumnya, Wall Street Journal pernah melaporkan bahwa tawaran awal datang dari dua konsorsium, di mana dipimpin oleh perusahaan raksasa, Google dan Apple.<br />\r\n<br />\r\nSeperti diketahui, Kodak berjuang keras menyelematkan &#39;nyawa&#39; perusahaan. Selain menjual sebagian dari 1.100 patennya, Kodak juga telah keluar dari bisnis kamera dan beralih ke digital printing serta penciptaan aplikasi-aplikasi baru di bidang tersebut.\r\n', '', 'Selasa', '2012-08-21', '15:07:45', '74kodakdlm.jpg', 23, 'teknologi', 'Y'),
(633, 31, 'admin', 'Apakah dia mengalami Depresi? Cek Bicaranya', '', '', 'apakah-dia-mengalami-depresi-cek-bicaranya', 'N', 'N', 'N', '<p>Jakarta, Beberapa orang pandai menyembunyikan perasaan, dari luar tampak baik-baik saja meski hatinya menangis tercabik-cabik. Para ilmuwan baru-baru ini berhasil menentukan dengan tepat tingkat keparahan depresi berdasarkan cara berbicara.<br /> <br /> Dalam penelitian yang diklaim sebagai yang terbesar di dunia tersebut, para ilmuwan menemukan bahwa cara berbicara susah dipalsukan ketika seseorang sedang depresi. Perubahan cara bicara itu bisa dipakai untuk mengukur tingkat keparahan depresi yang dialami.<br /> <br /> Adam Vogel, kepala Speech Neuroscience Unit di University of Melbourne mengatakan bahwa cara berbicara adalah penanda kesehatan otak yang sangat kuat. Berbagai perubahan yang terjadi pada cara berbicara bisa menunjukkan seberapa bagus otak bekerja.<br /> <br /> \"Cara berbicara orang yang sedang depresi berubah dan dipengaruhi oleh terapi yang diberikan, menjadi lebih cepat dengan jeda yang lebih pendek,\" kata Vogel dalam laporannya di jurnal Biological Psychiatry seperti dikutip dari Medindia, Selasa (21/8/2012).<br /> <br /> Dalam penelitian tersebut, Vogel melakukan pengamatan terhadap 105 pasien yang sedang menjalani terapi untuk menyembuhkan depresi. Beberapa hal yang diamati antara lain waktu, nada dan intonasi bicara yang kemudian dibandingkan dengan hasil pemeriksaan psikologis.<br /> <br /> Para pasien diminta melakukan panggilan telepon ke sebuah mesin penjawab otomatis. Ada yang diminta berbicara apa saja, mengungkapkan perasaan dan sebagian hanya diminta untuk membaca teks supaya tidak perlu repot-reopot memikirkan mau bicara tentang apa.<br /> <br /> \"Temuan ini memungkinkan para psikolog jadi lebih fleksibel dalam memeriksa pasien dari jarak jauh, hanya dengan mendengarkan pola dan cara berbicara meski dari lokasi yang sangat jauh atau di kampung-kampung,\" kata James Mundt dari Centre for Psychological Consultation di Wisconsin.</p>', '', 'Selasa', '2012-08-21', '15:13:07', '8akitmentalts.jpg', 24, 'kesehatan', 'Y'),
(634, 31, 'admin', 'Makanan Penyumbang KegemukaN', '', '', 'makanan-penyumbang-kegemukan', 'N', 'N', 'N', '<p>Jakarta - Salah satu faktor yang banyak bikin orang jadi gemuk adalah mengonsumsi makanan yang berlebihan dan salah. Untuk itu ketahui makanan apa saja yang ditemui sehari-hari dan bisa bikin gemuk.<br /> <br /> \"Yang paling banyak bikin gemuk adalah makanan dengan kandungan gula murni dan tepung,\" ujar dr Pauline Endang, SpGK dari FKUI, Rabu (15/8/2012).<br /> <br /> dr Pauline menjelaskan banyak orang yang kadang tidak suka nasi tapi ia suka mengemil. Namun sayangnya cemilan ini makanan yang manis dengan kadar gula tinggi, kadang ada telur dan menteganya sehingga kalori tinggi.<br /> <br /> \"Makanan-makanan ini tidak bikin kenyang, jadi orang yang mengonsumsi bawaannya ia ingin makan terus apalagi jika ditambah dengan makan gorengan yang kandungan lemaknya tinggi,\" ungkapnya.<br /> <br /> Hal senada juga diungkapkan oleh ahli gizi dr Inge Permadhi, MS, SpGK bahwa makanan tinggi kalori, tinggi gula dan tinggi lemak bisa menyebabkan seseorang mengalami kegemukan.<br /> <br /> \"Misalnya makanan berminyak, daging yang ada gajih, mentega, margarin, makanan-makanan ini rasanya enak dan gurih sehingga bikin orang ketagihan,\" ujar dr Inge dari Departemen Ilmu Gizi FKUI.<br /> <br /> Berikut ini beberapa makanan yang diketahui bisa menyumbang kegemukan yaitu:<br /> <br /> 1. Gorengan, mengandung banyak lemak dan juga kolesterol<br /> 2. Martabak, mengandung tinggi gula dan lemak<br /> 3. Cake, mengandung tinggi gula dan lemak<br /> 4. Minuman manis, mengandung tinggi gula dan kalori<br /> 5. Minuman soda, menyebabkan timbunan lemak visceral di perut<br /> 6. Kerupuk, mengandung karbohidrat dan kadar lemak yang tinggi<br /> 7. Es krim,mengandung tinggi gula dan lemak<br /> 8. Daging yang masih ada gajihnya<br /> 9. Fast food atau makanan cepat saji, kandungan lemak dan kalorinya tinggi tapi cenderung minim nutrisi<br /> 10. Keripik, kandungan lemak dan gula dari keripik ini membuat jumlah kalorinya tinggi serta ditambah dengan tinggi garam<br /> 11. Sereal manis, mengandung karbohidrat yang tinggi dan ditambah dengan gula yang bisa memicu penimbunan lemak<br /> 12. Krim-krim penambah minuman (Whipped cream), mengandung kadar lemak yang tinggi<br /> <br /> \"Kandungan dari bahan makanan ini bila asupannya melebihi kebutuhan tubuh maka akan diubah dan disimpan di dalam sel lemak dan tentu saja membuat seseorang jadi gemuk,\" ujar Dr Marini Siregar, MGizi, SpGK dari RS Premier Jatinegara.<br /> <br /> Dr Marini menyarankan agar tidak menjadi gemuk yang terpenting adalah keseimbangan antara apa yang dimakan dengan aktivitas fisik yang dilakukan. Jika termasuk orang yang aktivitas fisiknya rendah, asupan makanannya harus disesuaikan tidak boleh terlalu banyak.<br /> <br /> \"Jangan lupa mengonsumsi air yang cukup agar metabolisme dalam tubuh berjalan dengan baik, serta sayuran dan buah yang mengandung serat tinggi akan membuat kita merasa lebih kenyang sehingga mengurangi asupan makanan yang lain dan tidak akan terjadi kegemukan,\" ujar Dr Marini.</p>', '', 'Selasa', '2012-08-21', '15:23:01', '41gorengants2.jpg', 26, 'kesehatan', 'Y'),
(635, 39, 'admin', 'Foto Bugil Pangeran Harry Beredar', '', '', 'foto-bugil-pangeran-harry-beredar', 'N', 'N', 'N', 'Las Vegas - Pangeran Harry dari Inggris kembali membuat sensasi. Kali ini TMZ, sebuah situs hiburan Amerika Serikat, merilis foto-foto bugil adik Pangeran William itu, Selasa (21/8/2012).<br />\r\n<br />\r\nMenurut TMZ, foto itu diambil ketika putra kedua Pangeran Charles itu berpesta dengan teman-temannya di kamar hotelnya di Las Vegas, Jumat (18/8/2012).<br />\r\n<br />\r\nMengutip sumbernya, TMZ melaporkan, Harry dan teman-temannya turun ke bar hotel dan bertemu sejumlah perempuan, yang kemudian diundangnya ke kamar suite-nya di hotel itu.<br />\r\n<br />\r\nSuasana pun menjadi liar karena anak-anak muda itu mengadakan permainan biliar. Dalam aturan permainan itu, yang kalah harus melepas pakaian, sampai akhirnya semua peserta bugil.<br />\r\n<br />\r\nBeberapa orang yang hadir di pesta itu memotret kehebohan pesta tersebut. Dalam salah satu foto, tampak Harry dalam keadaan telanjang bulat dengan kedua tangan menutupi alat vitalnya. Sementara itu, foto lainnya menunjukkan Harry memeluk seorang perempuan yang juga terlihat bugil.<br />\r\n<br />\r\nKepada TMZ, Keluarga Kerajaan Inggris mengatakan, &quot;Kami tidak berkomentar tentang foto-foto itu saat ini.&quot; \r\n', '', 'Kamis', '2012-08-23', '01:39:51', '92pangeran_harry.jpg', 31, 'internasional', 'Y'),
(636, 2, 'admin', 'Hukuman Ganda Korea Diperingan, Greysia/Meiliana Tunggu Nasib', 'Buntut Pertandingan \"Sabun\" di Olimpiade London', '', 'hukuman-ganda-korea-diperingan-greysiameiliana-tunggu-nasib', 'N', 'N', 'N', 'Seoul - Otoritas bulutangkis Korea Selatan, Rabu (22/8) mengurangi hukuman untuk \r\nempat pemain yang diduga sengaja kalah pada pertandingan di Olimpiade \r\nLondon, dari dua tahun menjadi enam bulan setelah terjadi proses \r\nbanding.<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nJung Kyung-Eun, Kim Ha-Na, Ha Jung-Eun, dan Kim \r\nMin-Jung dilarang berpartisipasi di kompetisi-kompetisi domestik dan \r\ninternasional selama enam bulan, demikian disampaikan oleh Asosiasi \r\nBulutangkis Korea, Rabu.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKeempat atlet itu berkata mereka \r\nhanya mengikuti perintah pelatih Sung Han-Kook, dan asisten Kim \r\nMoon-Soo. Sebelumnya, hukuman seumur hidup mereka telah dikurangi \r\nmenjadi dua tahun.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nDelapan pebulutangkis ganda putri, dari \r\nKorea Selatan, Indonesia, dan China didiskualifikasi dari Olimpiade \r\nkarena sengaja mengalah agar dapat mengamankan posisi yang lebih \r\nmenguntungkan di babak berikutnya.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nSkandal ini membuat bintang bulutangkis China, Yu Yang, pensiun dari bulutangkis.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nPresiden\r\nFederasi Bulutangkis Dunia, Kang Young-Joong, telah menepis rumor bahwa\r\npublikasi yang buruk dari olahraga ini dapat membahayakan masa depan \r\nbulutangkis di Olimpiade.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKorea Selatan mendapat satu medali \r\nperunggu dari cabang olahraga bulutangkis di London - itu merupakan \r\npenampilan terburuk sepanjang partisipasi mereka di Olimpiade.<br />\r\n<br />\r\nSementara\r\ndi Indonesia, PBSI akhirnya memutuskan akan menjatuhkan sanksi kepada \r\ndua pemain ganda putri andalannya, Greysia Polii dan Meiliana Jauhari. \r\nSeperti diketahui, Greysia/Meiliana harus didiskualifkasi dari Olimpiade\r\nLondon 2012 karena diduga sengaja mengalah pada penyisihan grup untuk \r\nmenghindari lawan berat di babak perempat final.<br />\r\n&nbsp;<br />\r\nBadminton World\r\nFederation (BWF) memutuskan Greysia/Meiliana dan lawannya, Ha Jung \r\nEun/Kim Min Jung dari Korea didiskualifikasi dari turnamen paling \r\nbergengsi tersebut. Pasangan terkuat dunia asal China, Wang Xiaoli/Yu \r\nYang dan Kim Ha Na/Jung Kyung Eun dari Korea juga terkena \r\ndiskualifikasi.<br />\r\n<br />\r\n&ldquo;Kami tak mau dipengaruhi oleh keputusan yang \r\ndiambil oleh Korea atau China, karena setiap organisasi memiliki \r\nkebijakan masing-masing. Walaupun demikian, kami menghargai IOC dan BWF \r\nyang telah memutuskan bahwa Greysia/Meiliana bersalah, hal ini tidak \r\nboleh terulang lagi kedepannya. PBSI akan memberikan sanksi, namun belum\r\nbisa diumumkan bentuk sankisnya seperti apa&rdquo; ujar Sekjen PBSI, Yacob \r\nRusdianto di Pelatnas Cipayung, Selasa (21/8) sepersti dikutip situs \r\nPBSI.<br />\r\n&nbsp;<br />\r\nSaat ini PBSI masih dalam proses diskusi mengenai sanksi \r\nyang akan diberikan kepada Greysia/Meiliana dan belum ada keputusan \r\nserta pemberitahuan resmi kepada keduanya. Namun ia mengaku telah \r\nbeberapa kali mengadakan pertemuan kekeluargaan bersama kedua pemain \r\nuntuk membicarakan masalah ini dan kemungkinan-kemungkinan yang akan \r\nterjadi.\r\n', 'Suasana pertandingan memalukan itu.\r\n', 'Kamis', '2012-08-23', '01:47:26', '45bulutangkis_sabun.jpg', 21, 'olahraga', 'Y'),
(637, 2, 'admin', 'Zeelenberg: Lorenzo Akan Bangkit di Brno', 'MotoGP', '', 'zeelenberg-lorenzo-akan-bangkit-di-brno', 'N', 'N', 'N', 'London - Setelah harus bekerja keras merebut posisi kedua di Indianapolis,  \r\nManajer tim Yamaha, Wilco Zeelenberg, yakin pebalap Jorge Lorenzo akan  \r\nbangkit di MotoGP seri Ceko.\r\n<p>\r\nLorenzo diyakini dapat tampil sebagai\r\npemenang untuk menjaga posisi tertinggi di klasemen sementara.         \r\n&quot;Sirkuit Indianapolis menyulitkan kami saat start. Namun, Sirkuit \r\nBrno memiliki lintasan yang halus dan cepat. Saya yakin kami dapat \r\ntampil lebih baik di sana,&quot; kata Zeelenberg, London, Rabu (22/8/2012) di\r\nLondon.\r\n</p>\r\n<p>\r\nLorenzo menang di Brno pada musim 2010 tetapi finis \r\nkeempat di musim 2011. Lorenzo akan berusaha merebut kemenangan keenam \r\npada musim ini di Brno.\r\n</p>\r\nKemenangan ini penting bagi Lorenzo untuk \r\nmemastikan langkahnya menjadi juara dunia di musim ini. Jika sampai \r\nkalah dari Dani Pedrosa, gelar juara dunia harus ditentukan sampai lomba\r\ndi akhir musim\r\n', 'Pebalap Yamaha, Jorge Lorenzo, dengan motor Jupiter Z1 di paddock Yamaha. \r\n', 'Kamis', '2012-08-23', '01:52:27', '48JorgeLorenzo.jpg', 18, 'olahraga', 'Y'),
(638, 2, 'admin', 'Prof Rustono, Jembatan dan Pagar Pragmatik Bahasa Indonesia', '', '', 'prof-rustono-jembatan-dan-pagar-pragmatik-bahasa-indonesia', 'N', 'N', 'N', '<p>New York - Mantan juara dunia tinju kelas berat Mike Tyson memperingatkan rapper 50 Cent yang kini bertindak sebagai promotor tinju.<br />\r\n<br />\r\nRapper yang bernama asli Curtis Jackson ini baru saja mendirikan The Money Team (TMT) Promotions bersama petinju legendaris AS lainnya, Floyd Mayweather Jr. TMT bergerak di bidang pertandingan tinju profesional.<br />\r\n<br />\r\nSaat mendirikan perusahaan ini, 50 Cent bermaksud melakukan perubahan mendasar pada olahraga tinju profesional di AS.<br />\r\n<br />\r\nNamun, Tyson yang pernah malang melintang di dunia tinju antara 1985 hingga 2005 ini memperingatkan 50 Cent tentang &quot;kotornya&quot; dunia tinju profesional.<br />\r\n<br />\r\n&quot;Anda harus tahu tentang dunia tinju. Ini merupakan bisnis yang legal, tetapi tidak semua berjalan terbuka,&quot; kata Tyson. &quot;Memang seharusnya bisnis ini dikelola pemerintah.&quot;<br />\r\n<br />\r\n&quot;50 (Cent) adalah seorang bintang rap, penghibur, dan enterpreneur. Namun, ia sama sekali tidak mengerti dunia tinju,&quot; lanjut juara dunia tinju kelas berat 1986-1990 ini.<br />\r\n<br />\r\nMenurut Tyson, pengetahuan tentang tinju diperoleh 50 Cent hanya versi dari Floyd Mayweather.&nbsp; &quot;Begitu dia berkecimpung di dunia ini, ia harus tahu bahwa kawan bisa menjadi lawan,&quot; kata Tyson. &quot;Mereka hanya inginkan uang Anda dan ingin terus menguasai dunia ini.&quot;<br />\r\n<br />\r\n50 Cent mendapatkan izin promotornya di New York pada Juli lalu, dan mendapat izin usahanya di Nevada. Saat ini mereka telah mengikat beberapa petinju potensial, seperti petinju kelas bulu Yuriorkis Gamboa dari Kuba dan Billy Dib dari Australia.</p>\r\n', 'Mike Tyson', 'Minggu', '2018-02-04', '17:44:19', 'pak-sudiono.jpg', 2, 'olahraga', 'Y'),
(639, 23, 'admin', 'Hilman Hariwijaya dan Eko Patrio akan Re-cycle Film \"Lupus\"', '', '', 'hilman-hariwijaya-dan-eko-patrio-akan-recycle-film-lupus', 'N', 'N', 'N', 'Jakarta - Kabar gembira bagi Anda pecinta novel maupun serial Lupus. Pasalnya, tokoh fiksi rekaan Hilman Wijaya ini akan segera diangkat ke layar lebar oleh rumah produksi eKomando Production.<br />\r\n<br />\r\n&quot;Nanti mau produksi film Lupus, kita re-cycle. Kita mudain lagi,&quot; ujar Eko, pemilik eKomando Production, saat ditemui di kawasan dr Saharjo, Jakarta, Kamis (16/8/2012).<br />\r\n<br />\r\nFilm Lupus diangkat kembali ke layar lebar bukan tanpa alasan. Menurut Eko, tokoh Lupus merupakan anak muda yang konyol tetapi inspiratif. Setiap seri Lupus selalu mengangkat unsur persahabatan. Tak ada nuansa politis atau hal lainnya.<br />\r\n<br />\r\n&quot;Di Lupus ada persahabatan yang abadi, bahu-membahu. Tidak pernah berkaitan dengan masalah politik dan sebagainya. Di sini pure banget yang diangkat pertemanan,&quot; tambah Eko.<br />\r\n<br />\r\nSaat ini skenario sudah rampung dibuat oleh penulisnya, Hilman Hariwijaya. Meski demikian, tokoh Lupus hingga saat ini belum ditentukan. Rencananya, Lupus mulai tayang di bioskop pada Februari 2013, bertepatan dengan Hari Valentine.\r\n', '', 'Kamis', '2012-08-23', '02:21:00', '40film_lupus.jpg', 14, 'film,hiburan', 'Y'),
(640, 23, 'admin', 'Marvel Umumkan Jadwal Rilis \"The Avengers 2\"', '', '', 'marvel-umumkan-jadwal-rilis-the-avengers-2', 'N', 'N', 'N', 'Los Angeles - The Avengers is back. Setelah memastikan Joss Whedon bakal kembali berada di balik layar, Marvel juga mengumumkan jadwal penayangan perdana The Avengers 2.<br />\r\n<br />\r\nRencanannya, film kumpulan para superhero ini akan dirilis pada tanggal 1 Mei 2015 mendatang setelah mereka menanyangkan film-film terkaitnya seperti Iron 3, Captain America 2 dan Thor 2.<br />\r\n<br />\r\nMeski belum memiliki judul, Marvel dan Disney sudah siap untuk kembali memproduksi film terlaris ketiga box office sepanjang masa. &quot;Walt Disney telah mengumumkan tanggal perilisan sekuel dari film blockbuster superhero terbesar dan film terlaris ketiga sepanjang masa, The Avengers,&quot; tulisnya dalam rilis yang dilansir Digital Spy.<br />\r\n<br />\r\n&quot;Josh Whedon akan kembali menulis naskah dan menyutradarai sekuel Avengers ini dan akan dirilis pada 1 Mei 2015,&quot; tambah Marvel.<br />\r\n<br />\r\nMenyusul pengumuman tersebut, bisa dipastikan bahwa para bintang The Avengers seperti Robert Downey Jr, Chris Hemsworth dan Chris Evens akan kembali tampil untuk memeriahkan film tersebut.\r\n', 'The Avengers\r\n', 'Kamis', '2012-08-23', '02:33:21', '88the_avenger.jpg', 45, 'film,hiburan', 'Y'),
(641, 23, 'admin', 'Film Dirilis, Dewi Lestari  Menunggu', '', 'http://www.youtube.com/embed/QgDWRe1TNRg', 'film-dirilis-dewi-lestari--menunggu', 'N', 'N', 'N', '<p>Jakarta -&nbsp; Penulis novel laris &quot;Perahu Kertas&quot;, Dewi Lestari, mengaku tegang menjelang penayangan perdana film Perahu Kertas di bioskop hari ini. &quot;Sangat deg-degan,&quot; kata penulis dengan nama pena Dee itu usai jumpa pembaca novel Perahu Kertas di Gramedia Matraman, Jakarta, Kamis. Film yang diangkat dari novel setebal 456 halaman itu sudah tayang khusus untuk media dan undangan Rabu (8/8/2012) lalu.<br />\r\n<br />\r\n&quot;Kalau yang kemarin kan baru wartawan dan undangan, tetapi kalau sekarang yang dihadapi real judgment (penilaian nyata), sekarang penonton yang menilai. Lama film tayang di bioskop kan ditentukan dari penonton,&quot; kata Dee.<br />\r\n<br />\r\nFilm&nbsp; Perahu Kertas disutradarai oleh Hanung Bramantyo. Artis muda Maudy Ayunda dan Adipati Dolken yang pernah beradu akting di film&nbsp; Malaikat Tanpa Sayap menjadi pemeran utama film tersebut.<br />\r\n<br />\r\nMeskipun ada beberapa adegan film yang berbeda dengan kisah dalam novel namun Dee mengatakan hampir 80 persen jalan cerita film Perahu Kertas&nbsp; sama dengan novel.<br />\r\n<br />\r\n&quot;Kalau ada yang protes itu risiko ya, pasti ada dan buat saya itu wajar. Komparasi pasti terjadi. Tetapi sebagai film, Perahu Kertas solid,&quot; kata ibu dua anak itu.</p>\r\n', '', 'Sabtu', '2018-05-05', '22:29:07', '65dee.jpg', 1, 'film,hiburan', 'Y'),
(642, 54, 'robby', 'Israel, Tumor yang Harus Dihancurkan dari Muka Bumi', '', '', 'israel-tumor-yang-harus-dihancurkan-dari-muka-bumi', 'Y', 'N', 'N', '<p>Teheran - Israel adalah &quot;tumor kanker&quot; yang akan segera dihancurkan, kata Presiden Iran, Mahmoud Ahmadinejad, Jumat (17/8/2012), kepada para demonstran yang melakukan protes tahunan terhadap eksistensi negara Yahudi itu.<br />\r\n<br />\r\n&quot;Rezim Zionis dan warga Zionis adalah satu tumor kanker. Kendatipun satu sel dari mereka dikeluarkan dalam satu inci tanah (Palestina), pada masa depan sejarah ini (bagi eksistensi Israel) akan terulang kembali,&quot; katanya dalam satu pidato di Teheran untuk memperingati Hari Quds Iran yang disiarkan langsung televisi negara itu.<br />\r\n<br />\r\n&quot;Negara-negara dari kawasan ini akan segera mengusir kaum Zionis perampas tanah Palestina.... Sebuah Timur Tengah baru pasti dibentuk. Dengan bantuan Allah dan negara-negara kawasan ini, Timur Tengah baru tidak akan ditemukan lagi orang-orang Amerika dan Zionis,&quot; katanya.<br />\r\n<br />\r\nPeringatan itu dilakukan pada saat ketegangan meningkat antara Israel dan Iran menyangkut program nuklir Iran yang disengketakan itu.<br />\r\n<br />\r\nIsrael pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.<br />\r\n<br />\r\nTelevisi Pemerintah Iran menunjukkan, massa berpawai di bawah sinar matahari yang menyengat di Teheran dan kota-kota lain negara itu untuk memperingati Hari Quds (Jerusalem) yang bertujuan membebaskan kota Jerusalem, yanga akan dijadikan ibu kota negara Palestina masa depan (Israel juga bersikeras untuk menjadikan Jerusalem sebagai ibu kotanya).<br />\r\n<br />\r\nPara pengunjuk rasa membawa bendera-bendera Palestina dan foro-foto pemimpin tertinggi Iran, Ayatollah Ali Khamenei, dan spanduk bertuliskan &quot;Ganyang Israel&quot; dan &quot;Ganyang Amerika&quot;. Satu kelompok orang di Teheran terlihat membakar satu bendera Israel.<br />\r\n<br />\r\nUnjuk rasa itu telah menjadi kegiatan tahunan selama Ramadhan di Iran sejak Revolusi Islam tahun 1979. Para pengunjuk rasa menegaskan antipati Iran terhadap Israel dan sekutunya Amerika Serikat serta mendukung perjuangan rakyat Palestina, yang Khamenei sebut &quot;satu tugas agama.&quot;<br />\r\n<br />\r\nPemimpin tertinggi itu, Rabu, menyebut Israel sebagai &quot;hasil pertumbuhan Zionis gadungan dan palsu&quot; di Timur Tengah yang &quot;akan dilenyapkan&quot;.<br />\r\n<br />\r\nPemimpin Pengawal Revolusi yang berpengaruh, Jenderal Mohammed Ali Jafari, mengemukakan kepada kantor berita Fars, ketika menghadiri unjuk rasa di Teheran itu, bahwa &quot;negara Iran sekarang berada di garis depan perlawanan regional anti-Israel dalam menunjukkan kebenciannya pada Israel.&quot; Ia menambahkan, Iran tetap mempertahankan sikap tegas itu.<br />\r\n<br />\r\nAhmadinejad dalam pidatonya menyatakan, Zionis menimbulkan perang dunia pertama dan kedua, dan &quot;menguasai masalah-masalah dunia, sejak saat itu mereka menguasai Pemerintah AS.&quot;</p>\r\n', '', 'Kamis', '2018-10-25', '08:00:25', 'slide331.jpg', 29, 'internasional', 'Y'),
(643, 42, 'admin', 'Fatima Nabil, Presenter TV Berjilbab Pertama di Mesir', '', '', 'fatima-nabil-presenter-tv-berjilbab-pertama-di-mesir', 'N', 'N', 'N', '<p>\r\nKairo - Fatima\r\nNabil mencatat sejarah. Ia menjadi presenter pertama yang berjilbab \r\nyang muncul di televisi milik pemerintah Mesir. Dalam balutan jilbab \r\nberwarna krem, dan jas hitam Fatima membacakan buletin berita siang, \r\nMinggu 2 September 2012.&nbsp;\r\n</p>\r\n<p>\r\n&quot;Akhirnya revolusi juga terjadi di \r\ntelevisi milik pemerintah,&quot; kata Nabil. Ia berharap kemunculannya ini \r\ndiikuti tak hanya presenter berita tapi juga presenter cuaca dan \r\nlainnya.\r\n</p>\r\n<p>\r\n&quot;Saat ini, standar bukan tergantung pada \r\njilbab, yang sebenarnya merupakan pilihan pribadi setiap perempuan. Tapi\r\nlebih pada profesionalitas dan intelektual,&quot; ujarnya.\r\n</p>\r\n<p>\r\nSejak televisi pemerintah ini berdiri tahun 1960, dibawah rejim Presiden\r\nHosni Mubarok, perempuan yang mengenakan jilbab dilarang menjadi \r\npresenter. Aturan ini sempat ditentang sejumlah aktivis hak asasi dan \r\nkelompok liberal, namun kandas.\r\n</p>\r\n<p>\r\nPemerintah baru yang \r\ndipimpin Presiden Mohammed Mursi, mencabut aturan ini. Menteri Informasi\r\nBaru Saleh Abdel-Makshoud mengatakan sudah banyak perempuan berjilbab \r\nyang muncul sebagai presenter di channel-channel televisi Arab dan \r\ninternasional. Jadi perubahan ini tak menjadi masalah apalagi saat ini \r\nhampir 70% perempuan Mesir mengenakan jilbab.\r\n</p>\r\n<p>\r\nPetinggi stasiun televisi tersebut mengatakan munculnya Nabila bisa \r\nmembangkitkan semangat perempuan lain yang ingin tetap mempertahankan \r\njilbab mereka tanpa harus takut kehilangan pekerjaan. (Sumber: Tempo.co)\r\n</p>\r\n', 'Fatima Nabil\r\n', 'Kamis', '2012-11-22', '10:07:13', '89fatima.jpg', 22, 'internasional', 'Y'),
(650, 54, 'admin', 'Mendunia! Business Innovation Center mendapat MURI', '', '', 'mendunia-business-innovation-center-mendapat-muri', 'Y', 'N', 'N', '<p>Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.</p>\r\n\r\n<p>Menurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. &quot;Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,&quot; kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.</p>\r\n\r\n<p>Karena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. &quot;Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,&quot; katanya. (sumber: republika.co.id)</p>\r\n', 'Roy Suryo saat dilantik jadi Menpora', 'Senin', '2018-07-30', '22:15:46', 'slide22.jpg', 0, '', 'Y'),
(651, 21, 'admin', 'Banjir Jakarta, Kerugian Ekonomi Capai Rp 1 Triliun', 'Jakarta Darurat Banjir', 'http://www.youtube.com/embed/RQMbr4DBqXk', 'banjir-jakarta-kerugian-ekonomi-capai-rp-1-triliun', 'N', 'N', 'Y', '<p>\r\nKetua Asosiasi Pengusaha Indonesia Sofjan Wanandi mengatakan, banjir yang melanda Jakarta sepekan ini telah menimbulkan kerugian ekonomi yang cukup tinggi. Biaya bencana yang ditanggung untuk sekadar menyediakan makan&nbsp; bagi para pengungsi pun mencapai Rp 1 miliar lebih. \r\n</p>\r\n<p>\r\nHal itu disampaikan Sofjan, saat ditemui di area bencana banjir di Penjaringan, Jakarta Utara, Minggu (20/1/2013).\r\n</p>\r\n<p>\r\nSofjan menegaskan, tak bergeraknya roda ekonomi di Jakarta akibat bencana banjir menyebabkan kerugian lebih dari Rp 1 triliun. Aktivitas perdagangan menjadi tidak berjalan, dan kawasan Industri Pulogadung juga ikut lumpuh karena tak memperoleh suplai listrik akibat gardu listrik terendam banjir. \r\n</p>\r\n<p>\r\nNegara importir pun, katanya, mulai mempertanyakan kapan Jakarta bisa pulih, karena ini sangat terkait dengan kegiatan ekspor komoditas keluar negeri dari seluruh daerah di Indonesia yang bertumpu di Jakarta.\r\n</p>\r\n<p>\r\n&rdquo;Importir itu mulai bertanya-tanya, kapan banjir di Jakarta bisa surut. Kendati mereka saat ini memahami Jakarta sedang dilanda bencana,&rdquo; kata Sofjan. (sumber: kompas.com)\r\n</p>\r\n', 'Banjir di daerah Pluit', 'Jumat', '2013-01-25', '00:06:15', '44banjir-lagi.jpg', 13, 'ekonomi', 'Y'),
(652, 22, 'admin', 'Hary Tanoe Mundur dari Partai Nasdem', '', '', 'hary-tanoe-mundur-dari-partai-nasdem', 'N', 'Y', 'N', '<p>\r\nKetua Dewan Pakar DPP Partai Nasional Demokrat (Nasdem) Hary Tanoesoedibjo menyatakan mundur dari keanggotaan Partai Nasdem. Hal itu disampaikannya secara resmi dalam jumpa pers, Senin (21/1/2013), di Jakarta.\r\n</p>\r\n<p>\r\n&quot;Saya menyatakan mundur dalam kapasitas saya sebagai Ketua Dewan Pakar. Mulai hari ini, saya bukan lagi anggota dari Partai Nasdem. Keputusan ini saya lakukan dengan berat hati,&quot; kata Hary.\r\n</p>\r\n<p>\r\nIa menyatakan, sejak bergabung dengan Partai Nasdem pada 9 Oktober 2011, Hary merasa telah melakukan upaya terbaik, baik energi, pikiran, dana, maupun risiko, untuk berpartisipasi membesarkan Partai Nasdem. &quot;Target utamanya lolos verifikasi dan lolos sebagai partai peserta pemilu. Saya merupakan bagian yang ikut meloloskan Nasdem,&quot; kata bos MNC Grup ini.\r\n</p>\r\n<p>\r\n&quot;Keputusan saya ini tidak mengenakkan, tapi pada satu titik saya harus memutuskan ini. Aktivitas politik harus tetap dijalankan. Destiny keterlibatan saya di politik adalah menjadi bagian dari perubahan untuk bangsa Indonesia menjadi lebih baik. Saya ingin ikut andil secara nyata, langsung. Karena bagaimanapun politik menjadi satu bagian ideologi dan bagian dari masa depan kita,&quot; papar Hary.\r\n</p>\r\n<p>\r\nPerpecahan di tubuh Nasdem mulai merebak ketika beredar kabar adanya faksi di dalam partai itu. Dikabarkan, Surya Paloh yang akan menjadi ketua umum partai itu berseberangan dengan faksi Hary Tanoe. Beberapa waktu lalu, kelompok Surya Paloh memecat Sekjen Garda Pemuda Nasional Demokrat (GPND), Saiful Haq.\r\n</p>\r\n<p>\r\nTentang alasannya mundur, Hary mengatakan karena ada perbedaan pendapat dengan Ketua Majelis Tinggi Partai Nasdem Surya Paloh (sumber: kompas.com) \r\n</p>\r\n', 'Hary Tanoe saat memberikan keterangan pers', 'Jumat', '2013-01-25', '00:58:26', '90hari-tanoesoedibjo.jpg', 14, 'politik', 'Y'),
(653, 41, 'admin', 'Ketika \"Ciyus\" Terucap dari Mulut Jokowi', '', '', 'ketika-ciyus-terucap-dari-mulut-jokowi', 'N', 'Y', 'N', '<p>\r\nKata <em>ciyus</em> atau serius sering terdengar diucapkan anak-anak \r\nzaman sekarang yang sering dijuluki anak baru gede (ABG). Nah, ketika \r\nbahasa gaul itu diucapkan oleh Joko Widodo, para pewarta yang bertugas \r\nmeliput kegiatan Gubernur DKI Jakarta itu tak bisa menahan tawa karena \r\nnadanya yang sedikit medok.\r\n</p>\r\n<p>\r\nTerhitung sudah dua kali Jokowi \r\nmelontarkan kata itu kepada wartawan.    Pertama, saat Jumat (18/1/2013)\r\nmalam lalu, ketika Jokowi meninjau perbaikan Tanggul Kanal Banjir Barat\r\n(KBB) di Latuharhary, Jakarta Pusat. Seharian raut muka Jokowi begitu \r\nserius dan tegang karena pengerjaan tanggul yang masih belum selesai, \r\nditambah hujan deras yang terus mengguyur Ibu Kota. Pendek kata, Jokowi \r\ntampak sangat suntuk dan senyum khasnya pun tak terpancar dari dirinya.\r\n</p>\r\n<p>\r\nSaat\r\nitu, Jokowi menghampiri wartawan yang sudah menunggunya di luar rel \r\nkereta api yang terputus. Lantas para wartawan berniat mencairkan \r\nsuasana dengan melontarkan pertanyaan-pertanyaan konyol kepada Jokowi, \r\nseperti &quot;Apabila tanggul selesai, ditandai oleh pemotongan pita di Sency\r\n(Senayan City)?&quot;. Mendengar pertanyaan itu, senyum yang hilang dari \r\nJokowi akhirnya muncul kembali.\r\n</p>\r\n<p>\r\nSeraya mengernyitkan dahinya, \r\nJokowi bertanya, &quot;Apa itu Sency?&quot;   Wartawan pun langsung menjelaskan \r\nkalau Sency itu adalah kependekan dari Senayan City. Mengetahui hal \r\ntersebut, Jokowi pun tertawa dan mengatakan kalau berbicara hendaknya \r\njangan disingkat-singkat. &quot;Oh, <em>kirain </em>saya sensitif itu maksudnya. <em>Mbok</em>, jangan disingkat-singkat, <em>tho</em>,&quot; kata Jokowi.\r\n</p>\r\n<p>\r\nPembicaraan itu pula yang membuat Jokowi melontarkan kata <em>ciyus</em> dan <em>miapah</em> kepada wartawan. &quot;Kalau <em>ciyus miapah </em>itu apa? Ha-ha-ha,&quot; kata Jokowi yang membuat suasana lokasi tersebut yang awalnya tegang menjadi ramai. \r\n</p>\r\n<p>\r\nKata <em>ciyus </em>kembali\r\ndiucapkan Jokowi, Selasa (22/1/2013) kemarin, saat berbincang dengan \r\nwartawan di Balaikota DKI. Bahasa gaul itu keluar kembali setelah ia \r\nditanya terkait kinerjanya 100 hari. \r\n</p>\r\n<p>\r\nSaat itu, Jokowi ditanya \r\nmasalah Jakarta apa yang membuat Jokowi pusing. Jokowi pun menjawab  tak\r\nada persoalan yang membuatnya pusing karena ia telah menghadapi  \r\nmasalah itu sejak ia memimpin Solo selama delapan tahun. Namun, ada satu\r\nmasa Jokowi mengaku tidak memiliki semangat. &quot;Yaitu kalau pas B sama \r\npas T. Apa  itu? Pokoknya pas B sama pas T. <em>Ciyuss</em>,&quot; canda Jokowi yang mengundang  tawa para wartawan. (sumber: kompas.com)\r\n</p>\r\n', '', 'Jumat', '2013-01-25', '01:11:01', '42jokowi.jpg', 19, 'metropolitan', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(654, 31, 'admin', 'Bahaya Mendiagnosis Penyakit Lewat Internet', '', '', 'bahaya-mendiagnosis-penyakit-lewat-internet', 'N', 'Y', 'N', '<p>\r\nApakah Anda mengunjungi &quot;dokter Google&quot; lebih sering dari dokter di \r\nklinik? Anda tidak sendiri. Dalam sebuah survei tahun lalu di Amerika \r\ndiketahui bahwa 35 persen responden mencocokkan gejala penyakitnya di \r\ninternet dan mendiagnosis dirinya sendiri.\r\n</p>\r\n<p>\r\nMasih menurut survei \r\nyang dilakukan The Pew Research Center&#39;s Internet &amp; American Life \r\nProject itu, sekitar 41 responden mengatakan diagnosis sendiri itu \r\nternyata dikonfirmasi kebenarannya oleh dokter. \r\n</p>\r\n<p>\r\nTetapi, sekitar \r\nsatu dari tiga responden mengaku tidak pernah pergi ke dokter untuk \r\nmencari opini kedua. Malahan, 18 persen responden mengatakan bahwa upaya\r\nmendiagnosis sendiri itu ternyata salah ketika ditanyakan ke dokter. \r\n</p>\r\n<p>\r\nMeski\r\nsurvei yang melibatkan 3.000 responden itu sebenarnya dilakukan untuk \r\nmengetahui siapa yang mencari informasi kesehatan secara <em>online</em>, tetapi para profesional medis merasa khawatir dengan tren itu.\r\n</p>\r\n<p>\r\n&quot;Rata-rata\r\ntiap orang mengunjungi empat situs lalu memutuskan ia menderita kanker \r\ndan akan segera meninggal. Padahal, di internet banyak informasi yang \r\nkeliru,&quot; kata Rahul K Khare, dokter unit gawat darurat dari Northwestern\r\nMemorial Hospital.\r\n</p>\r\n<p>\r\nMenurut Khare, ia sering menemukan pasien \r\nyang hidupnya menjadi penuh kecemasan karena mereka merasa menderita \r\npenyakit berat setelah mencocokkan gejala yang dirasakannya dengan \r\ninformasi di internet. (sumber: kompas.com)\r\n</p>\r\n', '', 'Jumat', '2013-01-25', '01:18:13', '60keluarga.jpg', 20, 'kesehatan', 'Y'),
(655, 19, 'admin', 'Microsoft Update Windows 8.2 Agustus?', '', '', 'microsoft-update-windows-82-agustus', 'N', 'Y', 'Y', '<p>Kebocoran mengenai update OS Windows 8 yang kedua datang menghinggapi Microsoft. Windows 8.1 update 2 direncanakan diperbarui pada Agustus mendatang.&nbsp;Melalui sebuah gambar yang diklaim otentik berasal dari Rusia, informasi dari dokumen itu hampir sama dengan rumor yang beredar selama ini.<br />\r\n<br />\r\nSementara itu, update untuk Threshold masih menjadi rumor dan belum diketahui kapan akan dilaksanakan. Microsoft belum mengkonfirmasi apapun terkait gambar bocornya&nbsp;<em>update</em>&nbsp;windows 8.1 update 2 tersebut seperti dilansir&nbsp;<em>Neowin</em>, Senin (21/7/2014).<br />\r\n<br />\r\nBelum diketahui seperti apa detail fitur yang dihadirkan pada Windows 8.2. Sementara Windows 9 dikabarkan memiliki tampilan antarmuka Metro baru.<br />\r\n<br />\r\nSelain itu, terdapat menu start baru dan aplikasi Metro dengan tampilan jendela yang disertakan dalam&nbsp;<em>update&nbsp;</em>tersebut. Konon, Microsoft sedang mempertimbangkan membuat versi gratis dari Windows 9.<br />\r\n<br />\r\nInformasi yang beredar juga menyebutkan bahwa Microsoft sedang bekerja pada Windows Cloud. Menurut WZor, ada tim di Microsoft yang bekerja pada prototype sistem operasi, di mana pengguna bisa mengunduh gratis dan menambahkan fungsionalitas melalui sistem berlangganan.</p>\r\n', '', 'Senin', '2018-07-30', '09:37:53', '55Windows-8.2.png', 0, 'internasional,teknologi', 'Y'),
(656, 54, 'admin', 'Welcome to Business Innovation Center Indonesia', 'Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.', 'http://www.youtube.com/embed/hkzpLJjZQbA', 'welcome-to-business-innovation-center-indonesia', 'Y', 'Y', 'Y', '<p><strong>YERUSALEM&Acirc;&nbsp;</strong>- Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.<br />\r\n<br />\r\nMelansir&Acirc;&nbsp;<em>Boston Herald</em>, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.<br />\r\n<br />\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.<br />\r\n<br />\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.<br />\r\n<br />\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.<br />\r\n<br />\r\nMengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.<br />\r\n<br />\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.<br />\r\n<br />\r\nMengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israele dan Hamas.</p>\r\n\r\n<p>Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n\r\n<p>Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n', 'Tentara Israel Bersimbah Darah', 'Senin', '2018-07-30', '22:15:59', 'slide1.jpg', 3, 'yahudi,israel,palestina,internasional,hukum,teknologi', 'Y'),
(657, 39, 'admin', 'Unjuk Rasa Anti-Yahudi Dikecam Eropa', '', '', 'unjuk-rasa-antiyahudi-dikecam-eropa', 'N', 'Y', 'Y', '<p><strong>PARIS&nbsp;</strong><span>- Demo anti-Yahudi yang menyeruak di dunia mendapat kecaman dari negara besar di Eropa. Kecaman tersebut datang dari Jerman, Prancis dan Italia.</span><br /><br /><span>Melalui menteri luar negerinya, masing-masing negara mengutuk aksi unjuk rasa yang sering berujung dengan kericuhan dan tindak kekerasan.</span><br /><br /><span>\"Hasutan, permusuhan, serangan terhadap orang-orang Yahudi tidak memiliki tempat di masyarakat kami,\"&nbsp; sebut pernyataan gabungan tiga Menlu tersebut, seperti dikutip dari&nbsp;</span><em>DNA</em><span>, Rabu (23/7/2014).</span><br /><br /><span>Tidak bisa dipungkiri sejak agresi Israel dilancarkan, protes besar terjadi di beberapa negara. Di Prancis, unjuk rasa kelompok Pro-Palestina diakhiri pembakaran di sejumlah objek di depan toko yang dimiliki warga Yahudi.</span><br /><br /><span>Bahkan di negara ini, akibat memanasnya kondisi di Gaza, ketegangan antara kelompok Pro-Palestina dan warga Yahudi di Prancis acap kali terjadi. Prancis sendiri merupakan negara dengan populasi warga Yahudi terbanyak di Eropa.</span><br /><br /><span>Tidak hanya di Prancis, kondisi di Gaza pun jauh lebih buruk. Akibat pertempuran Hamas-Israel jumlah korban, khususnya dari warga sipil Palestina mencapai hampir 600 orang.</span></p>', '', 'Rabu', '2014-07-23', '14:37:32', '32israel_murders.jpg', 22, 'internasional,israel,palestina,yahudi', 'Y'),
(658, 39, 'admin', 'Inggris Bela Serangan Roket Hamas', '', '', 'anggota-parlemen-inggris-bela-serangan-roket-hamas', 'N', 'Y', 'Y', '<p>LONDON - Seorang anggota Parlemen Inggris membela serangan roket yang dilesakkan oleh Hamas ke arah Israel. Namun pembelaannya itu diganjar dengan sanksi indisipliner terhadapnya.</p>\r\n<p>Anggota Parlemen Inggris dari Partai Liberal Demokrat, David Ward, lewat akun Twitter miliknya menulis pernyataan yang membela serangan roket dari Hamas.</p>\r\n<p>\"The big question is - if I lived in #Gaza would I fire a rocket? - probably yes. \'Pertanyaan besar saat ini, apabila saya tinggal di #Gaza apakah saya akan menembakkan roket? mungkin saja iya\',\" tulis Ward dalam akun pribadinya, seperti dikutip The Guardian, Rabu (23/7/2014).</p>\r\n<p>Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.</p>\r\n<p>Sementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.</p>\r\n<p>\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.</p>\r\n<p>Ini bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.</p>', '', 'Rabu', '2014-07-23', '14:49:50', '75tentara _hamas_palestina.jpg', 24, 'hukum,internasional,israel,palestina,yahudi', 'Y'),
(659, 39, 'admin', 'Target-Target Serangan Israel di Gaza', '', '', 'targettarget-serangan-israel-di-gaza', 'N', 'Y', 'Y', '<p><strong>GAZA</strong><span>&nbsp;- Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.</span><br /><br /><span>Sekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.</span><br /><br /><span>Rudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan&nbsp;</span><em>Associated Press</em><span>, Rabu (23/7/2014).</span><br /><br /><span>Selain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.</span><br /><br /><span>Kementerian Kesehatan Gaza menjelaskan, blokade telah memperburuk kualitas hidup warga yang terluka akibat konflik ini. 136 obat yang diperlukan sudah makin menipis dan diperkirakan akan habis dalam waktu beberapa hari ke depan.</span><br /><br /><span>Kantung kekuatan Hamas menjadi target penting yang diincar oleh Israel. Namun serangan terhadap basis kekuatan Hamas tersebut justru lebih sering menimpa warga sipil.</span><br /><br /><span>Hingga saat ini lebih dari 630 warga Palestina dilaporkan tewas dalam serangan yang dilakukan Israel ke Gaza. Sementara 30 warga Israel dilakukan turut tewas dalam pertempuran yang sudah berlangsung sekira 15 hari tersebut.</span></p>', '', 'Rabu', '2014-07-23', '15:01:51', '63tentara-israel.jpg', 12, 'israel,palestina,yahudi', 'Y'),
(660, 39, 'admin', 'Hamas Sebut PM Israel Sama seperti Hitler', '', '', 'hamas-sebut-pm-israel-sama-seperti-hitler', 'N', 'Y', 'Y', '<p><strong>GAZA&nbsp;</strong><span>- Pernyataan keras disampaikan Hamas kepada Israel. Faksi garis keras Palestina ini menyamakan Perdana Menteri (PM) Israel, Benjamin Netanyahu dengan pemimpin Nazi, Adolf Hitler.</span><br /><br /><span>Cercaan Hamas ini disampaikan oleh Juru Bicaranya Osama Hamdan. Menurut Hamdan, pernyataan ini muncul akibat&nbsp; yang dilakukan Israel kepada warga Gaza, sama persis dengan pembantaian warga Yahudi oleh Hitler.</span><br /><br /><span>\"PM Israel sudah kehilangan moral dia adalah cerminan dari Hitler dan tentara Nazi,\" sebut Hamdan, seperti dikutip dari&nbsp;</span><em>Times of Israel</em><span>, Rabu (23/7/2014).</span><br /><br /><span>\"Pasukan Israel juga berlaku sama (dengan tentara Nazi) mereka disuruh membunuh warga Palestina jika, ini sama saja dengan yang dilakukan Hitler di abad lalu,\" tambah dia.</span><br /><br /><span>Pernyataan Hamdan disampaikannya bukan tanpa alasan. Setelah Israel melancarkan agresi ke Gaza, hampir 600 warga Palestina menjadi korban jiwa kekejaman Israel.</span><br /><br /><span>Parahnya lagi, korban jiwa dari Palestina kebanyakan adalah bocah dan perempuan. Hal tersebut bertentangan dengan pernyataan PM Israel yang mengatakan, serangan ke Gaza ditujukan untuk menghancurkan Hamas.</span></p>', '', 'Rabu', '2014-07-23', '15:12:59', '68perdana_mentri_israel_hitler.jpg', 11, 'yahudi', 'Y'),
(661, 22, 'admin', 'Gereja Tampung Pengungsi Muslim Palestina', '', '', 'gereja-tampung-pengungsi-muslim-palestina', 'N', 'Y', 'Y', '<p><strong>GAZA&nbsp;</strong><span>- Agresi Israel di Gaza meninggalkan duka mendalam bagi warga Palestina. Tidak hanya kehilangan nyawa, warga Palestina yang selamat harus tega melihat rumah mereka porak poranda dihancurkan Israel.</span><br /><br /><span>Penduduk Palestina pun saat ini&nbsp; tinggal di tempat-tempat penampungan sementara. Salah satu tempat penampungan yang ada di Gaza adalah sebuah gereja Orthodoks Yunani, Santo Porphyrius.</span><br /><br /><span>Gereja ini menampung hampir 1.000 pengungsi Palestina yang mayoritas bergama Islam. Tidak hanya menyediakan tempat tinggal, Gereja Santo Porphyrius turut memberikan makanan, minuman, selimut, tempat duduk, mainan dan bahkan halaman belakang yang biasa digunakan bocah Palestina bermain sepak bola.</span><br /><br /><span>\"Kami membuka gereja untuk menolong warga, ini sudah menjadi tugas gereja dan kami akan membantu mereka sekuat tenaga,\" sebut salah satu pengurus gereja, Archbishop Alexios, seperti dikutip dari&nbsp;</span><em>Arab News</em><span>, Rabu (23/7/2014).</span><br /><br /><span>\"Awalnya ada 600 warga dan sekarang sudah ribuan, kebanyakan dari mereka adalah peremupuan, anak-anak dan orang tua yang kondisinya lemah,\" tambah dia.</span><br /><br /><span>Gereja Santo Porphyrius memang bukan tempat yang paling aman bagi pengungsi Palestina. Pasalnya, tidak lama setelah para pengungsi berdatangan, roket dari Israel menerjang daerah dekat gereja tersebut.</span><br /><br /><span>Namun hal ini dapat menjadi bukti bagaimana agresi Israel tidak meruntuhkan semangat warga Palestina untuk tetap bersatu dan saling membantu tanpa memandang ras, etnis atau agama.</span><br /><br /><span>Sekedar informasi, warga Kristen Palestina merupakan penduduk minoritas. Jumlah mereka hanya sekitar 1.400 jiwa.&nbsp;</span></p>', '', 'Rabu', '2014-07-23', '15:14:48', '75penduduk_palestina_sembunyi_di_gereja.jpg', 20, 'palestina', 'Y'),
(662, 39, 'admin', 'Iran Dorong Palestina Terus Lawan Israel', '', '', 'iran-dorong-palestina-terus-lawan-israel', 'N', 'Y', 'Y', '<p><strong>TEHERAN&nbsp;</strong>- Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel.<br />\r\n<br />\r\n&quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari&nbsp;<em>IRNA,&nbsp;</em>Kamis (24/7/2014).<br />\r\n<br />\r\nKhamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.<br />\r\n<br />\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n', 'Iran Dorong Palestina Terus Lawan Israel', 'Sabtu', '2018-02-03', '23:16:39', 'slide33.jpg', 2, 'palestina', 'Y'),
(664, 23, 'admin', 'Jokowi janji mati-matian bela Palestina', '', '', 'jokowi-janji-matimatian-bela-palestina', 'N', 'Y', 'Y', '<p><strong>Merdeka.com -&nbsp;</strong><span>Capres&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong><span>&nbsp;kembali menegaskan dukungannya untuk kemerdekaan 100 persen bagi Palestina.&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong><span>&nbsp;berjanji akan mati-matian membela negeri yang dijepit Israel ini.</span><br /><br /><span>\"Kita lihat apa yang mereka butuhkan. Mereka butuh tandatangan untuk dukungan ya kita tanda tangan. Mereka butuh diplomasi ya diplomasi. Butuh kedutaan ya kita buka kedutaan,\" kata&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong><span>&nbsp;saat bertemu relawan seluruh Jakarta di GOR Yudo, Kelapa Gading, Kamis (26/6).</span><br /><br /><span>\"Ini dukungan tanpa reserve,\" tegas&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong><span>.</span><br /><br /><span>Sebelumnya&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong><span>&nbsp;sudah menyatakan dukungannya pada kemerdekaan Palestina.&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong><span>&nbsp;juga mendukung Palestina menjadi anggota Perserikatan Bangsa-Bangsa (PBB).</span><br /><br /><span>\"Saya dan&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/m/muhammad-jusuf-kalla/\">JK</a></strong><span>&nbsp;mendukung penuh Palestina menjadi negara merdeka dan mendukung penuh Palestina menjadi anggota penuh Dewan Perserikatan Bangsa-Bangsa (PBB),\" kata&nbsp;</span><strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong><span>&nbsp;dalam pemaparan visi misi di debat capres di Hotel Holiday Inn, Kemayoran, Jakarta Pusat, Minggu (22/6).</span></p>\r\n<p><span>Bagaimana lontaran-lantaran Gubernur DKI Jakarta ini soal kebebasan Palestina dari tangan Israel. Tentu akan menarik jika kita menyaksikan secara langsung cara diplomasi yang dilakukan tokoh yang dikenal dengan blusukannya ini. Apakah Jokowi akan blusukan juga ke jalur Gaza? Atau hanya diplomasi wacana yang dilakukan para tokoh politik pada umumnya.</span></p>\r\n<p><span style=\"color: #c0c0c0;\">Sumber :&nbsp;http://www.merdeka.com/peristiwa/jokowi-janji-mati-matian-bela-palestina.html</span></p>', '', 'Kamis', '2014-07-24', '19:23:27', '66menagih-janji-jokowi-soal-bela-palestina-mati-matian.jpg', 64, 'nasional', 'Y'),
(665, 23, 'admin', 'Risma Akan Tolak Tawaran Jadi Menteri', '', '', 'risma-akan-tolak-tawaran-jadi-menteri', '', '', '', '<h3>&quot;Saya tidak ingin. Saya masih punya janji, saya di Surabaya saja.&quot;</h3>\r\n\r\n<p>Wali Kota Surabaya Tri Rismaharini mengaku tidak tertarik masuk ke dalam kabinet Joko Widodo-Jusuf Kalla.&nbsp;<br />\r\n<br />\r\nRisma mengatakan masih punya janji pada warga Surabaya. Sehingga dia ingin menuntaskan janjinya memimpin Surabaya hingga berakhir.<br />\r\n<br />\r\n&quot;Tidak, tidak. Saya tidak ingin (masuk kabinet). Saya masih punya janji, saya di Surabaya saja,&quot; kata Risma, Kamis 24 Juli 2014.<br />\r\n<br />\r\nHingga saat ini pun Risma mengaku belum mendapatkan tawaran apa pun untuk masuk dalam kabinet Jokowi-JK. Menurut Risma, selama bertemu dengan pimpinan partai, tak ada perbincangan soal kabinet.<br />\r\n<br />\r\nNamun dia menegaskan kalaupun ada tawaran, dia tetap akan menuntaskan janjinya pada masyarakat Surabaya. &quot;Kalau nanti ada yang&nbsp;<em>nawari</em>, ya nanti saja,&quot; ujarnya.<br />\r\n<br />\r\nDi media sosial Facebook muncul polling nama-nama untuk duduk di kabinet Jokowi-JK. Salah satunya Tri Rismaharini. Wali Kota Surabaya itu ditempatkan sebagai Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi.<br />\r\n<br />\r\nPolling itu diakui Jokowi untuk meminta masukan kepada masyarakat terkait siapa-siapa saja yang tepat untuk mengisi kabinetnya lima tahun ke depan.</p>\r\n\r\n<p>Sumber :&nbsp;http://politik.news.viva.co.id/news/read/524505-jabatan-belum-tuntas--risma-akan-tolak-tawaran-jadi-menteri/</p>\r\n', '', 'Rabu', '2021-05-19', '09:24:05', '17wali-kota-surabaya-tri-rismaharini.jpg', 0, '', 'Y'),
(666, 19, 'admin', 'Pentax Q-S1 Kamera Mirorless Style Retro', '', '', 'pentax-qs1-kamera-mirorless-style-retro', 'N', 'Y', 'N', '<p>Q-S1 ini menawarkan ISO sampai 12,800 dengan kecepatan shutter sampai 1/2000 detik , selain itu kamera kompak ini pun menyertakan sensor gyro untuk mengurangi efek getaran atau goyangan. Kamera kompak retro ini pun mampu merekam video FULL HD dengan kecepatan 30fps dan mendukung 8 lensa yang kompatibel dengan Q-mount.</p>\r\n<p>Ada juga fungsi efek digital filter sebanyak 17 buah untuk menghasilkan efek bokeh, plus ada tambahan 21 mode adegan/scene serta mode 11 custom image. Layar LCDnya berukuran 3 inci beresolusi 460K dengan teknologi anti pantulan dan mendukung 170 derajat sudut pandang.</p>\r\n<p>Sayangnya kamera ini masih belum mendukung Wi-Fi yang mulai dibutuhkan untuk kemudahan berbagai foto.</p>\r\n<p>Q-S1 akan tersedia pada awal September 2014 dengan harga sekitar 500 USD untuk body saja dan 637 USD untuk kit dengan lensa 5-15mm.</p>', '', 'Senin', '2014-08-11', '01:01:13', '86pentax-qs1.png', 5, 'teknologi', 'Y'),
(667, 19, 'admin', 'Apple iWatch Bakal Dirilis Bulan Depan', '', '', 'apple-iwatch-bakal-dirilis-bulan-depan', 'N', 'Y', 'N', '<p>iWatch yang sudah lama dinanti-nanti oleh banyak pihak bakal secara resmi diluncurkan. Salah satu orang yang punya reputasi bagus dalam membocorkan informasi produk Apple, John Gruber, menyatakan bahwa iWatch akan direlease bulan depan.</p>\r\n<p>Peryataan seorang publisher asal Philadelphia ini memang dipercaya banyak orang sebagai kebenaran. Pasalnya, Apple akan menggelar event pada 9 September mendatang. Kemungkinan besar, iPhone 6 sekaligus iWatch bakal secara resmi direlease pada saat yang bersamaan saat itu juga. Keihatannya, Apple benar-benar sibuk untuk menyiapkan dua produk ini mengingat persaingann yang semakin berat. Dengan meluncurkan dua produk sekaligus, diharapkan bakal mendobrak pasar dan menciptakan momentum positif.</p>\r\n<p>Smartwatch ini diprediksi akan direlease dengan inovasi yang &ldquo;out of the box&rdquo; cirikhas Apple. iWatch diberitakan bakal menggunakan beberapa sensor yang dapat metrik-metrik kesehatan, seperti tingkat tekanan darah, tingkat denyut jantung atau bahkan tingkat gula darah si pengguna. Meski begitu, masih menjadi pernyataan bagaimana kualitas sistem internet yang ada pada iWatch.</p>', '', 'Senin', '2014-08-11', '01:04:24', '74apple-iwatch.jpg', 12, 'teknologi', 'Y'),
(668, 41, 'admin', 'ROBOT Kecil Cikal Bakal Transformer', '', '', 'robot-kecil-cikal-bakal-transformer', '', '', '', '<p><img alt=\"\" src=\"https://cerpin.com/wp-content/uploads/2015/04/ayah-dan-anak-membuat-robot-transformers-sungguhan-dari-mobil-bekas-1.jpeg\" style=\"height:538px; width:806px\" /></p>\r\n\r\n<p>Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah. Nah tapi jangan pernah berpikir kalau Transformer tidak mungkin terwujud di masa depan karena banyak film fiksi yang menjadi non fiksi berkat kecanggihan teknologi. Nah kali ini ada robot kecil yang mampu menampilkan kemampuan berubah diri dengan konsep lipatan karena terinspirasi dari ORIGAMI (seni melipat kertas Jepang) dan proses biologi.</p>\r\n\r\n<p>Walau robot yang Anda lihat ini bukan seperti robot keren seperti Transformer tapi robot origami hasil ciptaan periset dari MIT dan Harvard ini mampu merubah bentuk dari robot yang &ldquo;datar&rdquo; seperti kertas menjadi bentuk aslinya dengan empat kaki yang bisa berjalan.</p>\r\n\r\n<p>https://cerpin.com/wp-content/uploads/2015/04/ayah-dan-anak-membuat-robot-transformers-sungguhan-dari-mobil-bekas-1.jpeg</p>\r\n\r\n<p>Desain robot ini juga terpinspirasi dari proses biologi seperti bagaimana amino acid membentuk protein dari struktur datar menjadi coil tiga dimensi.</p>\r\n\r\n<p>Robot ini memulai berubah bentuk saat panas diaplikasikan pada &ldquo; Shrinky dinks&rdquo; (nama material yang digunakan) sebagai bagian dari materi kertas komposit yang digunakan pada tubuh robot ini. Memang tampilan robot ini sangat sederhana dan tidak menarik karena memang robot ini menggunakan bahan yang sangat murah dan mereka ingin menghasilkan prototipe pertama untuk konsep transformasi robot yang mereka pikirkan dalam waktu yang singkat.</p>\r\n', '', 'Senin', '2021-03-29', '10:35:52', '41origami-robot-melipat-diri.jpg', 3, '', 'Y'),
(669, 31, 'admin', 'Menghayati Esensi Kepemimpinan Bertumbuh', '', '', 'menghayati-esensi-kepemimpinan-bertumbuh', 'N', 'Y', 'N', '<p>Setiap hari tubuh memproduksi racun yang berasal dari udara yang dihirup dan makanan yang dikonsumsi. Akhirnya, racun pun memengaruhi kesehatan kita. Kulit mengalami kerusakan, pencernaan yang bermasalah, sampai ketidakseimbangan hormon, merupakan akibat dari racun yang ada di dalam tubuh.<br />\r\n<br />\r\nMaka itu, untuk membersihkan racun-racun dalam tubuh (detoksifikasi), dianjurkan untuk mengonsumsi beberapa jenis buah yang memiliki peran besar untuk hal ini.&nbsp;<br />\r\n<br />\r\nLemon kaya akan vitamin C, yang membantuh tubuh memproduksi glutation. Glutation adalah antioksidan yang membantu membuang racun yang ada di hati. Minum air lemon setiap hari, membantu mendetoksifikasi hati Anda. Selain sistem kekebalan yang baik, pencernaan pun turut merasakan manfaatnya.</p>\r\n\r\n<p>Buah nanas tidak hanya mengandung vitamin C, tapi juga mengandung enzim bromelain. Enzim ini dapat menenangkan dan membersihkan usus dari racun. Hal ini juga dikenal sebagai anti-inflamasi yang kuat, yang dapat membantu mengurangi rasa sakit akibat peradangan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Minggu', '2018-02-04', '17:39:25', '1abp.jpg', 3, 'kesehatan', 'Y'),
(670, 41, 'admin', '7 Efek Buruk dari Konsumsi Obat Tidur', '', '', '7-efek-buruk-dari-konsumsi-obat-tidur', 'N', 'Y', 'N', '<p>Konsumsi obat tidur kerap dipilih bagi mereka yang mengalami kesulitan tidur atau insomnia. Mereka berpikir bahwa obat tidur mampu memberikan apa yang diinginkan, yaitu tidur dengan lelap. Namun kenyataannya, obat tidur tidak dapat mengobati kondisi tersebut, bahkan hanya memperburuk masalah saja.&nbsp;<br />\r\n<br />\r\nDi bawah ini beberapa jenis masalah terkait dengan pil tidur dan penggunaan yang terlalu berlebihan, seperti dikutip&nbsp;<em>Health Me Up</em>, Senin (11/8/2014):</p>\r\n\r\n<p>1. Efek samping dari obat tidur dapat membuat orang yang meminumnya merasa lupa, merasa pusing, bingung, dan sulit untuk berpikir keesokan harinya.</p>\r\n\r\n<p>2. Berlebihan dalam mengonsumsinya, akan memaksa Anda untuk meningkatkan asupannya agar Anda benar-benar tertidur. Sudah jelas, akan menimbulkan efek samping yang lebih besar.</p>\r\n\r\n<p>3. Terlalu sering mengonsumsi obat tidur akan membuat Anda ketergantungan yang berkepanjangan. Tidur lelap secara alami, tampaknya hanya mimpi yang jauh dari angan, yang hanya akan membuat Anda mengalami sulit tidur dan kerap merasa cemas.</p>\r\n\r\n<p>4. Jika Anda berhenti mengonsumsinya, secara perlahan tubuh akan menggigil, berkeringat, dan mual.</p>\r\n\r\n<p>5. Anda harus tahu bahwa obat tidur akan memengaruhi proses dari obat jenis lainnya yang sedang Anda konsumsi. Apakah itu obat pusing, demam, dan lain-lain.</p>\r\n\r\n<p>6. Kondisi akan semakin parah, saat Anda menggabungkannya dengan obat penghilang rasa sakit atau obat penenang.</p>\r\n\r\n<p>7. Anda harus menyadari bahwa masalah tidur mungkin menjadi pemicu terjadinya beberapa penyakit kesehatan mental, yang mendasari terjadinya gangguan tidur. Dan obat tidak selalu menjadi pilihan yang tepat.</p>\r\n', '', 'Minggu', '2018-02-04', '17:36:35', 'The-First-Few-Weeks-Of-University-Life.jpg', 4, 'kesehatan', 'Y'),
(671, 39, 'admin', 'Ahli Kejiwaan Marshanda Keterlaluan', '', '', 'ahli-kejiwaan-marshanda-keterlaluan', '', '', '', '<p><img alt=\"\" src=\"https://asset.kompas.com/crops/3mlmCvFzFgODrY2aHoQkLbw5ldg=/0x0:1540x1027/750x500/data/photo/2021/03/23/60598587d0252.jpg\" style=\"height:633px; width:950px\" /></p>\r\n\r\n<p>LEWAT sebuah video berjudul &ldquo;The Truth Part #1&rdquo; yang diunggah ke Youtube Kamis (7/8) malam, Marshanda muncul menjelaskan insiden penjemputan paksa yang dia alami pada 26 Juli 2014 lalu.</p>\r\n\r\n<p>Saat itu, saat sedang berada di kamar apartemennya, Caca--sapaan akrabnya--mengaku didatangi oleh tak kurang dari 7 orang. Mereka terdiri dari 3&nbsp;petugas dari rumah sakit jiwa, petugas kepolisian, petugas keamanan apartemen, serta pengurus apartemen.</p>\r\n\r\n<p>Pada kesempatan itu, menurut Caca, perawat laki-laki dan perempuan memaksa dirinya untuk disuntuk dan dibawa ke rumah sakit untuk diopname.</p>\r\n\r\n<p>&ldquo;Aku enggak terima dan dengan hormat meminta mereka untuk keluar dari apartemen aku. Kareka aku sudah merasa enggak nyaman,&rdquo; bilang ibu satu anak itu.</p>\r\n\r\n<p>Namun sang perawat tetap pada pendiriannya dan kemudian menelepon dr. Richard Budiman, dokter ahli kejiwaan yang selama ini menangani Caca. Telepon itu kemudian diberikan kepada Caca.</p>\r\n\r\n<p>&ldquo;dr. Richard bilang, &#39;Ca, beberapa hari ini kamu sudah keterlaluan lho, Ca. Sudah banyak tindakan kamu yang keluar jalur, sudah banyak diomongin di TV&#39;,&rdquo; Caca menirukan apa yang dikatakan dr. Richard di seberang telepon.</p>\r\n\r\n<p>&ldquo;Saya enggak nangkap apa yang disebut keluar jalur secara psikis. Akhirnya saya bilang, yasudah dok, saya telepon pengacara saya dulu deh,&rdquo; lanjutnya.</p>\r\n\r\n<p>Usaha Caca untuk menghubungi pengacara OC Kaligis saat itu sia-sia. Teleponnya tak diangkat. Karena terus didesak, bintang sinetron &ldquo;Bidadari&rdquo; itu akhirnya pasrah menerima suntikan di lengan kanan dan kirinya.</p>\r\n', '', 'Selasa', '2021-05-11', '14:20:27', 'university_2449095b.jpg', 10, '', 'Y'),
(673, 19, 'admin', 'Dukungan Orangtua Bagi Karier Jessica', '', '', 'dukungan-orangtua-bagi-karier-jessica', '', '', '', '<p>Kelangsungan karier&nbsp;<a href=\"http://www.tabloidbintang.com/profile/jessica-mila\">Jessica Mila</a>&nbsp;tak lepas dari dukungan mendiang sang ayah, Bambang Sutejo, yang meninggal pada 3 Mei 2014, dalam usia 62 tahun.&nbsp;</p>\r\n\r\n<p>&quot;Papa sangat support karierku. Papa, apa pun yang aku lakukan, selalu support. Kuliahku, juga karierku, selalu support,&quot; tandasnya.&nbsp;</p>\r\n\r\n<p>Dukungan serupa ditunjukkan ibunda Mila, M. Baker. Merasa tak ada teman di rumah, ia kerap menemani Mila di lokasi syuting.&nbsp;</p>\r\n\r\n<p>&quot;Daripada di rumah, katanya mending Mama menemaniku. Bukan aku yang minta, Mama sendiri yang mau. Aku malah kasihan, Mama capek. Tapi Mama keukeuh, katanya enggak capek. Dia bilang, kalau menungguku, kan bisa tidur di mobil,&quot; cerita Mila.&nbsp;</p>\r\n', '', 'Kamis', '2018-10-25', '16:22:49', '507923003.jpg', 16, '', 'Y'),
(685, 23, 'admin', 'Aplikasi E-Konseling ini berbasis website', 'Menggunakan browser pada komputer dan perangkat mobile', '', 'aplikasi-ekonseling-ini-berbasis-website', '', '', '', '<p><a href=\"http://facebook.com\"><span style=\"color:#0000cd\">Aplikasi </span></a>ini berbasis website yang dapat diakses secara online melalui alamat : <a href=\"http://bkpsdm-musirawaskab.id\" rel=\"nofollow\" target=\"_blank\">http://bkpsdm-musirawaskab.id</a> dengan menggunakan browser pada komputer dan perangkat mobile yang terhubung ke internet.</p>\r\n', '', 'Rabu', '2021-05-19', '09:19:49', '', 2, '', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `id_kategori_halaman` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `urutan_halaman` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `id_kategori_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`, `urutan_halaman`) VALUES
(48, 1, 'Sejarah', 'sejarah', '<p>Tunggul.com merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Tunggul.com diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n', '2014-04-07', 'alamat.png', 'admin', 32, '13:32:28', 'Senin', 0),
(52, 1, 'Visi dan Misi', 'visi-dan-misi', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ff0000\"><em>Belum ada informasi pada halaman ini</em></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', '2018-05-08', '', 'admin', 9, '21:29:41', 'Selasa', 0),
(54, 1, 'Struktur Organisasi', 'struktur-organisasi', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ff0000\"><em>Belum ada informasi pada halaman ini</em></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', '2018-05-08', '', 'admin', 11, '21:30:15', 'Selasa', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`) VALUES
(39, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-23', '21:56:12', 'Y'),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y'),
(36, 'Lusi Rahmawati', 'robby.prihandaya@gmail.com', 'xvgxcvxc', 'gbvibviubuibiub', '2014-07-02', '00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'INFO ID - Memberikan Informasi Terkini', 'admin-ekonseling@gmail.com', 'http://localhost/e-news', 'https://www.facebook.com/, https://twitter.com/', '3511887071', '081267771344', 'Universitas Berwawasan Konservasi dan Bereputasi Internasional', 'Selamat datang di CMS Swarakalibata, adalah penyempurnaan dan perbaikan dari swarakalibata sebelumnya.', 'ID21.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3989.3358607198243!2d100.35483479999999!3d-0.8910373999999999!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4b8aa1a4e0441%3A0x3f81ebb48d31a38b!2sTunggul+Hitam%2C+Padang+Utara%2C+Kota+Padang%2C+Sumatera+Barat+25173!5e0!3m2!1sid!2sid!4v1408275531365');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(19, 'Remaja', 'admin', 'remaja', 'Y', 2),
(23, 'Internasional', '', 'internasional', 'Y', 3),
(31, 'Gagasan', '', 'gagasan', 'Y', 5),
(39, 'Rumah Tangga', 'admin', 'rumah-tangga', 'Y', 1),
(41, 'Metropolitan', 'admin', 'metropolitan', 'Y', 6),
(54, 'Pekerjaan', 'admin', 'pekerjaan', 'Y', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_halaman`
--

CREATE TABLE `kategori_halaman` (
  `id_kategori_halaman` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_halaman`
--

INSERT INTO `kategori_halaman` (`id_kategori_halaman`, `nama_kategori`, `kategori_seo`) VALUES
(1, 'Profile', 'profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_konsul`
--

CREATE TABLE `kategori_konsul` (
  `id_kategori_konsul` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori_konsul`
--

INSERT INTO `kategori_konsul` (`id_kategori_konsul`, `nama_kategori`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(31, 'Konsultasi Umum', 'umum', 'Y', 5),
(54, 'Konsultasi Pekerjaan', 'konsultasi-pekerjaan', 'Y', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'robby.prihandaya@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'robby.prihandaya@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 642, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'robby.prihandaya@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'N', 'dewi_safitri@gmail.com'),
(153, 662, 'Robby Prihandaya', 'ww.sarjanakomedi.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'robby.prihandaya@gmail.com'),
(154, 642, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(161, 642, 'Robby Prihandaya', 'https://sarjanakomedi.com', 'Selain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '2018-02-07', '10:49:04', 'Y', 'robby.prihandaya@gmail.com'),
(162, 642, 'Dewiit Safitri', 'http://www.pa-sawahlunto.go.id/', 'Dukungan serupa ditunjukkan ibunda Mila, M. Baker. Merasa tak ada teman di rumah, ia kerap menemani Mila di lokasi syuting. ', '2018-02-07', '11:26:10', 'Y', 'dewi.safitri@gmail.com'),
(163, 671, 'Administrator', 'admin', 'asdadafdwf', '2021-05-11', '14:21:02', 'Y', ''),
(164, 671, 'matt droid', 'matt', 'Samina mina e e waka waka e e', '2021-09-08', '08:39:30', 'Y', ''),
(165, 664, 'Administrator', 'admin', 'asas', '2021-09-08', '09:05:57', 'N', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar_konsul`
--

CREATE TABLE `komentar_konsul` (
  `id_komentar` int(5) NOT NULL,
  `id_konsul` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar_konsul`
--

INSERT INTO `komentar_konsul` (`id_komentar`, `id_konsul`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(165, 686, 'Muhammad Arsenio (Psikolog)', 'arsenio', 'Saya memberikan komentar sebagai seoarang psikolog,..', '2018-10-26', '06:55:26', 'Y', ''),
(163, 686, 'Robby Prihandaya', 'robby', 'Coba komentar sebagai Pemilik postingan,..', '2018-10-26', '06:46:12', 'Y', ''),
(164, 686, 'Administrator (Admin)', 'admin', 'Saya Coba Memberikan komentar dari Level admin,...', '2018-10-26', '06:54:20', 'Y', ''),
(153, 603, 'Robby Prihandaya', 'ww.sarjanakomedi.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'robby.prihandaya@gmail.com'),
(154, 606, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(161, 606, 'Robby Prihandaya', 'https://sarjanakomedi.com', 'Selain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '2018-02-07', '10:49:04', 'Y', 'robby.prihandaya@gmail.com'),
(162, 606, 'Dewiit Safitri', 'http://www.pa-sawahlunto.go.id/', 'Dukungan serupa ditunjukkan ibunda Mila, M. Baker. Merasa tak ada teman di rumah, ia kerap menemani Mila di lokasi syuting. ', '2018-02-07', '11:26:10', 'Y', 'dewi.safitri@gmail.com'),
(166, 687, 'matt droid ()', 'matt', 'test juga ', '2021-07-27', '08:50:20', 'Y', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsul`
--

CREATE TABLE `konsul` (
  `id_konsul` int(5) NOT NULL,
  `id_kategori_konsul` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_konsul` longtext CHARACTER SET latin1 NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `konsul`
--

INSERT INTO `konsul` (`id_konsul`, `id_kategori_konsul`, `username`, `judul`, `judul_seo`, `isi_konsul`, `hari`, `tanggal`, `jam`, `status`) VALUES
(622, 31, 'robby', 'Koonsultasi Kondisi Fisik dan Mental agar Lebih Sehat', 'koonsultasi-kondisi-fisik-dan-mental-agar-lebih-sehat', '<p>Orang yang beriman disayang Tuhan, mungkin itulah sebabnya kemudian orang yang beriman juga memiliki kondisi kesehatan yang baik. Nyatanya, berbagai penelitian menunjukkan bahwa orang-orang yang memiliki keyakinan dan keimanan yang teguh juga memiliki kondisi fisik yang lebih prima.<br> <br> \"Keyakinan terhadap agama bisa mengurangi stres, depresi, dan meningkatkan kualitas hidup,\" kata Dr Harold G. Koenig, profesor psikiatri dan ilmu perilaku di Duke University Medical Center seperti dilansir Medpagetoday.com, Minggu (19/8/2012).<br> <br> Data sebuah penelitian yang dimuat American Journal of Health Promotion tahun 2005 menyimpulkan bahwa orang yang banyak berdoa lebih banyak mendapat manfaat kesehatan dengan cara menerapkan perilaku yang sehat, menjalankan antisipasi terhadap penyakit dan lebih puas terhadap pelayanan kesehatan.<br> <br> Sebuah penelitian tahun 2006 yang dimuat British Medical Journal juga menemukan bahwa kehadiran dalam sebuah acara keagamaan ternyata berkaitan dengan penurunan risiko penyakit menular.<br> <br> Menurut Koenig, adanya keyakinan beragama dan kegiatan spiritual berhubungan dengan risiko penyakit atau gangguan kesehatan yang lebih rendah, misalnya stres, penyakit kardiovaskular, tekanan darah, reaktivitas kardiovaskular, gangguan metabolisme serta dapat menjamin keberhasilan operasi jantung. Namun di sisi lain, Koenig juga memperingatkan bahwa cara kerja Tuhan ini tidak dapat diukur dengan cara dan metode apapun.<br> <br> \"Saya percaya bahwa doa efektif, tapi tidak berfungsi secara ilmiah dan tidak dapat diprediksi. Tidak ada alasan ilmiah atau teologis atas setiap efek dari keyakinan yang dapat dipelajari atau didokumentasi, seolah-olah Tuhan adalah bagian dari alam semesta yang dapat diprediksi. Ilmu pengetahuan tidak dirancang untuk membuktikan hal-hal yang supranatural,\" kata Koenig.<br> <br> Selain itu, keyakinan terhadap agama juga telah dikaitkan dengan umur panjang, perkembangan penyakit kognitif yang lebih lambat dan penuaan yang sehat. Senada dengan Koenig, dr Robert A. Hummer, profesor sosiologi di University of Texas di Austin yang berfokus pada hubungan antara agama dan rendahnya risiko kematian juga memiliki pendapat yang sama.<br> <br> Hummer merujuk sebuah penelitian yang melacak beberapa orang berusia 51 - 61 tahun selama 8 tahun untuk mendokumentasikan tingkat ketahanan hidupnya. Penelitian tersebut menemukan bahwa peserta yang tidak menghadiri acara keagamaan sama sekali memiliki kemungkinan 64 persen lebih tinggi mengalami kematian dibandingkan orang yang sering beribadah.</p>', 'Senin', '2012-08-20', '08:51:08', 'Y'),
(603, 54, 'robby', 'Konsultasi 4 Teknologi yang Bakal Bertahan Sampai 2030', '4-teknologi-yang-bakal-bertahan-sampai-2030', '<p>Perkembangan teknologi telah mengantarkan berbagai perangkat yang lebih kecil, cepat dan tangguh ke dalam genggaman tangan. Ada juga yang telah ditinggalkan atau digantikan teknologi lain, seperti sebuah floppy disk. &nbsp;<br />\nSelain teknologi yang ditiggalkan, ada juga beberapa teknologi yang diprediksi akan tetap bertahan sampai puluhan tahun ke depan. Seperti dilansir Live Science, Sabtu (18/8/2012), berikut empat teknologi yang diprediksi akan bertahan sampai 2030.<br />\n<br />\n<strong>1. Papan Ketik QWERTY</strong><br />\nTeknologi untuk melakukan input telah semakin banyak, ada voice recognition, handwriting recognition dan gesture control. Ini diperkiraka akan semakin akurat dan populer dalam dua dekade ke depan. Namun, sampai nanti ditemukan cara input teks menggunakan kendali pikiran, metode mengetik akan tetap sebuah metode menyusun teks yang paling akurat.<br />\nKehadiran papan ketik di tablet dan telefon genggam memang semakin terancam, namun layout QWERTY yang sejak dulu digunakan akan terus hidup.<br />\n<br />\n<strong>2. PC</strong><br />\nBeberapa orang berpendapat kita sedang memasuki zaman pasca PC. Pasalnya kini orang semakin sering menghabiskan waktu menggunakan smartphone dan tablet ketimbang menggunakan komputer desktop tradisional berbasis Windows atau Mac.<br />\nNamun di sisi lain, ketika sudah waktunya menggarap pekerjaan yang benar-benar serius, terutama yang melibatkan multitasking, PC masih merupakan perangkat yang&nbsp; paling bisa diandalkan.<br />\n&nbsp;<br />\nPada 2030, ukuran serta bentuk PC mungkin akan berubah. Beberapa orang bahkan berpendapat bahwa dengan adanya prosesor berotak empat, telefon genggam dan tablet menjelma menjadi PC. Tetap saja, apapun faktor yang mempengaruhi, pengguna yang fokus pada produktivitas akan membutuhkan sebuah komputer utama dengan kemampuan proses yang tinggi dan sanggup multitasking.<br />\n&nbsp;<br />\n<strong>3. USB Ports</strong><br />\nSekarang telah lebih dari 15 tahun sejak USB pertama kali diperkenalkan dan kita akan sulit membayangkan hidup tanpa USB. Ini hampir menjadi sebuah standar untuk membuat Anda bisa menransfer data dan menghubungkan dengan berbagai hal seperti papan ketik atau harddisk eksternal. Beberapa orang berpendapat bahwa standar seperti Thunderbolt dari Intel akan menandingi USB, tapi mereka tidak memiliki dasar instalasi untuk menandingi USB. Standar ini diprediksi akan semakin berkembang ke depannya.<br />\n<strong><br />\n4. Uang Tunai</strong><br />\nAda beberapa perdebatan mengenai apakah kartu kredit dan debit akan sepenuhnya digantikan oleh sistem pembayaran mobile dalam beberapa tahun ke depan. Walau bagaimanapun, uang tunai tampaknya akan tetap dibawa meski pada 2030.<br />\n&nbsp;<br />\nPasalnya di era informasi ini, membayar dengan uang tunai adalah cara terbaik untuk membuat pembelian yang Anda lakukan tetap anonim dan pribadi. Selain itu, uang kertas memiliki perlindungan terbaik dalam melawan pencuri indentitas karena orang yang menerima pembayaran tidak harus mengetahui nama Anda.</p>\n', 'Sabtu', '2012-11-17', '03:27:34', 'Y'),
(686, 31, 'robby', 'Ingin Konsultasi ke Psikolog tentang Hubungan Cinta', 'ingin-konsultasi-ke-psikolog-tentang-hubungan-cinta', '<p>\r\n\r\n<em></em>Datang ke psikolog bukanlah sekedar curhat dan meluapkan emosimu sebanyak-banyaknya dalam bentuk kata dan air mata. Ada tujuan yang perlu ditetapkan dan disepakati agar terjadi perubahan signifikan pada diri kita. Sebagai contoh, jika kamu memiliki kecemasan berlebih, kamu bisa menetapkan tujuan mengurangi jumlah kecemasan setelah sesi terapi selesai. Atau jika kamu mengalami depresi dan kesulitan tidur, tujuan agar lebih mudah tidur dan merasa berenergi saat bangun bisa menjadi tujuan.\r\n<br></p>', 'Jumat', '2018-10-26', '06:03:00', 'Y'),
(606, 54, 'robby', 'Konsultasi tentang Festival Wine Digelar di Halaman Masjid ', 'astagfirullah-festival-wine-digelar-di-halaman-masjid-', '<p>Beer El-Sabe - Kelompok Muslim menyatakan kemarahannya atas rencana penyelenggaraan Festival Wine di kota Beer el-Sabe, Israel. Kemarahan karena, penyelenggaraan akan dilaksanakan di halaman luar sebuah bangunan bekas masjid kuno di wilayah tersebut.<br />\n<br />\nMenurut laporan media Israel, Gerakan Islam di Israel mengatakan festival ini merupakan &quot;dosa tak termaafkan&quot;. Festival juga dianggap sebagai pukulan keras bagi umat Muslim di sana Sebab menurut kelompok Muslim tersebut, publisitas festival anggur merupakan penghinaan terhadap sensitivitas Muslim. Seperti diketahui Islam melarang konsumsi alkohol.<br />\n<br />\nFestival &quot;Salut Wine dan Beer Festival&quot; ke enam ini rencananya akan diselenggarakan di pelataran sebuah bangunan bekas masjid di Beer el-Sabe, pada 5-6 September. Festival akan menampilkan minuman beralkohol dari sekitar 30 pabrik dan perkebunan anggur di seluruh negeri.<br />\n<br />\nPusat Hukum untuk Hak Minoritas Arab di Israel, Kamis (16/8) lalu, mengirimkan surat pada Jaksa Agung, Menteri Kebudayaan dan Olahraga Israel serta Kotamadya Beer el-Sabe. Mereka menuntut agar festival Wine di wilayah tersebut dibatalkan. &quot; Penggunaan pelataran Masjid untuk festival minuman beralkohol adalah sesuatu yang sensitif. Sebab Islam melarang konsumsi alkohol dan tak sesuai dengan penggunaan masjid untuk beribadah,&quot; tulis organisasi tersebut dalam surat ke Jaksa Aram Mahameed.<br />\n<br />\nSurat juga menambahkan, Festival Wine melanggar keputusan Mahkamah Agung Israel yang keluar Juni 2011 lalu. Dalam keputusan tersebut memerintahkan masjid untuk diubah menjadi museum sejarah dan kebudayaan Islam.<br />\n<br />\nMasjid yang dibangun pada Era Usmani pada 1906 ini sempat menjadi tempat ibadah hingga 1948. Kemudian berubah menjadi penjara dan pengadilan hingga 1952. Lalu dari 1953-1991 dibuka sebagai Museum Tanah Negeb. Pada 2002 sempat ada sebuah petisi yang meminta masjid untuk dibuka kembali sebagai tempat ibadah.</p>', 'Minggu', '2012-08-19', '04:32:25', 'Y'),
(687, 54, 'matt', 'Test', 'test', '<p>Test</p>', 'Selasa', '2021-07-27', '08:49:27', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'Logo-ID1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(8, 0, 'Kategori Informasi', '#', 'Ya', 'Bottom', 2),
(7, 0, 'Beranda', 'main', 'Ya', 'Bottom', 1),
(11, 166, 'Visi dan Misi', 'halaman/detail/visi-dan-misi', 'Ya', 'Bottom', 3),
(13, 0, '+62 8118 242 462 (BIC-INA)', '#', 'Tidak', 'Top', 3),
(18, 0, 'Psikolog Kami', 'psikolog/lists', 'Tidak', 'Bottom', 3),
(110, 166, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi', 'Ya', 'Bottom', 5),
(115, 0, '+62 8118 242 558 (BIC-JKT)', '#', 'Tidak', 'Top', 2),
(116, 0, 'Hubungi Kami', 'hubungi', 'Ya', 'Bottom', 7),
(120, 166, 'Sejarah', 'halaman/detail/sejarah', 'Ya', 'Bottom', 2),
(166, 0, 'Dokumen', 'download', 'Ya', 'Bottom', 4),
(158, 0, 'info@bic-indonesia.co.id', '#', 'Tidak', 'Top', 4),
(169, 0, 'Users', '#', 'Tidak', 'Bottom', 8),
(170, 169, 'Login', 'user/login', 'Ya', 'Bottom', 9),
(171, 169, 'Register', 'user/pendaftaran', 'Tidak', 'Bottom', 10),
(172, 0, 'Lainnya', '#', 'Ya', 'Bottom', 11),
(173, 172, 'Foto', '#', 'Ya', 'Bottom', 12),
(174, 172, 'Video', '#', 'Ya', 'Bottom', 14),
(175, 172, 'Karir', '#', 'Ya', 'Bottom', 13),
(176, 8, 'Jobs', 'kategori/detail/pekerjaan', 'Ya', 'Bottom', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Konsultasi', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Konsultasi', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>E-NEWS</strong><br />\r\nGreen House, Jl Ekonomi Raya<br />\r\nDuren Sawit,&nbsp;Jakarta.</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(36, 'Banner Inovation sarjanakomedi.com', 'admin', 'http://sarjanakomedi.com', '20170925_182827.jpg', '2021-04-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-01-23', 18, '1516701480'),
('::1', '2018-01-25', 8, '1516846047'),
('::1', '2018-01-27', 2, '1517010378'),
('::1', '2018-01-27', 2, '1517010378'),
('::1', '2018-02-01', 30, '1517466586'),
('::1', '2018-02-03', 1, '1517648707'),
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-01-23', 18, '1516701480'),
('::1', '2018-01-25', 8, '1516846047'),
('::1', '2018-01-27', 2, '1517010378'),
('::1', '2018-01-27', 2, '1517010378'),
('::1', '2018-02-01', 30, '1517466586'),
('::1', '2018-02-03', 1, '1517648707');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_text` text NOT NULL,
  `post_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'E-Konseling Center', 'admin', 'RP', 'phpmu-ekonseling', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT 'Laki-laki',
  `alamat_lengkap` text,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `status_kawin` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `perangkat_daerah` varchar(255) NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `jenis_kelamin`, `alamat_lengkap`, `tempat_lahir`, `tanggal_lahir`, `status_kawin`, `agama`, `perangkat_daerah`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 'Administrator', 'rahmat@mail.com', '081297368600', 'Laki-laki', '', '', '', 'Belum Kawin', 'Islam', '', 'robbyprihandaya-708967734.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('matt', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 'matt droid', 'matt@mail.com', '08123', 'Laki-laki', 'Jl Sekian', 'Sekian', '25-03-1990', 'Belum Kawin', 'Islam', 'CEO', 'profile.jpeg', 'inovator', 'N', 'ce86d7d02a229acfaca4b63f01a1171b-20210330133113'),
('dewi', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 'Dewi Safitri', 'dewi.safit@gmail.com', '082298077301', 'Perempuan', 'Jl.Angkasa Puri, Perundam 4, BloK C2', 'Padang', '12-03-1989', 'Kawin', 'Islam', 'Jurnalis Muda', 'avatar31.png', 'user', 'N', 'ed1d859c50262701d92e5cbf39652792-20181025143305');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, '8d05dd2f03981f86b56c23951f3f34d7-20180731103426', 18),
(15, '56ea8b83122449e814e0fd7bfb5f220a-20180802083507', 18),
(16, 'ed1d859c50262701d92e5cbf39652792-20181025143305', 18),
(17, '8c690c4d48862fb50c9fb59e5808cc69-20181025201707', 31),
(18, '8c690c4d48862fb50c9fb59e5808cc69-20181025201707', 18),
(19, '4dd7de4ff052851ffa80331aaaf6b625-20181104064823', 18),
(20, '191d475bd124631844d8e23e62021c11-20181104070350', 18);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategori_halaman`
--
ALTER TABLE `kategori_halaman`
  ADD PRIMARY KEY (`id_kategori_halaman`);

--
-- Indeks untuk tabel `kategori_konsul`
--
ALTER TABLE `kategori_konsul`
  ADD PRIMARY KEY (`id_kategori_konsul`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `komentar_konsul`
--
ALTER TABLE `komentar_konsul`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `konsul`
--
ALTER TABLE `konsul`
  ADD PRIMARY KEY (`id_konsul`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indeks untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `kategori_halaman`
--
ALTER TABLE `kategori_halaman`
  MODIFY `id_kategori_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategori_konsul`
--
ALTER TABLE `kategori_konsul`
  MODIFY `id_kategori_konsul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT untuk tabel `komentar_konsul`
--
ALTER TABLE `komentar_konsul`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT untuk tabel `konsul`
--
ALTER TABLE `konsul`
  MODIFY `id_konsul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

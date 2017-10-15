-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 15 Eki 2017, 10:53:50
-- Sunucu sürümü: 10.1.25-MariaDB
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `iid` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ekleyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`iid`, `kategori`, `baslik`, `icerik`, `tarih`, `ekleyen`) VALUES
(1, 1, 'deneme', '<p>asdasdsada</p>\r\n', '2017-10-15 01:38:52', 1),
(2, 3, 'asdasdasd', '<p>dasdasdasdasdadasdasda</p>\r\n', '2017-10-15 02:09:37', 1),
(3, 1, 'asdas', '<p>asdadasda</p>\r\n', '2017-10-15 09:36:14', 1),
(4, 1, 'yeni bir iÃ§erik', '<p>ey suat, yÄ±l boyunca &ccedil;ok iyidin ama sadece bir yanlÄ±ÅÄ±n oldu oda o...</p>\r\n', '2017-10-15 11:05:50', 1),
(5, 1, 'iÃ§iÅ', '', '2017-10-15 11:13:02', 1),
(6, 1, 'Ã§iÅ', '', '2017-10-15 11:15:28', 1),
(7, 1, 'iÅÃ§Ã¶', '', '2017-10-15 11:21:01', 1),
(8, 1, 'ÜĞİŞÇÖüğişçö', '<p>&uuml;ÄiÅ&ccedil;&ouml;</p>\r\n', '2017-10-15 11:25:57', 1),
(9, 1, 'üğişçö', '<p>&uuml;ğiş&ccedil;&ouml;</p>\r\n', '2017-10-15 11:32:07', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `katid` int(11) NOT NULL,
  `kategori` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`katid`, `kategori`) VALUES
(1, 'Haber'),
(2, 'deneme'),
(3, 'deneme'),
(4, 'asd'),
(5, 'asd'),
(6, 'asd'),
(7, 'asd');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kid` int(11) NOT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyadi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `parola` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seviye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kid`, `adi`, `soyadi`, `mail`, `parola`, `seviye`) VALUES
(1, 'suat', 'cezik', 'suatcezik@gmail.com', '1234', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seviye`
--

CREATE TABLE `seviye` (
  `sid` int(11) NOT NULL,
  `seviye` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `seviye`
--

INSERT INTO `seviye` (`sid`, `seviye`) VALUES
(1, 'admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`iid`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`katid`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kid`);

--
-- Tablo için indeksler `seviye`
--
ALTER TABLE `seviye`
  ADD PRIMARY KEY (`sid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `katid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `seviye`
--
ALTER TABLE `seviye`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

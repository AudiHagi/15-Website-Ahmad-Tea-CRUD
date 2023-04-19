-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 13, 2022 at 04:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahmad_tea`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_contact` varchar(100) NOT NULL,
  `email_contact` varchar(100) NOT NULL,
  `telephone_contact` varchar(100) NOT NULL,
  `address_contact` varchar(100) NOT NULL,
  `country_contact` varchar(100) NOT NULL,
  `city_contact` varchar(100) NOT NULL,
  `message_contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`time`, `nama_contact`, `email_contact`, `telephone_contact`, `address_contact`, `country_contact`, `city_contact`, `message_contact`) VALUES
('2022-06-05 15:30:57', 'test', 'test123@gmail.com', '12345678', '1324', 'Indonesia', '1234578', 'tes tes tes tes tes');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `kode_product` varchar(100) NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`kode_product`, `nama_product`, `foto`, `deskripsi`) VALUES
('B-001', 'Ahmad Tea - Ceylon Tea', 'B-001.jpeg', 'Ceylon tea comes from Sri Lanka (‘Ceylon’ is the old colonial name for the country), a hilly island famed for its diverse tea regions. Our Tea Masters blend teas from different areas. ‘Low-grown’ teas, harvested from sunny tea gardens below 600 metres (m) in altitude, give colour and strength. We balance these with medium-grown teas, sourced from gardens between 600 and 1,200m high. These cooler sites produce lighter teas, which give the blend its lively, citrusy edge.'),
('B-002', 'Ahmad Tea - Earl Grey Tea', 'B-002.jpeg', 'Earl Grey tea was named in honour of 19th Century British Prime Minister Charles Grey. We think our version makes a fine tribute, especially with Thomas Picken\'s \"The New Houses of Parliament\" painting on the box . Our Earl Grey is much-loved by our customers and has even won a Great Taste award. The judges praised the tea for its balance and singled it out as ‘a sound example of a strong Earl Grey.’'),
('B-003', 'Ahmad Tea - English Tea', 'B-003.jpeg', 'Our Tea Masters combine Ceylon, Kenyan and Assam teas to create this blend. They use a high proportion of Ceylon from Sri Lanka’s hilly central tea gardens, where the finest and most delicate teas come from. This gives the blend its brisk, lively quality, which we enhance with a touch of our signature bergamot flavouring. Distinctive yet delicately fragrant, our English Tea No. 1 makes a delightfully uplifting brew. Serve with a splash of milk or enjoy with lemon to bring out the tea’s citrusy notes.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','member') NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`, `foto`) VALUES
('abc', 'abc', 'abc', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`kode_product`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

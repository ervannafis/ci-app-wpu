-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Okt 2020 pada 10.17
-- Versi Server: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmvc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `jurusan`) VALUES
(7, 'Muhammad Ervan Nafis Yuniagy', '2016142159', 'ervannafis9@gmail.com', 'Teknik Informatika'),
(8, 'Aji Susanto', '3131313', 'admin@gmail.com', 'Teknik Kimia'),
(9, 'Ervan Nafis', '2313131', 'admin@gmail.com', 'Teknik Elektro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peoples`
--

CREATE TABLE `peoples` (
  `id` int(9) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `address`, `email`) VALUES
(5, 'Christopher Kuval', '2387 Herman Inlet', 'pfannerstill.gisselle@example.com'),
(6, 'Candelario Frami', '01126 Harvey Walk', 'eliezer.johns@example.org'),
(7, 'Irving Farrell PhD', '6240 Elinor Cliff Suite 844', 'xerdman@example.net'),
(8, 'Miss Phyllis Durgan', '13687 Jaskolski Fords Suite 113', 'jermaine16@example.net'),
(9, 'Deven Moen', '148 Mabelle Drive Apt. 801', 'cormier.rubie@example.net'),
(10, 'Clare O\'Conner', '8236 Greenholt Summit', 'block.janiya@example.com'),
(11, 'Cielo Zieme Sr.', '0402 Bergstrom Isle Apt. 559', 'shane@example.com'),
(12, 'Donnell Klein', '241 Schroeder Stravenue', 'gharris@example.com'),
(13, 'Helga Denesik', '75947 Goyette Roads', 'efren09@example.net'),
(14, 'Therese Oberbrunner', '797 Cleta Path', 'mekhi43@example.net'),
(15, 'Erika Will', '634 Cordelia Mountain Suite 899', 'nolan.julian@example.com'),
(16, 'Ms. Zoe Altenwerth', '01139 Kreiger Forge', 'gwilkinson@example.net'),
(17, 'Nikolas Hilll', '30198 Mose Crossing', 'vmosciski@example.net'),
(18, 'Raul Bruen Sr.', '35800 Stan Crescent', 'yfritsch@example.net'),
(19, 'Mr. Ronny Considine', '1468 Stokes Creek', 'okiehn@example.org'),
(20, 'Juliana Orn', '803 Minerva Parkways', 'fletcher.howe@example.com'),
(21, 'Darion Sanford Sr.', '348 Cassin Knolls', 'carolina.funk@example.com'),
(22, 'Howell Medhurst', '234 Rico Bypass', 'joyce73@example.net'),
(23, 'Virginia Considine', '899 Howell Mountain Apt. 138', 'quigley.sandra@example.net'),
(24, 'Daphney Adams', '8935 Jasmin Brooks', 'benton.parker@example.net'),
(25, 'Madisyn McGlynn', '174 Kiel Rapids', 'sskiles@example.net'),
(26, 'Drake Spencer', '52258 Nicolette Meadows', 'lori.dietrich@example.com'),
(27, 'Aida Parisian', '268 Crystal Mountains Suite 522', 'ruby83@example.com'),
(28, 'Dorthy Nienow MD', '56020 Bessie Plaza', 'chelsea71@example.com'),
(29, 'Rosalee Stamm Jr.', '1020 Morissette Harbor', 'estoltenberg@example.net'),
(30, 'Marta Lehner Sr.', '0552 Danika Coves Suite 382', 'fwalter@example.net'),
(31, 'Kaleb Sipes', '7854 Leuschke Stream Apt. 214', 'murazik.tyree@example.org'),
(33, 'Prof. Bradley Marks', '923 Albina Place', 'ojohnson@example.org'),
(34, 'Miss Dianna Hermann MD', '18550 Hartmann Stream', 'linnie81@example.com'),
(35, 'Ms. Angelina Hansen', '8419 Adriana Heights', 'zdurgan@example.com'),
(36, 'Cale Wehner', '5362 Bergstrom Lights Apt. 884', 'gwiza@example.net'),
(37, 'Prof. Raleigh Effertz', '6292 Brenden Roads Suite 629', 'cristobal64@example.org'),
(38, 'Carroll O\'Kon', '50944 Dooley Springs', 'lebsack.chester@example.net'),
(39, 'Aida Skiles', '1254 Purdy Points', 'leonie72@example.net'),
(40, 'Sherwood Jenkins', '696 Keeling Ranch Suite 133', 'jacobson.thelma@example.com'),
(41, 'Darrell Daniel', '3222 Von Fords', 'verna.mosciski@example.com'),
(42, 'Tevin Zulauf', '148 Dach Lane Suite 337', 'burley.brown@example.com'),
(43, 'Broderick Barton DVM', '62326 Grady Spring', 'bud54@example.net'),
(44, 'Hillary Tillman III', '486 Kunze Loaf', 'taylor.green@example.org'),
(45, 'Palma Hane', '849 Upton Centers Apt. 125', 'elabadie@example.com'),
(46, 'Tommie Gottlieb II', '100 Hershel Hill', 'morissette.louisa@example.org'),
(47, 'Cynthia Schmitt', '860 Keebler Ranch', 'ijones@example.org'),
(48, 'Jose Frami V', '31625 Nellie Valley Suite 018', 'sauer.skylar@example.com'),
(49, 'Rubye Kihn IV', '308 Jacobi Mountain Apt. 192', 'audra02@example.org'),
(50, 'Muriel Goyette', '316 Schmitt Meadows', 'samantha85@example.com'),
(51, 'Mrs. Christiana Effertz', '53189 Audra Spurs', 'rath.pansy@example.net'),
(52, 'Blaise Mertz', '7365 Ella Extensions Apt. 253', 'prosacco.carlos@example.org'),
(53, 'Francesco Nader', '565 Moen Summit Suite 423', 'ldickens@example.com'),
(54, 'Dr. Gustave O\'Reilly DDS', '6494 Brice Glens', 'wendy69@example.net'),
(55, 'Cathrine Rice', '6955 Toy Skyway', 'uhills@example.org'),
(56, 'Mikayla Klocko', '9681 Rebekah Valleys', 'addie.kunze@example.com'),
(57, 'Cheyenne Hartmann', '197 Ebert Cliff Apt. 245', 'meggie22@example.net'),
(58, 'Kaitlin Padberg', '383 Klein Wall Apt. 725', 'josianne21@example.net'),
(59, 'Mr. Keenan Glover DVM', '6664 Jast Glens', 'kkessler@example.com'),
(60, 'Timmothy Johns', '2240 Koch Mews', 'mariane.goyette@example.org'),
(61, 'Justyn Powlowski', '002 Gwendolyn Well', 'afranecki@example.com'),
(62, 'Alexandria Prosacco', '9824 Deckow Place Suite 656', 'qherzog@example.org'),
(63, 'Jean Ward', '6525 Maverick Points Apt. 255', 'bashirian.barney@example.net'),
(64, 'Mrs. Janice Weber', '3316 Dale Coves Suite 812', 'glarkin@example.com'),
(65, 'Geoffrey Schowalter', '8617 Wolff Parkways Suite 006', 'briana02@example.com'),
(66, 'Veda Becker', '211 Ocie Island Apt. 528', 'ko\'kon@example.net'),
(67, 'Christina Kuhn', '1173 Kozey Ferry Apt. 813', 'madisen.ward@example.net'),
(68, 'Mrs. Vicenta West V', '0728 Fredy Village', 'isabella.sporer@example.org'),
(69, 'Imelda Koepp', '70530 Watsica Extension Apt. 564', 'wwest@example.org'),
(70, 'Prof. Justen Lowe', '775 Stehr Mountains Apt. 818', 'yesenia.dietrich@example.org'),
(71, 'Dr. Derek Morar MD', '61398 Grady Inlet Apt. 400', 'turcotte.terence@example.com'),
(72, 'Mr. Malachi Legros Jr.', '559 Hirthe Summit Apt. 888', 'whayes@example.com'),
(73, 'Gerry Gusikowski', '371 Spinka Cape', 'pamela51@example.org'),
(74, 'Prof. Sam Braun', '659 Brionna Track Suite 803', 'connie.erdman@example.com'),
(75, 'Brandyn Willms', '529 Schmeler Parks Apt. 465', 'keebler.arielle@example.net'),
(76, 'Mrs. Jacquelyn Muller', '776 Tillman Viaduct', 'tcrona@example.org'),
(77, 'Bernhard Medhurst', '02523 Freeda Cape', 'gladyce51@example.net'),
(78, 'Daphne Rau', '67784 Kuhlman Springs', 'laurence.crist@example.com'),
(79, 'Maryse Roob', '045 Simonis Island Suite 889', 'broderick79@example.net'),
(80, 'Beatrice Nader MD', '118 Collins Estate', 'nelda87@example.net'),
(81, 'Trycia Kerluke', '6501 Alexys Drive Suite 900', 'runolfsdottir.justina@example.org'),
(82, 'Ms. Dahlia Fadel V', '5812 Leffler Vista Apt. 462', 'johnathan.hickle@example.net'),
(83, 'Imelda Hermiston III', '9673 Nico Street', 'bernadette01@example.org'),
(84, 'Evelyn Hauck', '647 Conroy Underpass', 'adriana.heathcote@example.org'),
(85, 'Katrina Gerhold', '893 Kiehn Lane', 'kub.adrien@example.com'),
(86, 'Mrs. Elvera Bogisich', '2270 Veum Glen Suite 990', 'vern57@example.net'),
(87, 'Phoebe Gerhold', '3565 Prohaska Stream Apt. 638', 'armstrong.selena@example.com'),
(88, 'Raul Smitham', '890 Sawayn Row Suite 241', 'ayla38@example.org'),
(89, 'Berneice Trantow', '166 Asha Branch Suite 793', 'hamill.ramon@example.net'),
(90, 'Devonte Mayert', '92535 Towne Shoals Apt. 102', 'hoppe.ophelia@example.com'),
(91, 'Anthony Russel', '6774 Donny Crest', 'marta95@example.com'),
(92, 'Jacynthe Farrell', '94586 Josefina Shoals', 'vidal79@example.org'),
(93, 'Grayson Haag', '40710 Boyer Parkways Suite 662', 'helen.huel@example.com'),
(94, 'Georgette Spinka', '528 Murray Falls', 'schuster.osborne@example.com'),
(95, 'Aurelio Kassulke', '85067 Krystal Crossing Apt. 794', 'dstokes@example.net'),
(96, 'Mr. Macey Jaskolski MD', '2589 Mosciski Extensions', 'plehner@example.net'),
(97, 'Brett Cole', '148 Magali Court', 'carroll.rowena@example.net'),
(98, 'Katlynn Miller', '2525 Wyman Extension', 'retta74@example.com'),
(99, 'Vladimir Okuneva', '9037 Hudson Canyon', 'warren53@example.net'),
(100, 'Prof. Chaz Williamson', '538 Klein Loop', 'darrick.dubuque@example.net');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

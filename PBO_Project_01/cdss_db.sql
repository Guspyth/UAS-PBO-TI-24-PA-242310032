-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2026 at 10:14 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int NOT NULL,
  `id_pasien` int DEFAULT NULL,
  `id_penyakit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `id_pasien`, `id_penyakit`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int NOT NULL,
  `jenis_gejala` text,
  `id_penyakit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `jenis_gejala`, `id_penyakit`) VALUES
(1, 'Demam tinggi, bintik merah, sesak napas', 1),
(2, 'Demam tinggi, bintik merah, sesak napas', 2),
(3, 'Pilek ringan, bersin, hidung tersumbat', 3),
(4, 'Nyeri menelan, tenggorokan sakit, sesak napas', 4),
(5, 'Sesak napas, batuk, napas berbunyi', 5),
(6, 'Demam tinggi, nyeri otot, bintik merah', 6),
(7, 'Nyeri menelan, tenggorokan sakit', 7),
(8, 'Demam tinggi, bintik merah, sesak napas', 8),
(9, 'Demam tinggi, bintik merah, sesak napas', 9),
(10, 'Demam tinggi, bintik merah, sesak napas', 10),
(11, 'Demam tinggi, bintik merah, sesak napas', 11),
(12, 'Demam tinggi, nyeri otot, bintik merah', 12),
(13, 'Demam tinggi, nyeri otot, bintik merah', 13),
(14, 'Demam tinggi, nyeri otot, bintik merah', 14),
(15, 'Pilek ringan, bersin, hidung tersumbat', 15),
(16, 'Demam tinggi, bintik merah, sesak napas', 16),
(17, 'Demam tinggi, bintik merah, sesak napas', 17),
(18, 'Demam tinggi, bintik merah, sesak napas', 18),
(19, 'Demam tinggi, bintik merah, sesak napas', 19),
(20, 'Demam tinggi, bintik merah, sesak napas', 20);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int NOT NULL,
  `jenis_obat` text,
  `id_penyakit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `jenis_obat`, `id_penyakit`) VALUES
(1, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\\nParasetamol: 500 mg setiap 6 jam.', 1),
(2, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 2),
(3, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 3),
(4, 'Salbutamol (Inhaler): 100–200 mcg\nAmoxicillin: 500 mg setiap 8 jam (3x sehari)', 4),
(5, 'Salbutamol (Inhaler): 100–200 mcg', 5),
(6, 'Oralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 6),
(7, 'Amoxicillin: 500 mg setiap 8 jam (3x sehari)', 7),
(8, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 8),
(9, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 9),
(10, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 10),
(11, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 11),
(12, 'Oralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 12),
(13, 'Oralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 13),
(14, 'Oralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 14),
(15, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 15),
(16, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 16),
(17, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 17),
(18, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 18),
(19, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 19),
(20, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 20);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`) VALUES
(1, 'aji'),
(2, 'rini'),
(3, 'rina'),
(4, 'roni'),
(5, 'nina'),
(6, 'lukas'),
(7, 'fika'),
(8, 'danu'),
(9, 'gilang'),
(10, 'rani'),
(11, 'dina'),
(12, 'dina'),
(13, 'dina'),
(14, 'dina'),
(15, 'dina'),
(16, 'rina'),
(17, 'apis'),
(18, 'mina'),
(19, 'mino'),
(20, 'sofa');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int NOT NULL,
  `jenis_penyakit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `jenis_penyakit`) VALUES
(1, 'Demam Berdarah + Asma Infeksi'),
(2, 'Demam Berdarah + Asma Infeksi'),
(3, 'Common Cold'),
(4, 'Faringitis + Asma Infeksi'),
(5, 'Asma Infeksi'),
(6, 'Demam Berdarah (DBD)'),
(7, 'Faringitis'),
(8, 'Demam Berdarah + Asma Infeksi'),
(9, 'Demam Berdarah + Asma Infeksi'),
(10, 'Demam Berdarah + Asma Infeksi'),
(11, 'Demam Berdarah + Asma Infeksi'),
(12, 'Demam Berdarah (DBD)'),
(13, 'Demam Berdarah (DBD)'),
(14, 'Demam Berdarah (DBD)'),
(15, 'Common Cold'),
(16, 'Demam Berdarah + Asma Infeksi'),
(17, 'Demam Berdarah + Asma Infeksi'),
(18, 'Demam Berdarah + Asma Infeksi'),
(19, 'Demam Berdarah + Asma Infeksi'),
(20, 'Demam Berdarah + Asma Infeksi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id`),
  ADD CONSTRAINT `diagnosis_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`);

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

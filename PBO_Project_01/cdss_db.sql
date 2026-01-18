-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2026 at 09:37 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

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
(13, 13, 13);

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
(1, 'Pilek ringan, bersin, hidung tersumbat', 1),
(2, 'Pilek ringan, bersin, hidung tersumbat', 2),
(3, 'Demam tinggi, bintik merah, sesak napas', 3),
(4, 'Pilek ringan, bersin, hidung tersumbat', 4),
(5, 'Pilek ringan, bersin, hidung tersumbat', 5),
(6, 'Pilek ringan, bersin, hidung tersumbat', 6),
(7, 'Pilek ringan, bersin, hidung tersumbat', 7),
(8, 'Pilek ringan, bersin, hidung tersumbat', 8),
(9, 'Pilek ringan, bersin, hidung tersumbat', 9),
(10, 'Pilek ringan, bersin, hidung tersumbat', 10),
(11, 'Pilek ringan, bersin, hidung tersumbat', 11),
(12, 'Pilek ringan, bersin, hidung tersumbat', 12),
(13, 'Pilek ringan, bersin, hidung tersumbat', 13);

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
(1, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 1),
(2, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 2),
(3, 'Salbutamol (Inhaler): 100–200 mcg\nOralit: 200 ml\nParasetamol: 500 mg setiap 6 jam.', 3),
(4, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 4),
(5, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 5),
(6, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 6),
(7, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 7),
(8, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 8),
(9, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 9),
(10, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 10),
(11, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 11),
(12, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 12),
(13, 'Paracetamol: 500 mg – 1000 mg setiap 6 jam (Maksimal 4000 mg per hari).', 13);

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
(1, '1'),
(2, '1'),
(3, 'anda'),
(4, 'andi'),
(5, 'andu'),
(6, 'ando'),
(7, 'ande'),
(8, 'budi'),
(9, 'budi'),
(10, 'buda'),
(11, 'buda'),
(12, 'buda'),
(13, 'buda');

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
(1, 'Common Cold'),
(2, 'Common Cold'),
(3, 'Demam Berdarah + Asma Infeksi'),
(4, 'Common Cold'),
(5, 'Common Cold'),
(6, 'Common Cold'),
(7, 'Common Cold'),
(8, 'Common Cold'),
(9, 'Common Cold'),
(10, 'Common Cold'),
(11, 'Common Cold'),
(12, 'Common Cold'),
(13, 'Common Cold');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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

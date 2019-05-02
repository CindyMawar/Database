-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.35-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pengeolaankp
CREATE DATABASE IF NOT EXISTS `pengeolaankp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pengeolaankp`;

-- Dumping structure for table pengeolaankp.dosen_pembingbing
CREATE TABLE IF NOT EXISTS `dosen_pembingbing` (
  `NRP_mhs` varchar(9) DEFAULT NULL,
  `Nama_mhs` varchar(50) DEFAULT NULL,
  `Pembicaraan_awal` date DEFAULT NULL,
  `Pembicaraan_akhir` date DEFAULT NULL,
  `Tgl_bimbingan` date DEFAULT NULL,
  KEY `NRP_mhs` (`NRP_mhs`),
  CONSTRAINT `FK_NRP_mhs` FOREIGN KEY (`NRP_mhs`) REFERENCES `mahasiswa` (`NRP_mhs`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pengeolaankp.dosen_pembingbing: ~0 rows (approximately)
/*!40000 ALTER TABLE `dosen_pembingbing` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_pembingbing` ENABLE KEYS */;

-- Dumping structure for table pengeolaankp.ketuajurusan
CREATE TABLE IF NOT EXISTS `ketuajurusan` (
  `NRP_mhs` varchar(9) DEFAULT NULL,
  `Nama_mhs` varchar(50) DEFAULT NULL,
  `Dosen_Pembimbing` varchar(50) DEFAULT NULL,
  `Nama_Penguji` varchar(50) DEFAULT NULL,
  KEY `NRP_mhs` (`NRP_mhs`),
  CONSTRAINT `FK_mhs` FOREIGN KEY (`NRP_mhs`) REFERENCES `mahasiswa` (`NRP_mhs`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pengeolaankp.ketuajurusan: ~0 rows (approximately)
/*!40000 ALTER TABLE `ketuajurusan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ketuajurusan` ENABLE KEYS */;

-- Dumping structure for table pengeolaankp.login_dsn
CREATE TABLE IF NOT EXISTS `login_dsn` (
  `NIP_dsn` varchar(9) NOT NULL,
  `Nama_dsn` varchar(50) DEFAULT NULL,
  `Level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NIP_dsn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pengeolaankp.login_dsn: ~0 rows (approximately)
/*!40000 ALTER TABLE `login_dsn` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_dsn` ENABLE KEYS */;

-- Dumping structure for table pengeolaankp.login_mhs
CREATE TABLE IF NOT EXISTS `login_mhs` (
  `Password_mhs` varchar(6) NOT NULL,
  `NRP_mhs` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`Password_mhs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pengeolaankp.login_mhs: ~0 rows (approximately)
/*!40000 ALTER TABLE `login_mhs` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_mhs` ENABLE KEYS */;

-- Dumping structure for table pengeolaankp.mahasiswa
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `NRP_mhs` varchar(9) NOT NULL,
  `Nama_mhs` varchar(50) DEFAULT NULL,
  `Nama_dsnWali` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NRP_mhs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pengeolaankp.mahasiswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;

-- Dumping structure for table pengeolaankp.perusahaan
CREATE TABLE IF NOT EXISTS `perusahaan` (
  `ID_perusahaan` varchar(10) NOT NULL,
  `Nama_perusahaan` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Bidang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_perusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pengeolaankp.perusahaan: ~0 rows (approximately)
/*!40000 ALTER TABLE `perusahaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `perusahaan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

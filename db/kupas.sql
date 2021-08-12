/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.18-MariaDB : Database - db_denpom
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_denpom` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_denpom`;

/*Table structure for table `aplikasi` */

DROP TABLE IF EXISTS `aplikasi`;

CREATE TABLE `aplikasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_owner` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `nama_aplikasi` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `copy_right` varchar(50) DEFAULT NULL,
  `versi` varchar(20) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `aplikasi` */

insert  into `aplikasi`(`id`,`nama_owner`,`alamat`,`tlp`,`title`,`nama_aplikasi`,`logo`,`copy_right`,`versi`,`tahun`) values (1,'Denpom Lampung','Bandar Lampung','089506016186','SIPANDUGEH','SIPANDUGEH','AdminLTELogo1.png','Copy Right &copy; Artimedia Nusantara','1.0.0.0',2021);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori` */

insert  into `kategori`(`id`,`nama_kat`) values (4,'Berat'),(5,'Sedang'),(6,'Ringan');

/*Table structure for table `tbl_akses_menu` */

DROP TABLE IF EXISTS `tbl_akses_menu`;

CREATE TABLE `tbl_akses_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `view_level` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_akses_menu` */

insert  into `tbl_akses_menu`(`id`,`id_level`,`id_menu`,`view_level`) values (1,1,1,'Y'),(2,1,2,'Y'),(43,4,1,'Y'),(44,4,2,'N'),(64,1,52,'Y'),(65,4,52,'N'),(70,1,55,'Y'),(71,4,55,'N');

/*Table structure for table `tbl_akses_submenu` */

DROP TABLE IF EXISTS `tbl_akses_submenu`;

CREATE TABLE `tbl_akses_submenu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_level` int(11) NOT NULL,
  `id_submenu` int(11) NOT NULL,
  `view_level` enum('Y','N') DEFAULT 'N',
  `add_level` enum('Y','N') DEFAULT 'N',
  `edit_level` enum('Y','N') DEFAULT 'N',
  `delete_level` enum('Y','N') DEFAULT 'N',
  `print_level` enum('Y','N') DEFAULT 'N',
  `upload_level` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_akses_submenu` */

insert  into `tbl_akses_submenu`(`id`,`id_level`,`id_submenu`,`view_level`,`add_level`,`edit_level`,`delete_level`,`print_level`,`upload_level`) values (2,1,2,'Y','Y','Y','Y','Y','Y'),(4,1,1,'Y','Y','Y','Y','Y','Y'),(6,1,7,'Y','Y','Y','Y','Y','Y'),(7,1,8,'Y','Y','Y','Y','Y','Y'),(9,1,10,'Y','Y','Y','Y','Y','Y'),(13,1,14,'Y','Y','Y','Y','Y','Y'),(26,1,15,'Y','Y','Y','Y','Y','Y'),(30,1,17,'Y','Y','Y','Y','Y','Y'),(32,1,18,'Y','Y','Y','Y','Y','Y'),(34,1,19,'Y','Y','Y','Y','Y','Y'),(36,1,20,'Y','Y','Y','Y','Y','Y'),(59,4,1,'N','N','N','N','N','N'),(60,4,2,'N','N','N','N','N','N'),(61,4,7,'N','N','N','N','N','N'),(62,4,8,'N','N','N','N','N','N'),(63,4,10,'N','N','N','N','N','N'),(64,4,15,'N','N','N','N','N','N'),(65,4,17,'N','N','N','N','N','N'),(66,4,18,'N','N','N','N','N','N'),(67,4,19,'N','N','N','N','N','N'),(68,4,20,'N','N','N','N','N','N'),(82,1,23,'Y','Y','Y','Y','Y','Y'),(83,4,23,'N','N','N','N','N','N'),(84,1,24,'Y','Y','Y','Y','Y','Y'),(85,4,24,'N','N','N','N','N','N'),(86,1,25,'Y','Y','Y','Y','Y','Y'),(87,4,25,'N','N','N','N','N','N'),(88,1,26,'Y','N','N','N','Y','Y'),(89,4,26,'N','N','N','N','N','N'),(90,1,27,'Y','N','N','N','Y','Y'),(91,4,27,'N','N','N','N','N','N'),(92,1,28,'Y','N','N','N','Y','Y'),(93,4,28,'N','N','N','N','N','N'),(94,1,29,'Y','N','N','N','Y','Y'),(95,4,29,'N','N','N','N','N','N'),(98,1,31,'Y','Y','Y','Y','Y','Y'),(99,4,31,'N','N','N','N','N','N');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `urutan` bigint(11) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  `parent` enum('Y') DEFAULT 'Y',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`id_menu`,`nama_menu`,`link`,`icon`,`urutan`,`is_active`,`parent`) values (1,'Dashboard','dashboard','fas fa-tachometer-alt',1,'Y','Y'),(2,'System','#','fas fa-cogs',10,'Y','Y'),(52,'Master Data','#','fas fa-archive',2,'Y','Y'),(55,'Post','#','fas fa-newspaper',3,'Y','Y');

/*Table structure for table `tbl_pengguna` */

DROP TABLE IF EXISTS `tbl_pengguna`;

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `nik` int(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status` enum('Aktif','Suspend','Blokir') DEFAULT NULL,
  `level` enum('Admin','Komandan','Anggota','Warga') DEFAULT 'Warga',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_pengguna` */

/*Table structure for table `tbl_submenu` */

DROP TABLE IF EXISTS `tbl_submenu`;

CREATE TABLE `tbl_submenu` (
  `id_submenu` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_submenu` varchar(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id_submenu`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_submenu` */

insert  into `tbl_submenu`(`id_submenu`,`nama_submenu`,`link`,`icon`,`id_menu`,`is_active`) values (1,'Menu','menu','far fa-circle',2,'Y'),(2,'SubMenu','submenu','far fa-circle',2,'Y'),(7,'Aplikasi','aplikasi','far fa-circle',2,'Y'),(8,'User','user','far fa-circle',2,'Y'),(10,'User Level','userlevel','far fa-circle',2,'Y'),(15,'Barang','barang','far fa-circle',32,'Y'),(17,'Kategori','kategori','far fa-circle',32,'Y'),(18,'Satuan','satuan','far fa-circle',32,'Y'),(19,'Pembelian','pembelian','far fa-circle',41,'Y'),(20,'Penjualan','penjualan','far fa-circle',41,'Y'),(23,'Kategori','kategori','far fa-circle',52,'Y'),(24,'Pengaduan Warga','pengaduan_warga','far fa-circle',53,'Y'),(25,'Pengaduan Petugas','pengaduan_petugas','far fa-circle',53,'Y'),(26,'Laporan Diterima','laporan_diterima','far fa-circle',54,'Y'),(27,'Laporan Diproses','laporan_diproses','far fa-circle',54,'Y'),(28,'Laporan Selesai','laporan_selesai','far fa-circle',54,'Y'),(29,'Laporan Ditolak','laporan_ditolak','far fa-circle',54,'Y'),(31,'Berita','Berita','fas fa-newspaper',55,'Y');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id_user`,`username`,`full_name`,`password`,`id_level`,`image`,`is_active`) values (1,'admin','Administrator','$2y$05$3oQlxl8wMGd8VecO4nFXre3SjeHWqFN79oMy/.pdEj5Q89xopj4oi',1,'admin.png','Y'),(6,'user','user satu','$2y$05$3bEkbUWiTCavpM5FUUKbu.wdclj8vvsTgy58WSiS7Jje6i3XgZCC6',4,'user.png','Y');

/*Table structure for table `tbl_userlevel` */

DROP TABLE IF EXISTS `tbl_userlevel`;

CREATE TABLE `tbl_userlevel` (
  `id_level` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_userlevel` */

insert  into `tbl_userlevel`(`id_level`,`nama_level`) values (1,'admin'),(4,'user1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

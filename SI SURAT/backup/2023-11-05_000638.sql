DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int NOT NULL,
  `id_user` tinyint NOT NULL,
  PRIMARY KEY (`id_disposisi`),
  KEY `id_user_tbl_disposisi` (`id_user`),
  KEY `id_surat_masuk` (`id_surat`),
  CONSTRAINT `id_surat_masuk` FOREIGN KEY (`id_surat`) REFERENCES `tbl_surat_masuk` (`id_surat`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_user_tbl_disposisi` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("1","Peminjaman Gedung Auditorium","Peminjaman Gedung Auditorium SMA Labschool Bengkulu untuk Pelatihan Manajemen Organisasi","Segera","2023-10-28","Peminjaman Gedung Auditorium untuk Pelatihan Manajemen Organisasis","2","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint NOT NULL,
  PRIMARY KEY (`id_instansi`),
  KEY `id_user_tbl_instansi` (`id_user`),
  CONSTRAINT `id_user_tbl_instansi` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Yayasan Pembina Universitas Bengkulu LABSCHOOL","SMA LABSCHOOL UNIVERSITAS BENGKULU","TERAKREDITASI UNGGUL","Jl. WR. Supratman, Kandang Limun, Kec. Muara Bangka Hulu, Sumatera, Bengkulu 38371","Dr. Raden Nur Cahaya Sianida, S.Pd.,  M.Pd.","10293019","https://bengkulu.labschool-unib.sch.id/smalabsku/","info@labschool-unib.sch.id","Logo-UNIB-HD-300x300.png","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint NOT NULL,
  PRIMARY KEY (`id_klasifikasi`),
  KEY `id_user_tbl_klasifikasi` (`id_user`),
  CONSTRAINT `id_user_tbl_klasifikasi` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_klasifikasi VALUES("1","01","Pemberitahuan","Surat Pemberitahuan","1");
INSERT INTO tbl_klasifikasi VALUES("2","02","Pengajuan","Surat Pengajuan","1");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint NOT NULL,
  `surat_keluar` tinyint NOT NULL,
  `referensi` tinyint NOT NULL,
  `id_user` tinyint NOT NULL,
  PRIMARY KEY (`id_sett`),
  KEY `id_user_table_sett` (`id_user`),
  CONSTRAINT `id_user_table_sett` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int NOT NULL AUTO_INCREMENT,
  `no_agenda` int NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint NOT NULL,
  PRIMARY KEY (`id_surat`),
  KEY `id_user_tbl_surat_keluar` (`id_user`),
  CONSTRAINT `id_user_tbl_surat_keluar` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("1","1","Peminjaman Gedung Auditorium","085/UN30.13.KM.01/TU/2023","Peminjaman Gedung Auditorium","02","2023-10-10","2023-11-03","3228-5248-Surat_Peminjaman_Gedung_C_fix.docx","Surat Peminjaman Tempat","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int NOT NULL AUTO_INCREMENT,
  `no_agenda` int NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint NOT NULL,
  PRIMARY KEY (`id_surat`),
  KEY `id_user_tbl_surat_masuk` (`id_user`),
  CONSTRAINT `id_user_tbl_surat_masuk` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("1","1","2019/IX/S-12","CV. Air Mail","lorem","01","132","2019-11-01","2019-11-22","5271-Surat Edaran.pdf","Edaran","1");
INSERT INTO tbl_surat_masuk VALUES("2","2","085/UN30.13.KM.01/TU/2023","OSIS SMA LABSCHOOL BENGKULU","Peminjaman Gedung Auditorium SMA Labschool Bengkulu","02","Surat Peminjaman Tempat","2023-10-10","2023-10-20","8606-5248-Surat_Peminjaman_Gedung_C_fix.docx","Surat Peminjaman Tempat","1");
INSERT INTO tbl_surat_masuk VALUES("3","3","002/808/1202","Kementerian ","Peringatan Covid 19","01","Pemberitahuan","2023-10-31","2023-11-04","1167-Adobe Scan 03 Nov 2023.pdf","Pemberitahuan","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","Administrator","52654765474","1");
INSERT INTO tbl_user VALUES("2","pengguna","8b097b8a86f9d6a991357d40d3d58634","Username","58647333","3");
INSERT INTO tbl_user VALUES("3","BenyEsa","a6946d95ced4362f924c2a78c525d3bc","Beny Esa Irawan Pratama","12011790","3");




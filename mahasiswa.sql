-- buat database fakultas
CREATE DATABASE seal_fakultas;

-- buat table jurusan
CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- buat table mahasiswa
CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('Laki-Laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);

-- masukin data jurusan
INSERT into jurusan (kode,nama) VALUES ('APBL','Administrasi Publik');

INSERT into jurusan (kode,nama) VALUES ('AKTS','Akutansi');

-- masukin data mahasiswa
INSERT into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
VALUES (1,'20220001', 'Fulan', 'laki-laki', 'Malang', '2000-12-23', 'Jl. Sukarno Hatta');
INSERT into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
VALUES (1,'20220002', 'Andi', 'laki-laki', 'Malang', '2000-12-23', 'Jl. Sukarno Hatta');

-- update data mahasiswa
UPDATE mahasiswa SET alamat = "Jl. Candi Panggung 89" WHERE id = 1;

-- delete data mahasiswa
DELETE FROM mahasiswa WHERE id=2;
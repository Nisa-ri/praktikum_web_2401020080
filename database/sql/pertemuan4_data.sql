USE praktikum_web_2201010001;

INSERT INTO program_studi (nama_prodi) VALUES
('Teknik Informatika'),
('Sistem Informasi');

INSERT INTO mahasiswa
(nim, nama, email, usia, program_studi_id)
VALUES
('2401020080', 'Nur ', 'nur@example.com', 20, 1),
('2401020011', 'Indah', 'Indah@example.com', 21, 1),
('2401020022', 'Sari', 'Sari@example.com', 22, 2),
('2401020010', 'Data Sementara', 'sementara@example.com', 19, 2);

UPDATE mahasiswa
SET email = 'nur@example.com'
WHERE nim = '2401020080';

DELETE FROM mahasiswa
WHERE nim = '2401020010';

SELECT
    m.nim,
    m.nama,
    m.email,
    m.usia,
    p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;
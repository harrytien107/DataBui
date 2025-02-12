DROP DATABASE IF EXISTS QLSV;
CREATE DATABASE QLSV;
USE QLSV;

-- Tạo bảng MONHOC
CREATE TABLE monhoc (
    mamh CHAR(3),
    tenmh VARCHAR(20),
    sotc INT
);

-- Tạo bảng LOP
CREATE TABLE LOP (
    MALP CHAR(3) ,
    TENLP VARCHAR(20) 
    -- NK INT NOT NULL
);

-- Tạo bảng SINHVIEN
CREATE Table sinhvien
(
    masv CHAR(3) PRIMARY KEY,
    tensv VARCHAR(20),
    dcsv VARCHAR(20),
    malp CHAR(3)
);
-- DROP TABLE sinhvien;

CREATE TABLE diemsv
( 
    masv CHAR(3),
    mamh CHAR(3),
    diem FLOAT,
    PRIMARY KEY (masv, mamh)
);

-- Nhập dữ liệu vào bảng MONHOC
INSERT INTO monhoc
VALUES  ('M01','Toan',5),
        ('M03', 'Ly', 4),
        ('M04', 'Anh', 3),
        ('M05', 'Van', 2),
        ('M06', 'Hoa', 1);
        -- SELECT * FROM monhoc;

-- Nhập dữ liệu vào bảng LOP
INSERT INTO LOP (MALP, TENLP) VALUES
('L01', 'Computer Science'),
('L02', 'Networking'),
('L03', 'IT');

-- Nhập dữ liệu vào bảng SINHVIEN
INSERT INTO SINHVIEN (MASV, TENSV, DCSV, MALP) VALUES
('S01', 'Nguyen Van A', 'Ha Noi', 'L01'),
('S02', 'Tran Thi B', 'Hai Phong', 'L02'),
('S03', 'Le Van C', 'Da Nang', 'L03'),
('S04', 'Hoang Minh D', 'TP.HCM', 'L01'),
('S05', 'Pham Thu E', 'Can Tho', 'L02'),
('S06', 'Nguyen Minh F','Dong Nai', 'L03'),
('S07', 'Le Van G', 'Da Nang', 'L03'),
('S08', 'Hoang Minh H', 'TP.HCM', 'L01'),
('S09', 'Pham Thu I', 'Can Tho', 'L02'),
('S10', 'Nguyen Minh J','Dong Nai', 'L03'),
('S11', 'Su Duc K', 'Da Nang', 'L03'),
('S12', 'Hoang Minh L', 'TP.HCM', 'L01'),
('S13', 'Pham Thu M', 'Can Tho', 'L02'),
('S14', 'Nguyen Hung N','Dong Nai', 'L03'),
('S15', 'Su Duc O', 'Da Nang', 'L03'),
('S16', 'Hoang Minh P', 'TP.HCM', 'L01'),
('S17', 'Pham Thu Q', 'Can Tho', 'L02'),
('S18', 'Nguyen Hung R','Dong Nai', 'L03'),
('S19', 'Su Duc S', 'Da Nang', 'L03'),
('S20', 'Hoang Minh T', 'TP.HCM', 'L01');
-- Nhập dữ liệu vào bảng DIEMSV
-- kiem tra si so cua lop
-- SELECT MALP, COUNT(*) AS SiSo
-- FROM SINHVIEN
-- GROUP BY MALP;
-- 10 sv co diem, moi em co tu 1 den 5 mon 
insert into diemsv (MASV, MAMH, DIEM)
values 
('S01','M01', 4.5),
('S01', 'M02', 4.0),
('S01', 'M05', 4.0),
('S02', 'M03', 4.5),
('S02', 'M01', 2.5),
('S02', 'M04', 3.5),
('S03', 'M04', 4.0),
('S04', 'M03', 4.5),
('S04', 'M02', 4.5),
('S04', 'M01', 4.5),
('S05', 'M01', 1.0),
('S05', 'M02', 7.5),
('S06', 'M01', 2.5),
('S07', 'M02', 7.0),
('S08', 'M03', 6.5),
('S08', 'M04', 9.0),
('S08', 'M05', 8.0),
('S09', 'M01', 4.5),
('S09', 'M02', 7.5),
('S10', 'M01', 2.0),
('S10', 'M02', 7.5),
('S11', 'M01', 4.5),
('S11', 'M02', 7.5),
('S11', 'M03', 6.5),
('S11', 'M04', 9.0),
('S11', 'M05', 8.0),
('S12', 'M01', 4.5),
('S12', 'M02', 7.5),
('S13', 'M01', 2.0),
('S13', 'M02', 7.5),
('S14', 'M01', 4.5),
('S14', 'M02', 7.5),
('S14', 'M03', 6.5),
('S14', 'M04', 9.0),
('S14', 'M05', 8.0),
('S15', 'M01', 4.5),
('S15', 'M02', 7.5),
('S16', 'M01', 2.0),
('S16', 'M02', 7.5),
('S17', 'M01', 4.5),
('S17', 'M02', 7.5),
('S17', 'M03', 6.5),
('S17', 'M04', 9.0),
('S17', 'M05', 8.0),
('S18', 'M01', 4.5),
('S18', 'M02', 7.5),
('S19', 'M01', 2.0),
('S19', 'M02', 7.5),
('S20', 'M01', 4.5),
('S20', 'M02', 7.5),
('S20', 'M03', 6.5),
('S20', 'M04', 9.0),
('S20', 'M05', 8.0);

-- DSQH: sigma (sinhvien)
-- MALP = "L01"
-- SELECT * 
-- FROM sinhvien  
-- WHERE `MALP`='L01';

--Chiếu : Nghĩa là hiện thẳng cột mà liên quan cái mình cần hiện VD là'L01'
-- ĐSQH: TT(sinhvien)
--      TENSV
-- SELECT TENSV
-- FROM sinhvien
-- WHERE MALP = 'L01';

-- SELECT *
-- FROM lop L03, sinhvien `Su Duc K`
-- WHERE L03.MALP = `Su Duc K`.MALP 
-- AND `TENLP`= 'IT';

-- SELECT * FROM lop;
-- SELECT * FROM sinhvien;

-- 5.2. Cho biết các sinh viên của lớp có tên là ”Computer Science”.
-- SELECT sinhvien.tensv, tenlp
-- FROM sinhvien
-- JOIN lop ON sinhvien.malp = malp
-- -- WHERE tenlp LIKE '%Computer Science%';
-- WHERE tenlp = 'Computer Science';

--5.4 
-- SELECT TENMH, Sotc 
-- FROM monhoc
-- WHERE mamh = 'M01';
--5.5  Điểm môn mã số ”M02” của sinh viên mã số ”S02”.
-- SELECT MASV, MAMH
-- FROM diemsv
-- WHERE mamh = 'M02' AND masv = 'S02';

-- 5.6
-- SELECT A.MAMH, Tenmh, diem
-- FROM diemsv A, monhoc B
-- WHERE diem < 5 AND MASV = 'S02'
-- AND A.MAMH = B.MAMH;

-- Tong so sv
SELECT COUNT(*) AS TongSoSV
FROM sinhvien;

-- Nhom data => Thong ke(ham...)
SELECT MALP, COUNT(*) AS SiSo
FROM SINHVIEN
GROUP BY MALP;

-- 5.7 Cho biết các môn học (*) mà sinh viên mã số ”S03” chưa bao gì thi.
SELECT mamh, tenmh
FROM monhoc
WHERE mamh NOT IN (
    SELECT mamh
    FROM diemsv
    WHERE masv = 'S03'
);

-- 5.8 Sĩ số của lớp mã số ”L01”
SELECT COUNT(*) AS SiSo
FROM SINHVIEN
WHERE MALP = 'L01';

-- 5.9 Sĩ số từng lớp.
SELECT MALP, COUNT(*) AS SiSo
FROM SINHVIEN
GROUP BY MALP;

-- 5.10 Cho biet lop nao co ss lon nhat
SELECT MALP, COUNT(*) AS SiSo
FROM SINHVIEN
GROUP BY MALP
HAVING COUNT(*) >= ALL (
    SELECT COUNT(*)
    FROM SINHVIEN
    GROUP BY MALP
);

-- 5.11 Lớp (mã số và tên) có sĩ số lớn nhất.
SELECT LOP.MALP, TENLP, COUNT(*) AS SiSo
FROM LOP, SINHVIEN
WHERE LOP.MALP = SINHVIEN.MALP
GROUP BY LOP.MALP, LOP.TENLP
HAVING COUNT(*) >= ALL (
    SELECT COUNT(*)
    FROM SINHVIEN
    GROUP BY MALP
);

SELECT KQ.MALP, TENLP, SiSo
FROM (
    SELECT LOP.MALP, LOP.TENLP, COUNT(SINHVIEN.MALP) AS SiSo
    FROM LOP
    JOIN SINHVIEN ON LOP.MALP = SINHVIEN.MALP
    GROUP BY LOP.MALP, LOP.TENLP
) AS KQ
WHERE SiSo = (
    SELECT MAX(SiSo)
    FROM (
        SELECT COUNT(*) AS SiSo
        FROM SINHVIEN
        GROUP BY MALP
    ) AS Subquery
) AS KQ, LOP B
WHERE KQ.MALP = LOP.MALP;

-- 5.12 Điểm trung bình của sinh viên mã số ”S02”.
SELECT AVG(diem) AS DiemTB
FROM diemsv
WHERE masv = 'S02';

-- 5.13. Điểm trung bình của từng sinh viên (mã số). (GDA for each student)
SELECT masv, AVG(diem) AS DiemTB
FROM diemsv
GROUP BY masv; -- Nghia la nhom theo masv

-- 5.14. Điểm trung bình của từng sinh viên (mã số và tên).
-- Cach 1
SELECT diemsv.masv, tensv, AVG(diem) AS DiemTB
FROM diemsv
JOIN sinhvien ON diemsv.masv = sinhvien.masv -- Nghia la join 2 bang diemsv va sinhvien
GROUP BY diemsv.masv, tensv;
-- Cach 2
SELECT diemsv.masv, tensv, AVG(diem) AS DiemTB
FROM diemsv, sinhvien
WHERE diemsv.masv = sinhvien.masv
GROUP BY diemsv.masv, tensv; 

-- 5.15. Điểm trung bình của lớp mã số ”L03”.
SELECT AVG(diem) AS DiemTB
FROM diemsv
JOIN sinhvien ON diemsv.masv = sinhvien.masv
WHERE malp = 'L03';

-- 5.16. Điểm trung bình của từng lớp (mã số).
SELECT malp, AVG(diem) AS DiemTB
FROM diemsv
JOIN sinhvien ON diemsv.masv = sinhvien.masv
GROUP BY malp;

-- 5.17. Điểm trung bình của từng lớp (mã số và tên).
SELECT lop.malp, tenlp, AVG(diem) AS DiemTB
FROM diemsv, sinhVien, lop
WHERE diemsv.masv = sinhvien.masv
AND sinhvien.malp = lop.malp
GROUP BY lop.malp, tenlp;

-- 5.17 GPA with weight for each student.
SELECT masv, SUM(diem * sotc) / SUM(sotc) AS DiemTB
FROM diemsv, monhoc
WHERE diemsv.mamh = monhoc.mamh
GROUP BY masv;

-- 5.18. Cho biết sinh viên (mã số) có điểm trung bình lớn nhất.
SELECT masv, AVG(diem) AS DiemTB
FROM diemsv
GROUP BY masv
HAVING AVG(diem) >= ALL (
    SELECT AVG(diem)
    FROM diemsv
    GROUP BY masv
);
-- 5.19. Cho biết sinh viên (mã số và tên) có điểm trung bình lớn nhất.
SELECT diemsv.masv, tensv, AVG(diem) AS DiemTB
FROM diemsv
JOIN sinhvien ON diemsv.masv = sinhvien.masv
GROUP BY diemsv.masv, tensv -- Nhom theo masv, tensv
HAVING AVG(diem) >= ALL (
    SELECT AVG(diem)
    FROM diemsv
    GROUP BY masv
);

-- 5.20. Điểm trung bình có hệ số (số tín chỉ) của từng sinh viên (mã số)
SELECT MASV, Sum(Diem*Sotc)/sum(sotc) AS DiemTB
FROM diemsv, monhoc
WHERE diemsv.mamh = monhoc.mamh
GROUP BY MASV;
-- Thêm sinh viên
SELECT sinhvien.MASV, TENSV, SUM(Diem*Sotc)/SUM(Sotc) AS DiemTB
FROM diemsv, monhoc, sinhvien
WHERE diemsv.mamh = monhoc.mamh
AND diemsv.masv = sinhvien.masv
GROUP BY MASV, TENSV;
-- Mã lớp
SELECT MALP, SUM(Diem*Sotc)/SUM(Sotc) AS DiemTB
FROM diemsv, monhoc, sinhvien
WHERE diemsv.mamh = monhoc.mamh
AND diemsv.masv = sinhvien.masv
GROUP BY MALP;
-- 5.21. Điểm trung bình có hệ số (số tín chỉ) của từng sinh viên (mã số và tên).

-- 5.22. Sinh viên có điểm trung bình có hệ số lớn nhất.
-- a. MASV
-- b. Mã số và Tên của SV
SELECT sinhvien.MASV, TENSV, Sum(Diem*Sotc)/SUM(Sotc) AS DiemTB
FROM DIEMSV, monhoc, sinhvien
WHERE diemsv.mamh = monhoc.mamh
AND diemsv.masv = sinhvien.masv
GROUP BY MASV, TENSV
HAVING DiemTB >= ALL(SELECT SUM(Diem*Sotc)/SUM(Sotc)
FROM DIEMSV, monhoc
WHERE diemsv.mamh = monhoc.mamh
GROUP BY MASV);

-- 5.23. Điểm trung bình có hệ số của từng lớp.
SELECT sinhvien.malp, TENLP, SUM(Diem*Sotc)/SUM(Sotc) AS DiemTB
FROM DIEMSV, monhoc, sinhvien, lop
WHERE diemsv.mamh = monhoc.mamh
AND diemsv.masv = sinhvien.masv
AND sinhvien.malp = lop.malp
GROUP BY MALP, TENLP;
-- 24 Lớp 'L01' có bao nhiêu SV rớt môn 'M01'
SELECT COUNT(*) AS SoSVRot
FROM sinhvien, diemsv
WHERE sinhvien.masv = diemsv.masv
AND malp = 'L01'
AND mamh = 'M01';

-- Lớp 'L01' có bao nhiêu SV rớt môn 'M01'
SELECT COUNT(*) AS SoSVRot
FROM sinhvien
JOIN diemsv ON sinhvien.masv = diemsv.masv
WHERE sinhvien.malp = 'L01'
  AND diemsv.mamh = 'M01'
  AND diemsv.diem < 5.0;



-- phep chia S01 
SELECT DISTINCT MAMH, tenmh
FROM DIEMSV X
where NOT EXISTS (
    SELECT * 
    FROM MONHOC
    WHERE mamh NOT IN (
        SELECT mamh
        FROM DIEMSV
        WHERE MASV = 'S01'
    )
);

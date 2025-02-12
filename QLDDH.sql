CREATE DATABASE QLDDH;
USE QLDDH;

CREATE Table LOAIHG (
    MALH CHAR(3) PRIMARY KEY,
    TENLH VARCHAR(20) not null
);

INSERT INTO loaihg
VALUES
    ('L01', 'Do gia dung'),
    ('L02', 'Do mi pham'),
    ('L03', 'Do tuoi song'),
    ('L04', 'Do an lien'),
    ('L05', 'Do choi');

CREATE TABLE HANG (
    MAHG CHAR(3) PRIMARY KEY,
    TENHG VARCHAR(20) not NULL,
    DG FLOAT NOT NULL,
    MALH CHAR(3), 
    check (DG > 0),
    FOREIGN KEY (MALH) REFERENCES LOAIHG(MALH)
);

INSERT INTO HANG
VALUES
    ('H01', 'Bàn phím', 100, 'L01'),
    ('H02', 'Sữa tắm', 70, 'L02'),
    ('H03', 'Takoyomi', 20, 'L04'),
    ('H04', 'Snack', 23, 'L04'),
    ('H05', 'Đồng hồ Ben 10', 5, 'L05'),
    ('H06', 'Ghế nhựa', 1, 'L01'),
    ('H07', 'Sữa gội đầu', 120, 'L02'),
    ('H08', 'Thịt bò', 10, 'L03'),
    ('H09', 'Mì gấu đỏ', 9, 'L04'),
    ('H10', 'Lego', 10, 'L05'),
    ('H11', 'Bàn chữ L', 200, 'L01'),
    ('H12', 'Kem dưỡng ẩm', 80, 'L02'),
    ('H13', 'Funko pop', 13, 'L05'),
    ('H14', 'Hamburger', 25, 'L04'),
    ('H15', 'One piece figure',1000, 'L05'),
    ('H16', 'Chảo', 162, 'L01'),
    ('H17', 'Sơn môi', 132, 'L02'),
    ('H18', 'Rau bắp cải', 18, 'L03'),
    ('H19', 'Khoai tây', 50, 'L04'),
    ('H20', 'Búp bê', 20, 'L05'),
    ('H21', 'Bàn tròn', 300, 'L01'),
    ('H22', 'Kem chống nắng', 90, 'L02'),
    ('H23', 'Cà chua', 8, 'L03'),
    ('H24', 'Mì tôm', 7, 'L04'),
    ('H25', 'Xe hơi Lego', 100, 'L05'),
    ('H26', 'Bàn học', 150, 'L01'),
    ('H27', 'Sữa rửa mặt', 60, 'L02'),
    ('H28', 'Cà rốt', 10, 'L03'),
    ('H29', 'Bánh mì', 15, 'L04'),
    ('H30', 'Xe đua', 200, 'L05');


CREATE TABLE KHACH (
    MAKH CHAR(3) PRIMARY KEY,
    TENKH VARCHAR(20),
    DCKH VARCHAR(20)
);

INSERT INTO KHACH
VALUES 
    ('K01', 'Nguyen Van A', 'Ha Noi'),
    ('K02', 'Tran Thi B', 'Hai Phong'),
    ('K03', 'Le Van C', 'Da Nang'),
    ('K04', 'Hoang Minh D', 'TP.HCM'),
    ('K05', 'Nguyen Van E', 'Ha Noi'),
    ('K06', 'Tran Thi F', 'Hai Phong'),
    ('K07', 'Le Van G', 'Da Nang');

CREATE TABLE DDH (
    MADDH CHAR(3) PRIMARY KEY,
    NGDH DATE,
    NGHL DATE,
    MAKH CHAR(3)
);

INSERT INTO DDH
VALUES
    ('D01', '2021-01-01', '2021-01-02', 'K01'),
    ('D02', '2021-01-02', '2021-01-03', 'K02'),
    ('D03', '2021-01-03', '2021-01-04', 'K03'),
    ('D04', '2021-01-04', '2021-01-05', 'K04'),
    ('D05', '2023-01-05', '2023-01-06', 'K05'),
    ('D06', '2023-01-06', '2023-01-07', 'K06'),
    ('D07', '2024-01-07', '2024-01-08', 'K03'),
    ('D08', '2021-01-08', '2021-01-09', 'K01'),
    ('D09', '2021-01-09', '2021-01-10', 'K02'),
    ('D10', '2023-02-01', '2023-02-02', 'K01');

CREATE TABLE CTDDH (
    MADDH CHAR(3),
    MAHG CHAR(3),
    SLD INT,
    PRIMARY KEY (MADDH, MAHG)
);

INSERT INTO CTDDH
VALUES
    ('D01', 'H01', 5),
    ('D01', 'H02', 21),
    ('D01', 'H03', 30),
    ('D01', 'H04', 3),
    ('D01', 'H05', 4),
    ('D02', 'H06', 1),
    ('D02', 'H07', 2),
    ('D02', 'H08', 8),
    ('D02', 'H09', 6),
    ('D03', 'H10', 13),
    ('D03', 'H11', 6),
    ('D04', 'H12', 22),
    ('D04', 'H13', 7),
    ('D04', 'H14', 13),
    ('D04', 'H15', 10),
    ('D05', 'H16', 9),
    ('D05', 'H17', 27),
    ('D05', 'H18', 18),
    ('D06', 'H19', 19),
    ('D06', 'H20', 20),
    ('D06', 'H21', 21),
    ('D06', 'H22', 22),
    ('D07', 'H23', 23),
    ('D07', 'H24', 24),
    ('D07', 'H25', 25),
    ('D07', 'H26', 26),
    ('D08', 'H27', 27),
    ('D08', 'H28', 28),
    ('D08', 'H29', 29),
    ('D08', 'H30', 30),
    ('D09', 'H01', 31),
    ('D09', 'H02', 32),
    ('D09', 'H03', 33),
    ('D09', 'H04', 34),
    ('D10', 'H01', 2),
    ('D10', 'H06', 3),
    ('D10', 'H11', 1),
    ('D10', 'H16', 4),
    ('D10', 'H21', 5),
    ('D10', 'H26', 2);

CREATE TABLE DOTGH (
    MADGH CHAR(3) PRIMARY KEY,
    NGGH DATE,
    MADDH CHAR(3)
);

INSERT INTO DOTGH
VALUES
    ('G01', '2022-01-01', 'D01'),
    ('G02', '2023-01-02', 'D02'),
    ('G03', '2021-01-03', 'D03'),
    ('G04', '2023-01-04', 'D04'),
    ('G05', '2021-01-05', 'D05'),
    ('G06', '2023-01-06', 'D06'),
    ('G07', '2021-01-07', 'D07'),
    ('G08', '2024-01-08', 'D08'),
    ('G09', '2022-01-09', 'D09'),
    ('G10', '2024-01-10', 'D10');

CREATE TABLE CTDGH (
    MADGH CHAR(3),
    MAHG CHAR(3),
    SLG INT,
    PRIMARY KEY (MADGH, MAHG)
);

INSERT INTO CTDGH
VALUES
    ('G01', 'H01', 5),
    ('G01', 'H02', 21),
    ('G01', 'H03', 30),
    ('G01', 'H04', 3),
    ('G01', 'H05', 4),
    ('G02', 'H06', 1),
    ('G02', 'H07', 2),
    ('G02', 'H08', 8),
    ('G02', 'H09', 6),
    ('G03', 'H10', 13),
    ('G03', 'H11', 6),
    ('G04', 'H12', 22),
    ('G04', 'H13', 7),
    ('G04', 'H14', 13),
    ('G04', 'H15', 10),
    ('G05', 'H16', 9),
    ('G05', 'H17', 27),
    ('G05', 'H18', 18),
    ('G06', 'H19', 19),
    ('G06', 'H20', 20),
    ('G07', 'H21', 21),
    ('G07', 'H22', 22),
    ('G07', 'H23', 23),
    ('G07', 'H24', 24),
    ('G08', 'H25', 25),
    ('G08', 'H26', 26),
    ('G08', 'H27', 27),
    ('G08', 'H28', 28),
    ('G09', 'H29', 29),
    ('G09', 'H30', 30),
    ('G09', 'H01', 31),
    ('G09', 'H02', 32),
    ('G10', 'H03', 33),
    ('G10', 'H04', 34),
    ('G10', 'H05', 35),
    ('G10', 'H06', 36);

-- 5.1. Các khách hàng (mã số) đặt hàng từ ngày d1 đến ngày d2.
SELECT DISTINCT MAKH
FROM DDH
WHERE NGDH BETWEEN '2021-01-01' AND '2021-01-05';

-- 5.2. Các khách hàng (mã số, tên và địa chỉ) đặt hàng trong năm 2023.
SELECT MAKH, TENKH, DCKH
FROM KHACH
WHERE MAKH IN (
    SELECT MAKH
    FROM DDH
    WHERE YEAR(NGDH) = 2023
);

-- 5.3. Các khách hàng (mã số, tên và địa chỉ) chưa đặt hàng.
SELECT MAKH, TENKH, DCKH
FROM KHACH
WHERE MAKH NOT IN (
    SELECT MAKH
    FROM DDH
);

-- 5.4. các mặt hàng (*) đặt trong đơn đặt hàng mã số ”D01”.
SELECT *
FROM HANG
WHERE MAHG IN (
    SELECT MAHG
    FROM CTDDH
    WHERE MADDH = 'D01'
);

-- Ví dụ: Tìm các đơn đặt hàng (DDH) đã đặt tất cả hàng thuộc loại 'L01' (phép chia).
SELECT DISTINCT d.MADDH
FROM DDH d
WHERE NOT EXISTS (
    SELECT *
    FROM HANG h
    WHERE h.MALH = 'L01'
      AND h.MAHG NOT IN (
          SELECT c.MAHG
          FROM CTDDH c
          WHERE c.MADDH = d.MADDH
      )
);

-- 5.7 Tính trị giá của từng đơn đặt hàng.
SELECT DDH.MADDH, SUM(CTDDH.SLD * HANG.DG) AS TriGia
FROM DDH
JOIN CTDDH ON DDH.MADDH = CTDDH.MADDH
JOIN HANG ON CTDDH.MAHG = HANG.MAHG
GROUP BY DDH.MADDH;

-- 5.8 Đơn đặt hàng nào có trị giá lớn nhất
SELECT DDH.MADDH, SUM(CTDDH.SLD * HANG.DG) AS TriGia
FROM DDH
JOIN CTDDH ON DDH.MADDH = CTDDH.MADDH
JOIN HANG ON CTDDH.MAHG = HANG.MAHG
GROUP BY DDH.MADDH
ORDER BY TriGia DESC
LIMIT 1;

-- 5.9
SELECT DDH.MAKH, SUM(CTDDH.SLD * HANG.DG) AS TongTriGia
FROM DDH
JOIN CTDDH ON DDH.MADDH = CTDDH.MADDH
JOIN HANG ON CTDDH.MAHG = HANG.MAHG
GROUP BY DDH.MAKH;

-- 5.10
SELECT DDH.MAKH, KHACH.TENKH, SUM(CTDDH.SLD * HANG.DG) AS TongTriGia
FROM DDH
JOIN KHACH ON DDH.MAKH = KHACH.MAKH
JOIN CTDDH ON DDH.MADDH = CTDDH.MADDH
JOIN HANG ON CTDDH.MAHG = HANG.MAHG
GROUP BY DDH.MAKH, KHACH.TENKH;

-- 5.11
SELECT QUARTER(DDH.NGDH) AS Quy, SUM(CTDDH.SLD * HANG.DG) AS TongTriGia
FROM DDH
JOIN CTDDH ON DDH.MADDH = CTDDH.MADDH
JOIN HANG ON CTDDH.MAHG = HANG.MAHG
WHERE YEAR(DDH.NGDH) = 2023
GROUP BY QUARTER(DDH.NGDH);

-- 5.12
SELECT MONTH(DOTGH.NGGH) AS Thang, SUM(CTDGH.SLG * HANG.DG) AS TongTriGia
FROM DOTGH
JOIN CTDGH ON DOTGH.MADGH = CTDGH.MADGH
JOIN HANG ON CTDGH.MAHG = HANG.MAHG
WHERE YEAR(DOTGH.NGGH) = 2023
GROUP BY MONTH(DOTGH.NGGH)
ORDER BY TongTriGia DESC
LIMIT 1;

-- 5.13
SELECT DDH.MADDH
FROM DDH
WHERE NOT EXISTS (
    SELECT *
    FROM HANG h
    WHERE h.MALH = 'L01'
      AND h.MAHG NOT IN (
          SELECT CTDDH.MAHG
          FROM CTDDH
          WHERE CTDDH.MADDH = DDH.MADDH
      )
);

-- 5.14
SELECT DDH.MADDH, COUNT(DOTGH.MADGH) AS SoDotGiao
FROM DDH
JOIN DOTGH ON DDH.MADDH = DOTGH.MADDH
GROUP BY DDH.MADDH
ORDER BY SoDotGiao DESC
LIMIT 1;

-- Ràng buộc toàn vẹn:
-- 1) LOAIHG(MALH) PK, HANG(MALH) FK -> LOAIHG(MALH), DG>0
-- 2) HANG(MAHG) PK
-- 3) KHACH(MAKH) PK
-- 4) DDH(MADDH) PK, DDH(MAKH) -> KHACH(MAKH)
-- 5) CTDDH(MADDH, MAHG) PK -> DDH, HANG
-- 6) DOTGH(MADGH) PK, DOTGH(MADDH) -> DDH(MADDH)
-- 7) CTDGH(MADGH, MAHG) PK -> DOTGH, HANG

-- 5.11. Calculating total cost of orders for each customer.
SELECT DDH.MAKH, SUM(CTDDH.SLD * HANG.DG) AS TotalCost
FROM DDH, CTDDH, HANG
WHERE DDH.MADDH = CTDDH.MADDH AND CTDDH.MAHG = HANG.MAHG
GROUP BY DDH.MAKH;

-- Tính trị giá của từng đơn đặt hàng.
SELECT MADDH, SUM(CTDDH.SLD * HANG.DG) AS TriGia
FROM CTDDH, HANG
WHERE CTDDH.MAHG = HANG.MAHG
GROUP BY MADDH;

-- Đơn đặt hàng nào có trị giá lớn nhất
SELECT MADDH, SUM(CTDDH.SLD * HANG.DG) AS TriGia
FROM CTDDH, HANG
WHERE CTDDH.MAHG = HANG.MAHG
GROUP BY MADDH
HAVING TriGia >= ALL (
    SELECT SUM(CTDDH.SLD * HANG.DG)
    FROM CTDDH, HANG
    WHERE CTDDH.MAHG = HANG.MAHG
    GROUP BY MADDH
);
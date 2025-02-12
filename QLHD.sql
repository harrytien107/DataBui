CREATE DATABASE qlhd;
USE qlhd;

CREATE Table LOAIHG (
    MALH CHAR(3) PRIMARY KEY,
    TENLH VARCHAR(20)
);

INSERT INTO
    loaihg
VALUES
    ('L01', 'Do gia dung'),
    ('L02', 'Do mi pham'),
    ('L03', 'Do tuoi song'),
    ('L04', 'Do an lien'),
    ('L05', 'Do choi');

CREATE TABLE HANG (
    MAHG CHAR(3) PRIMARY KEY,
    TENHG VARCHAR(20),
    DG FLOAT,
    MALH CHAR(3)
);

INSERT INTO
    HANG
VALUES
    ('H01', 'Bàn', 100, 'L01'),
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


CREATE TABLE HOADON (
    MAHD CHAR(3) PRIMARY KEY,
    NGAYLAP DATE
);

INSERT INTO
    HOADON
VALUES
    ('D01', '2023-01-23'),
    ('D02', '2024-02-11'),
    ('D03', '2024-03-29'),
    ('D04', '2023-04-20'),
    ('D05', '2024-05-19'),
    ('D06', '2024-05-17'),
    ('D07', '2024-03-07'),
    ('D08', '2024-8-08'),
    ('D09', '2024-10-09'),
    ('D10', '2024-12-10');

SELECT
    YEAR(NGAYLAP) AS 'Year',
    QUARTER(ngaylap) as 'Quar'
FROM
    HOADON;

CREATE TABLE CTHD (
    MAHD CHAR(3),
    MAHG CHAR(3),
    SL INT,
    PRIMARY KEY (MAHD, MAHG)
);

INSERT INTO
    CTHD
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
    ('D07', 'H21', 21),
    ('D07', 'H22', 22),
    ('D07', 'H23', 4),
    ('D07', 'H24', 3),
    ('D08', 'H25', 1),
    ('D09', 'H26', 33),
    ('D09', 'H27', 27),
    ('D10', 'H28', 28),
    ('D10', 'H29', 29),
    ('D10', 'H30', 30);

-- KIEM tra data so mat hang trong tung loai hang
SELECT malh, COUNT(*) as 'Somh'
from hang
group by malh
order by malh;

-- so luong mat hang trong tung hoa don
SELECT mahd, COUNT(*) as 'Slmh'
from cthd
group by mahd
order by mahd;
-- 5.1. Cho biết các mặt hàng của loại hàng mã số = ”LO1”    
SELECT * 
FROM HANG 
WHERE MALH = 'L01'; 
-- 5.2. Cho biết các mặt hàng (mã số, tên và đơn giá) của loại hàng mã số ”LO2”
SELECT MAHG, TENHG, DG, MALH
FROM HANG
WHERE MALH = 'L02';
-- 5.3. Cho biết các mặt hàng có đơn giá từ 100 đến 500
SELECT *
FROM HANG
WHERE DG BETWEEN 100 AND 500;
-- 5.4. Cho biết các hóa đơn được lập vào ngày d. 
SELECT *
FROM HOADON
WHERE NGAYLAP = '2024-03-07';
-- 5.5. Cho biết các mặt hàng (mã số, tên, đơn giá và số lượng) của những hóa đơn lập vào ngày d.
SELECT HANG.MAHG, TENHG, DG, SL
FROM HANG, CTHD, HOADON
WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND NGAYLAP = '2024-03-07';
-- 5.6. Cho biết các hóa đơn được lập vào năm 2023
SELECT *
FROM HOADON
WHERE YEAR(NGAYLAP) = 2023;
-- 5.7. Tính tổng số lượng hàng của hóa đơn mã số ”D01”.
SELECT SUM(SL) AS 'TongSL'
FROM CTHD
WHERE MAHD = 'D01';

-- 5.8. Tính tổng số lượng hàng của từng hóa đơn.
SELECT MAHD, SUM(SL) AS 'TongSL'
FROM CTHD 
GROUP BY MAHD;

-- 5.9. Tính tổng số lượng hàng của từng hóa đơn trong ngày d.
SELECT HOADON.MAHD, SUM(SL) AS 'TongSL'
FROM HOADON, CTHD
WHERE HOADON.MAHD = CTHD.MAHD AND NGAYLAP = '2024-03-07'
GROUP BY HOADON.MAHD;
-- 5.10. Tính trị giá của hóa đơn mã số ”D01”.
SELECT SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD
WHERE HANG.MAHG = CTHD.MAHG AND MAHD = 'D01';
-- 5.11. Tính trị giá của từng hóa đơn.
SELECT MAHD, SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD
WHERE HANG.MAHG = CTHD.MAHG
GROUP BY MAHD;
-- 5.12. Trong ngày d, hóa đơn nào có trị giá lớn nhất.
SELECT MAHD, SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD, HOADON
WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND NGAYLAP = '2024-03-07'
-- 5.13. Tính trị giá của từng hóa đơn trong quí 2 năm 2023.
SELECT MAHD, SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD, HOADON
WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND YEAR(NGAYLAP) = 2023 AND QUARTER(NGAYLAP) = 2
GROUP BY MAHD;
-- 5.14. Tính tổng trị giá của các hóa đơn trong từng tháng của năm 2023.
SELECT MONTH(NGAYLAP) AS 'Thang', SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD, HOADON
WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND YEAR(NGAYLAP) = 2023 
GROUP BY MONTH(NGAYLAP);
-- 5.15. Tính tổng trị giá của các hóa đơn trong từng quý của năm 2023.
SELECT QUARTER(NGAYLAP) AS 'Quy', SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD, HOADON
WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND YEAR(NGAYLAP) = 2023
GROUP BY QUARTER(NGAYLAP);
-- 5.16. Hóa đơn nào có trị giá lớn nhất.
SELECT MAHD, SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD
WHERE HANG.MAHG = CTHD.MAHG
GROUP BY MAHD 
HAVING SUM(DG * SL) >= ALL (
    SELECT SUM(DG * SL)
    FROM HANG, CTHD
    WHERE HANG.MAHG = CTHD.MAHG
    GROUP BY MAHD
);
-- 5.17. Trong năm 2023, tháng nào có tổng trị giá các hóa đơn lớn nhất.
SELECT MONTH(NGAYLAP) AS 'Thang', SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD, HOADON
WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND YEAR(NGAYLAP) = 2023
GROUP BY MONTH(NGAYLAP)
HAVING SUM(DG * SL) >= ALL (
    SELECT SUM(DG * SL)
    FROM HANG, CTHD, HOADON
    WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND YEAR(NGAYLAP) = 2023
    GROUP BY MONTH(NGAYLAP)
);
-- 5.18. Trong năm 2023, quý nào có tổng trị giá các hóa đơn lớn nhất.
SELECT QUARTER(NGAYLAP) AS 'Quy', SUM(DG * SL) AS 'TriGia'
FROM HANG, CTHD, HOADON
WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND YEAR(NGAYLAP) = 2023
GROUP BY QUARTER(NGAYLAP)
HAVING SUM(DG * SL) >= ALL (
    SELECT SUM(DG * SL)
    FROM HANG, CTHD, HOADON
    WHERE HANG.MAHG = CTHD.MAHG AND CTHD.MAHD = HOADON.MAHD AND YEAR(NGAYLAP) = 2023
    GROUP BY QUARTER(NGAYLAP)
);
-- 5.19. Hóa đơn nào có tất cả các mặt hàng của loại hàng mã số ”L01”.
SELECT MAHD
FROM CTHD
WHERE MAHG IN (
    SELECT MAHG
    FROM HANG
    WHERE MALH = 'L01'
)
GROUP BY MAHD
HAVING COUNT(DISTINCT MAHG) = (
    SELECT COUNT(*)
    FROM HANG
    WHERE MALH = 'L01'
);
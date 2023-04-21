-- Test cho câu 2
SELECT * FROM MATHANG
SELECT * FROM NHATKYBANHANG
-- Test cho câu 3a
INSERT INTO NHATKYBANHANG (stt, ngay, nguoimua, mahang, soluong, giaban)
VALUES
(6, '2022-04-22', 'Nguy?n Th? F', 1, 3, 15000)
SELECT * FROM MATHANG
-- Test cho câu 3b
UPDATE NHATKYBANHANG SET soluong = 2 WHERE stt = 2
SELECT * FROM MATHANG
-- Test cho câu 3c
INSERT INTO NHATKYBANHANG (stt, ngay, nguoimua, mahang, soluong, giaban)
VALUES
(7, '2022-04-23', 'Trýõng Vãn G', 2, 10, 12000)
SELECT * FROM MATHANG
-- Test cho câu 3d
UPDATE NHATKYBANHANG SET soluong = 1 WHERE stt = 3
SELECT * FROM MATHANG
-- Test cho câu 3e
DELETE FROM NHATKYBANHANG WHERE stt = 4
SELECT * FROM MATHANG
-- Test cho câu 3f
UPDATE NHATKYBANHANG SET soluong = 7 WHERE stt = 5
SELECT * FROM MATHANG
-- Test cho câu 3g
EXEC sp_xoa_mathang 3
SELECT * FROM MATHANG
SELECT * FROM NHATKYBANHANG
-- Test cho câu 3h
SELECT dbo.fn_tongtien_hang('S?a týõi Vinamilk') AS 'T?ng ti?n S?a týõi Vinamilk'
SELECT dbo.fn_tongtien_hang('Bánh m? phô mai') AS 'T?ng ti?n Bánh m? phô mai'


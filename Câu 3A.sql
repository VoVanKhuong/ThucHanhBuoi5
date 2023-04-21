CREATE TRIGGER trg_nhatkybanhang_insert
ON NHATKYBANHANG
AFTER INSERT
AS
BEGIN
  UPDATE MATHANG
  SET soluong = m.soluong - i.soluong
  FROM MATHANG m
  INNER JOIN inserted i ON m.mahang = i.mahang;
END 
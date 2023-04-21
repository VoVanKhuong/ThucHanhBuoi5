CREATE TRIGGER trg_nhatkybanhang_update
	ON NHATKYBANHANG
	AFTER UPDATE
	AS
	BEGIN
		IF UPDATE(soluong)
		BEGIN
		UPDATE MATHANG
		SET soluong = MATHANG.soluong + deleted.soluong - inserted.soluong
		FROM MATHANG
		INNER JOIN deleted ON MATHANG.mahang = deleted.mahang
		INNER JOIN inserted ON MATHANG.mahang = inserted.mahang
	END
END;

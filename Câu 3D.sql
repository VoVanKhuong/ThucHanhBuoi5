CREATE TRIGGER trg_nhatkybanhang_update2
ON NHATKYBANHANG
FOR UPDATE
AS
BEGIN
IF (SELECT COUNT(*) FROM inserted) > 1
BEGIN
	RAISERROR('Ch? ðý?c c?p nh?t 1 b?n ghi t?i m?t th?i ði?m!', 16, 1)
	ROLLBACK TRANSACTION
	END
	ELSE
	BEGIN
		DECLARE @mahang INT, @soluong INT, @soluong_hien_co INT
		SELECT @mahang = mahang, @soluong = soluong
		FROM inserted

		SELECT @soluong_hien_co = soluong
		FROM MATHANG
		WHERE mahang = @mahang

		UPDATE MATHANG
		SET soluong = soluong + (SELECT soluong FROM deleted) - @soluong
		WHERE mahang = @mahang
	END
END;
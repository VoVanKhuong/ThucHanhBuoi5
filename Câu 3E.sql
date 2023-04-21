CREATE TRIGGER trg_nhatkybanhang_delete3
ON NHATKYBANHANG
FOR DELETE
AS
BEGIN
	IF (SELECT COUNT(*) FROM deleted) > 1
	BEGIN
		RAISERROR('Ch? ðý?c xóa 1 b?n ghi t?i m?t th?i ði?m!', 16, 1)
		ROLLBACK TRANSACTION
		END
		ELSE
		BEGIN
		DECLARE @mahang INT, @soluong INT
		SELECT @mahang = mahang, @soluong = soluong
		FROM deleted
		UPDATE MATHANG
		SET soluong = soluong + @soluong
		WHERE mahang = @mahang
	END
END;

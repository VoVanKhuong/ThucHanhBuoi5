CREATE TRIGGER trg_nhatkybanhang_insert1
ON NHATKYBANHANG
FOR INSERT
AS
BEGIN
	DECLARE @mahang INT, @soluong INT, @soluong_hien_co INT

	SELECT @mahang = mahang, @soluong = soluong
	FROM inserted

	SELECT @soluong_hien_co = soluong
	FROM MATHANG
	WHERE mahang = @mahang

	IF @soluong <= @soluong_hien_co
	BEGIN
		UPDATE MATHANG
		SET soluong = soluong - @soluong
		WHERE mahang = @mahang
		END
		ELSE
		BEGIN
		RAISERROR('S? l�?ng h�ng b�n ra ph?i nh? h�n ho?c b?ng s? l�?ng h�ng hi?n c�!', 16, 1)
		ROLLBACK TRANSACTION
	END
END;
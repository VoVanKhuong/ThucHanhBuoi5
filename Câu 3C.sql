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
		RAISERROR('S? lý?ng hàng bán ra ph?i nh? hõn ho?c b?ng s? lý?ng hàng hi?n có!', 16, 1)
		ROLLBACK TRANSACTION
	END
END;
CREATE TRIGGER trg_nhatkybanhang_update4
ON NHATKYBANHANG
FOR UPDATE
AS
BEGIN
	DECLARE @mahang INT, @soluong INT, @soluong_hien_co INT

	SELECT @mahang = mahang, @soluong = soluong
	FROM inserted

	SELECT @soluong_hien_co = soluong
	FROM MATHANG
	WHERE mahang = @mahang

	IF @soluong > @soluong_hien_co
	BEGIN
		RAISERROR('S? lý?ng c?p nh?t không ðý?c vý?t quá s? lý?ng hi?n có!', 16, 1)
		ROLLBACK TRANSACTION
	END
	ELSE IF @soluong = @soluong_hien_co
	BEGIN
		RAISERROR('Không c?n c?p nh?t s? lý?ng!', 16, 1)
		ROLLBACK TRANSACTION
	END
	ELSE
	BEGIN
		UPDATE MATHANG
		SET soluong = soluong + (SELECT soluong FROM deleted) - @soluong
		WHERE mahang = @mahang
	END
END;
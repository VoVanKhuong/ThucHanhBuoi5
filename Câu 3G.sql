CREATE PROCEDURE sp_xoa_mathang5
@mahang INT
AS
BEGIN
IF NOT EXISTS (SELECT * FROM MATHANG WHERE mahang = @mahang)
BEGIN
PRINT 'M? hàng không t?n t?i!'
RETURN
END

BEGIN TRANSACTION

DELETE FROM NHATKYBANHANG WHERE mahang = @mahang
DELETE FROM MATHANG WHERE mahang = @mahang

COMMIT TRANSACTION

PRINT 'Xóa m?t hàng thành công!'
END
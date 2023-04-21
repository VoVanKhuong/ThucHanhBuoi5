CREATE FUNCTION fn_tongtien_hang
(@tenhang NVARCHAR(50))
RETURNS MONEY
AS
BEGIN
DECLARE @tongtien MONEY

SELECT @tongtien = SUM(@tongtien)
FROM NHATKYBANHANG nk
JOIN MATHANG mh ON nk.mahang = mh.mahang
WHERE mh.tenhang = @tenhang

RETURN @tongtien
END
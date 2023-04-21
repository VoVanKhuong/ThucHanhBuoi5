INSERT INTO ChucVu (MaCV, TenCV)
VALUES ('BV', 'B?o v?'),
       ('GD', 'Giám ð?c'),
       ('HC', 'Hành chính'),
       ('KT', 'K? toán'),
       ('TQ', 'Th? qu?'),
       ('VS', 'V? sinh');

INSERT INTO NhanVien (MaNV, MaCV, TenNV, NgaySinh, LuongCanBan, NgayCong, PhuCap)
VALUES (N'NV01', N'GD', 'Nguy?n Vãn An', '1977-12-12', 700000, 25, 500000),
       (N'NV02', N'BV', 'Bùi Vãn Tí', '1978-10-10', 400000, 24, 100000),
       (N'NV03', N'KT', 'Tr?n Thanh Nh?t', '1977-09-09', 600000, 26, 400000),
       (N'NV04', N'VS', 'Nguy?n Th? Út', '1980-10-10', 300000, 26, 300000),
	   (N'NV05', N'HC', 'Lê Th? Hà', '1979-10-10', 500000, 27, 200000);
CREATE TABLE Chucvu (
  MaCV NVARCHAR(2)  PRIMARY KEY,
  TenCV NVARCHAR(30) NOT NULL
);

 CREATE TABLE NhanVien (
  MaNV NVARCHAR(4) PRIMARY KEY,
  MaCV NVARCHAR(2) NOT NULL,
  TenNV NVARCHAR(30) NOT NULL,
  NgaySinh DATETIME NOT NULL,
  LuongCanBan FLOAT NOT NULL,
  NgayCong INT NOT NULL,
  PhuCap FLOAT NOT NULL,
  CONSTRAINT fk_ChucVu_NhanVien FOREIGN KEY (MaCV) REFERENCES Chucvu(MaCV)
);

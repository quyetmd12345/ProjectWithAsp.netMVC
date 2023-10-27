use master
go

create database TracNghiemIT
go

use TracNghiemIT
go

create table [Quyen](
	Id int primary key identity,
	LoaiQuyen nvarchar(255) unique not null,
	TrangThai bit default 0
)
go

create table NguoiDung(
	Id int primary key identity,
	TaiKhoan varchar(255) unique not null,
	MatKhau varchar(255) not null,
	Email varchar(255) unique not null,
	HoTen nvarchar(100),
	TrangThai bit default 0,
	QuyenId int foreign key references Quyen(id)
)
go

create table BaiTracNghiem(
	Id int primary key identity,
	TenBaiTracNghiem nvarchar(300) unique not null,
	MoTaBaiTracNghiem nvarchar(1000),
	TrangThai bit default 0,
	NguoiDungId int foreign key references NguoiDung(id)
)
go

create table CauHoiTracNghiem(
	Id int primary key identity,
	CauHoi nvarchar(1000),
	BaiTracNghiemId int foreign key references BaiTracNghiem(id)
)
go

create table DapAnTracNghiem(
	Id int primary key identity,
	CauTraLoi nvarchar(1000),
	DapAn bit default 0,
	CauHoiTracNghiemId int foreign key references CauHoiTracNghiem(id)
)
go


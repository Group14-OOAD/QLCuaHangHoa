USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[sanpham_layds]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sanpham_layds]
 as
 select SanPham.MaSP, SanPham.TenSP, SanPham.DonVi, SanPham.DonGia, SanPham.soluong from SanPham
GO

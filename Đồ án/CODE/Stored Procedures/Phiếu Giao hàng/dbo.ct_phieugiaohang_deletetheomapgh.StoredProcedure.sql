USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_deletetheomapgh]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[ct_phieugiaohang_deletetheomapgh]
	 (
		@Mapgh varchar(10)
		
	 )
	 AS
	 BEGIN
		DELETE FROM CT_PhieuGiaoHang WHERE MaPGH=@Mapgh

	 END
GO

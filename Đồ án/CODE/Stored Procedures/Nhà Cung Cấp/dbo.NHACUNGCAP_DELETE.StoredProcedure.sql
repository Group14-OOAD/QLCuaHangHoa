USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_DELETE]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[NHACUNGCAP_DELETE]
	 (
		@MaNCC varchar(10)
	 )
	 AS
	 BEGIN
		Update NhaCungCap 
		set isActive = 0
		Where NhaCungCap.MaNCC = @MaNCC
	 END


GO

USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_getNhanVien]    Script Date: 12/14/2016 9:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_getNhanVien]
	(
		@maNhanVien VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM NhanVien
	WHERE @maNhanVien = MaNV
END


GO

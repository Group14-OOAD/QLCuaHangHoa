USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[SANPHAM_getSANPHAM]    Script Date: 12/14/2016 10:12:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SANPHAM_getSANPHAM]
	(
		@maSANPHAM VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM SanPham
	WHERE @maSANPHAM = MaSP
END



GO

USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_getNCC]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[NHACUNGCAP_getNCC]
	(
		@maNCC VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM NhaCungCap
	WHERE @maNCC = MaNCC
END



GO

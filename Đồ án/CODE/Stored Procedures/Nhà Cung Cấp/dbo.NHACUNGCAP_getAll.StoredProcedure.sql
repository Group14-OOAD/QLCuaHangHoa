USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHACUNGCAP_getAll]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
create PROCEDURE [dbo].[NHACUNGCAP_getAll]

AS
BEGIN
	SELECT * FROM NhaCungCap
END



GO

using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class HoaDonNhapHangDAO:DBConnection
    {
        public HoaDonNhapHangDAO(): base(){ }
        private SqlParameter _maHD, _ngayLap, _maNV, _maNCC, _tongTien, _ghiChu, _isActive;

        public bool addHoaDonNhapHang(HoaDonNhapHang _hoaDonNhapHang)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("HOADONHAPHANG_Insert", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                _maHD = cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10));
                _ngayLap = cmd.Parameters.Add(new SqlParameter("@ngayLap", SqlDbType.Date));
                _maNV = cmd.Parameters.Add(new SqlParameter("@maNV", SqlDbType.NVarChar, 10));
                _maNCC = cmd.Parameters.Add(new SqlParameter("@maNCC", SqlDbType.NVarChar, 10));
                _tongTien = cmd.Parameters.Add(new SqlParameter("@tongTien", SqlDbType.Int));              
                _ghiChu = cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.NVarChar, 100));
                _isActive = cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit));

                //Get value to parameters:
                _maHD.Value = _donNhapHang.MaHD;
                _ngayLap.Value = _donNhapHang.NgayLap;
                _maNV.Value = _donNhapHang.MaNV;
                _maNCC.Value = _donNhapHang.MaNCC;
                _tongTien.Value = _donNhapHang.TongTien;
                _ghiChu.Value = _donNhapHang.GhiChu;
                _isActive.Value = _donNhapHang.IsActive;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return false;
            }
        }

        public bool deleteHoaDonNhapHang(string _maHD)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("HOADONNHAPHANG_DELETE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _maHD;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return false;
            }
        }

        public bool updateHoaDonDatHang(HoaDonNhapHang _hoaDonNhapHang)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("HOADONHAPHANG_Update", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _hoaDonNhapHang.MaHD;
                cmd.Parameters.Add(new SqlParameter("@ngayLap", SqlDbType.Date)).Value = _hoaDonNhapHang.NgayLap;
                cmd.Parameters.Add(new SqlParameter("@maNV", SqlDbType.VarChar, 10)).Value = _hoaDonNhapHang.MaNV;
                cmd.Parameters.Add(new SqlParameter("@maNCC", SqlDbType.VarChar, 10)).Value = _hoaDonNhapHang.MaNCC;
                cmd.Parameters.Add(new SqlParameter("@tongTien", SqlDbType.Int)).Value = _hoaDonNhapHang.TongTien;
                cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.VarChar, 100)).Value = _hoaDonNhapHang.GhiChu;
                cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit)).Value = _hoaDonNhapHang.IsActive;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return false;
            }
        }

        public HoaDonNhapHang getHoaDonNhapHang(string _maHD)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("HOADONNHAPHANG_getHoaDonNhapHang", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _maHD;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                HoaDonNhapHang hoadonnhaphang = null;
                if (dr.Read())
                {
                    hoadonnhaphang = new HoaDonNhapHang();
                    hoadonnhaphang.MaHD = dr["MaHD"].ToString();
                    hoadonnhaphang.NgayLap = (DateTime)dr["NgayLap"];
                    hoadonnhaphang.MaNV = dr["MaNV"].ToString();
                    hoadonnhaphang.MaNCC = dr["MaNCC"].ToString();
                    hoadonnhaphang.TongTien = (int)dr["TongTien"];
                    hoadonnhaphang.GhiChu = dr["GhiChu"].ToString();
                    hoadonnhaphang.IsActive = (Convert.ToInt32(dr["IsActive"]) == 1) ? true : false;
                }
                conn.Close();
                return hoadonnhaphang;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }

        public DataTable getAllHoaDonNhapHang()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("HOADONNHAPHANG_getAll", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }

        public DataTable searchHoaDonNhapHang(string _maHD)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("HOADONNHAPHANG_Search", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maHD", SqlDbType.VarChar, 10)).Value = _maHD;
                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }

    }
}

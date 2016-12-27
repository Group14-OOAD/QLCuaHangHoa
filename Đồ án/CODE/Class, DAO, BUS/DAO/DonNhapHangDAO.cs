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
    public class DonNhapHangDAO : DBConnection
    {
        public DonNhapHangDAO(): base(){ }
        private SqlParameter _maDNH, _ngayLap, _maNV, _maNCC, _tongTien, _ngayGiaoDuKien, _ghiChu, _isActive;

        public bool addDonNhapHang(DonNhapHang _donNhapHang)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("DONHAPHANG_Insert", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                _maDNH = cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10));
                _ngayLap = cmd.Parameters.Add(new SqlParameter("@ngayLap", SqlDbType.Date));
                _maNV = cmd.Parameters.Add(new SqlParameter("@maNV", SqlDbType.NVarChar, 10));
                _maNCC = cmd.Parameters.Add(new SqlParameter("@maNCC", SqlDbType.NVarChar, 10));
                _tongTien = cmd.Parameters.Add(new SqlParameter("@tongTien", SqlDbType.Int));
                _ngayGiaoDuKien = cmd.Parameters.Add(new SqlParameter("@ngayGiaoDuKien", SqlDbType.Date));
                _ghiChu = cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.NVarChar, 100));
                _isActive = cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit));
              
                //Get value to parameters:
                _maDNH.Value = _donNhapHang.MaDNH;
                _ngayLap.Value = _donNhapHang.NgayLap;
                _maNV.Value = _donNhapHang.MaNV;
                _maNCC.Value = _donNhapHang.MaNCC;
                _tongTien.Value = _donNhapHang.TongTien;
                _ngayGiaoDuKien.Value = _donNhapHang.NgayGiaoDuKien;
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

        public bool deleteDonNhapHang(string _maDNH)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DONNHAPHANG_DELETE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10)).Value = _maDNH;

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

        public bool updateDonDatHang(DonNhapHang _donNhapHang)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DONHAPHANG_Update", conn);
                cmd.CommandType = CommandType.StoredProcedure;
            
                cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10)).Value = _donNhapHang.MaDNH;
                cmd.Parameters.Add(new SqlParameter("@ngayLap", SqlDbType.Date)).Value = _donNhapHang.NgayLap;
                cmd.Parameters.Add(new SqlParameter("@maNV", SqlDbType.VarChar,10)).Value = _donNhapHang.MaNV;
                cmd.Parameters.Add(new SqlParameter("@maNCC", SqlDbType.VarChar,10)).Value = _donNhapHang.MaNCC;
                cmd.Parameters.Add(new SqlParameter("@tongTien", SqlDbType.Int)).Value = _donNhapHang.TongTien;
                cmd.Parameters.Add(new SqlParameter("@ngayGiaoDuKien", SqlDbType.Date)).Value = _donNhapHang.NgayGiaoDuKien;
                cmd.Parameters.Add(new SqlParameter("@ghiChu", SqlDbType.VarChar, 100)).Value = _donNhapHang.GhiChu;
                cmd.Parameters.Add(new SqlParameter("@isActive", SqlDbType.Bit)).Value = _donNhapHang.IsActive;
                
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

        public DonNhapHang getDonNhapHang(string _maDonNhapHang)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DONNHAPHANG_getDonNhapHang", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maDNH", SqlDbType.VarChar, 10)).Value = _maDNH;

                if (conn.State != ConnectionState.Open)
                    conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DonNhapHang donnhaphang = null;
                if (dr.Read())
                {
                    donnhaphang = new DonNhapHang();
                    donnhaphang.MaDNH = dr["MaNV"].ToString();
                    donnhaphang.NgayLap = (DateTime)dr["NgayLap"];
                    donnhaphang.MaNV = dr["MaNV"].ToString() ;
                    donnhaphang.MaNCC = dr["MaNCC"].ToString();
                    donnhaphang.TongTien = (int)dr["TongTien"];
                    donnhaphang.NgayGiaoDuKien = (DateTime)dr["NgayGiaoDuKien"];
                    donnhaphang.GhiChu = dr["GhiChu"].ToString();
                    donnhaphang.IsActive = (Convert.ToInt32(dr["IsActive"]) == 1) ? true : false;
                }
                conn.Close();
                return donnhaphang;
            }
            catch (Exception e)
            {
                conn.Close();
                Console.WriteLine("Lỗi: " + e.Message);
                return null;
            }
        }

        public DataTable getAllDonNhapHang()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DONNHAPHANG_getAll", conn);
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

        public DataTable searchDonNhapHang(string _maDonNHAPHang)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DONNHAPHANG_Search", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@maDonNhapHang", SqlDbType.VarChar, 10)).Value = _maDonNHAPHang;       
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

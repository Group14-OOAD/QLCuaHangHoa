using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;


namespace DAO
{
    public class KhachHangDAO: DBConnection
    {
        public DataTable GetDSKhachHang()
        {
            OpenConnect();
            DataTable data = new DataTable();
            string store = "KHACHHANG_LAYDS";
            sqlCommand = new SqlCommand(store, connect);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlAdapter = new SqlDataAdapter(sqlCommand);
            sqlAdapter.Fill(data);
            CloseConnect();
            return data;
        }

        public DataTable GetThongTinKH(string _maKH)
        {
            OpenConnect();
            DataTable data = new DataTable();
            string store = "KHACHHANG_LAYTHONGTIN";
            sqlCommand = new SqlCommand(store, connect);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlAdapter = new SqlDataAdapter(sqlCommand);
            sqlAdapter.Fill(data);
            CloseConnect();
            return data;
        }

        //public bool SuaKhachHang(string _maKH, string _hoTen, string _diaChi, string _soDT, string _ghiChu)
        //{
        //    OpenConnect();
        //    string store = "KHACHHANG_LAYTHONGTIN";
        //    sqlCommand = new SqlCommand(store, connect);
        //    sqlCommand.CommandType = CommandType.StoredProcedure;
        //    sqlCommand.Parameters.Add(new SqlParameter("@MaKH", _maKH));
        //    sqlCommand.Parameters.Add(new SqlParameter("@HoTen",_hoTen));
        //    sqlCommand.Parameters.Add(new SqlParameter("@DiaChi",_diaChi));
        //    sqlCommand.Parameters.Add(new SqlParameter("@SoDT", _soDT));
        //    sqlCommand.Parameters.Add(new SqlParameter("@GhiChu", _ghiChu));
        //    if (sqlCommand.ExecuteNonQuery() >= 0)
        //    {
        //        CloseConnect();
        //        return true;
        //    }
        //    else
        //    {
        //        CloseConnect();
        //        return false;
        //    }
        //}


        public bool Insert_KhachHang(string _hoTen, string _diaChi, string _soDT, string _ghiChu)
        {
            OpenConnect();
            string store = "KHACHHANG_INSERT";
            sqlCommand = new SqlCommand(store, connect);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add(new SqlParameter("@HoTen", _hoTen));
            sqlCommand.Parameters.Add(new SqlParameter("@DiaChi", _diaChi));
            sqlCommand.Parameters.Add(new SqlParameter("@SoDT", _soDT));
            sqlCommand.Parameters.Add(new SqlParameter("@GhiChu", _ghiChu));
            sqlCommand.ExecuteNonQuery();
            CloseConnect();
            return true;
        }

        public bool Update_KhachHang(string _maKH, string _hoTen, string _diaChi, string _soDT, string _ghiChu)
        {
            OpenConnect();
            string store = "KHACHHANG_UPDATE";
            sqlCommand = new SqlCommand(store, connect);
            sqlCommand.CommandType = CommandType.StoredProcedure;
             sqlCommand.Parameters.Add(new SqlParameter("@MaKH", _maKH));
            sqlCommand.Parameters.Add(new SqlParameter("@HoTen",_hoTen));
            sqlCommand.Parameters.Add(new SqlParameter("@DiaChi",_diaChi));
            sqlCommand.Parameters.Add(new SqlParameter("@SoDT", _soDT));
            sqlCommand.Parameters.Add(new SqlParameter("@GhiChu", _ghiChu));
            sqlCommand.ExecuteNonQuery();
            CloseConnect();
            return true;
        }

        public bool Delete_KhachHang(string _maKH)
        {
            OpenConnect();
            string store = "HOADON_DELETE";

            sqlCommand = new SqlCommand(store, connect);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add(new SqlParameter("@makh", _maKH));
            sqlCommand.ExecuteNonQuery();
            CloseConnect();
            return true;
        }

        public DataTable Search_KhachHang(string _maKH, string _hoTen, string _diaChi, string _soDT)
        {
            OpenConnect();
            DataTable data = new DataTable();
            string store = "KHACHHANG_TIMKIEM2";
            sqlCommand = new SqlCommand(store, connect) { CommandType = CommandType.StoredProcedure };
            sqlCommand.Parameters.Add(new SqlParameter("@makh", _maKH));
            sqlCommand.Parameters.Add(new SqlParameter("@tenkh", _hoTen));
            sqlCommand.Parameters.Add(new SqlParameter("@diachi", _diaChi));
            sqlCommand.Parameters.Add(new SqlParameter("@email", _soDT));

            sqlAdapter = new SqlDataAdapter(sqlCommand);
            sqlAdapter.Fill(data);
            CloseConnect();
            return data;
        }
        public DataTable Search_KhachHangTuKhoa(string _tuKhoa)
        {
            OpenConnect();
            DataTable data = new DataTable();
            string store = "KHACHHANG_TIMKIEM";
            sqlCommand = new SqlCommand(store, connect) { CommandType = CommandType.StoredProcedure };
            sqlCommand.Parameters.Add(new SqlParameter("@tukhoa",_tuKhoa));
           

            sqlAdapter = new SqlDataAdapter(sqlCommand);
            sqlAdapter.Fill(data);
            CloseConnect();
            return data;
        }

        public DataTable Load_DSKhachHang()
        {
            OpenConnect();
            DataTable data = new DataTable();
            string store = "KHACHHANG_LAYDS";
            sqlCommand = new SqlCommand(store, connect) { CommandType = CommandType.StoredProcedure };
          
            sqlAdapter = new SqlDataAdapter(sqlCommand);
            sqlAdapter.Fill(data);
            CloseConnect();
            return data;
        }

        public static bool Update_KhachHang(string _maKH, string _hoTen, string _diaChi, string _soDT)
        {
            throw new NotImplementedException();
        }
    }
    }


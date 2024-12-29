using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;

namespace BTLWebCoBan.DoiTuong
{
    public class SanPhamGioHang
    {
        private string sdtNguoiMua;
        private int IdSanPham;
        private string HinhAnh;
        private string Ten;
        private double Gia;
        private int SoLuong;
        public SanPhamGioHang() { }
        public SanPhamGioHang(int IdSanPham, string HinhAnh, string Ten, double Gia, int SoLuong, string sdtNguoiMua)
        {
            this.IdSanPham = IdSanPham;
            this.HinhAnh = HinhAnh;
            this.Ten = Ten;
            this.Gia = Gia;
            this.SoLuong = SoLuong;
            this.sdtNguoiMua = sdtNguoiMua;
        }
        public string sdt { get => sdtNguoiMua; set => sdtNguoiMua = value; }
        public string idSanPham { get => IdSanPham.ToString(); set => IdSanPham = Convert.ToInt32(value); }
        public string hinhAnh { get => HinhAnh; set => HinhAnh = value; }
        public string ten { get => Ten; set => Ten = value; }
        public double gia { get => Gia; set => Gia = value; }
        public int soLuong { get => SoLuong; set => SoLuong = value; }
}
}
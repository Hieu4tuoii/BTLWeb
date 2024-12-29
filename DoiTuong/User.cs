
namespace BTLWebCoBan.DoiTuong
{
    public class User
    {
        //tendangnhap, email, sdt, matkhau, quyen
        private string hoVaTen;
        private string sdt;
        private string matKhau;
        private bool isAdmin;
        private string ngaySinh;
        private string soThich;
        //getter setter, constructor
        public string HoVaTen { get => hoVaTen; set => hoVaTen = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }
        public bool IsAdmin { get => isAdmin; set => isAdmin = value; }
        public string NgaySinh { get => ngaySinh; set => ngaySinh = value; }
        public string SoThich { get => soThich; set => soThich = value; }
        public User() { }
        public User(string hoVaTen, string sdt, string matKhau, bool isAdmin, string ngaySinh, string soThich)
        {
            this.hoVaTen = hoVaTen;
            this.sdt = sdt;
            this.matKhau = matKhau;
            this.isAdmin = isAdmin;
            NgaySinh = ngaySinh;
            SoThich = soThich;
        }
    }
}
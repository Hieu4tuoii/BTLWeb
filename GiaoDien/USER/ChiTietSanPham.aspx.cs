using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;

namespace BTLWebCoBan.GiaoDien.USER
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        string idSPHienTai = "";
        // lấy ra ds sản phẩm trong application 
        List<SanPham> listSPTrongApplication;
        User user;
        SanPham sanPhamHienTai;
        protected void Page_Load(object sender, EventArgs e)
        {
            KiemtraDangNhap();
            // lấy id
            string id = Request.QueryString.Get("id");
            //lấy ra ds sản phẩm trong application
            listSPTrongApplication = (List<SanPham>)Application["listSanPham"];
            string tenDanhMuc = "";
            // lấy sản phầm cần tìm 
            foreach (SanPham sp in listSPTrongApplication)
            {
                if (id.Equals(sp.Id.ToString()))
                {
                    // gán giá trị cho các control
                    tensp.InnerHtml = sp.Ten;
                    giasp.InnerHtml = sp.Gia.ToString("#,### VNĐ");
                    gioithieu.InnerHtml = sp.MoTa;
                    tenDanhMuc += sp.TenDanhMuc;
                    idSPHienTai += sp.Id;
                    MainImg.Attributes["src"] = sp.HinhAnh;  // Thiết lập thuộc tính src
                    sanPhamHienTai = sp;
                }
            }
            //hiện các sản phẩm liên quan
            HienCacSanPhamLienQuan(tenDanhMuc);
        }

        //hiện các sản phẩm có cùng danh mục
        public void HienCacSanPhamLienQuan(string tenDanhMuc)
        {
            // lấy ra ds sản phẩm trong application 
            List<SanPham> listSPTrongApplication = (List<SanPham>)Application["listSanPham"];
            // lấy ra các sản phẩm liên quan
            string outputHTML = "";
            int count = 0;
            foreach (SanPham sp in listSPTrongApplication)
            {
                if (tenDanhMuc.Trim().Equals(sp.TenDanhMuc.ToString().Trim()) && !idSPHienTai.Equals(sp.Id.ToString()))
                {
                    outputHTML += $@"
                    <div class='sp_box' id='sp1'>
                       <a href='ChiTietSanPham.aspx?id={sp.Id}'>
                            <img class='sp_img' src='{sp.HinhAnh}' alt='sp1' />
                            <div class='sp_content'>
                                <span>{sp.TenDanhMuc}</span>
                                 <h4>{sp.Ten}</h4>
                                 <h3>{sp.Gia} VNĐ</h3>
                            </div>
                      </a>
                    <div class='cart'>
                      <svg style='height: 20px; width: 20px' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 576 512'>
                         <path d='M340.2 1c-3.9 2.1-5.3 7-3.2 10.8L434.6 192l-293.1 0L239 11.8c2.1-3.9 .7-8.7-3.2-10.8s-8.7-.7-10.8 3.2L123.2 192l-74.7 0L32 192 8 192c-4.4 0-8 3.6-8 8s3.6 8 8 8l28 0L99.9 463.5C107 492 132.6 512 162 512L414 512c29.4 0 55-20 62.1-48.5L540 208l28 0c4.4 0 8-3.6 8-8s-3.6-8-8-8l-24 0-16.5 0-74.7 0L351 4.2c-2.1-3.9-7-5.3-10.8-3.2zM52.5 208l471 0L460.6 459.6C455.3 481 436.1 496 414 496L162 496c-22 0-41.2-15-46.6-36.4L52.5 208zM208 296c0-4.4-3.6-8-8-8s-8 3.6-8 8l0 112c0 4.4 3.6 8 8 8s8-3.6 8-8l0-112zm80-8c-4.4 0-8 3.6-8 8l0 112c0 4.4 3.6 8 8 8s8-3.6 8-8l0-112c0-4.4-3.6-8-8-8zm96 8c0-4.4-3.6-8-8-8s-8 3.6-8 8l0 112c0 4.4 3.6 8 8 8s8-3.6 8-8l0-112z' />
                      </svg>
                     </div>
                    </div>";
                    count++;
                    if (count >= 4) break;
                }
            }
            SanPhamLienQuan.InnerHtml = outputHTML;
        }

        public void KiemtraDangNhap()
        {
            //lấy user từ trong session
            user = (User)Session["user"];
            //nếu user null thì hiện nút đăng nhập, nếu có user thì hiện tên user
            if (user != null)
            {
                btnDangNhap.Attributes["class"] += " hidden";//thêm class hidden để ẩn nút đăng nhập vì đã đăng nhập thành công
                tenNguoiDungDangNhap.InnerText = user.HoVaTen;
            }
            else
            {
                tenNguoiDungDangNhap.Attributes["class"] += " hidden";
                nutDangXuat.Attributes["class"] += " hidden";
            }
        }
        public void ThemVaoGioHang(object sender, EventArgs e)
        {
            //nếu chưa đăng nhập thì chuyển về trang đăng nhập
            if(user == null)
            {
                Response.Redirect("DangNhap.aspx");
                return;
            }
            //đã đăng nhập thì tiếp tục thực hiện hàm thêm vào giỏ hàng
            //duyệt các sản phẩm trong giỏ hàng ở application xem đã có san phẩm này chưa
            List<SanPhamGioHang> listSPGioHang = (List<SanPhamGioHang>)Application["DSGioHang"];
            foreach (SanPhamGioHang spGH in listSPGioHang)
            {
                //tìm xem sản phẩm đã có săn trong giỏ hàng hay chưa
                //nếu đã có sẵn thì tăng số lượng lên bằng với số lượng mình thêm vào
                if (spGH.idSanPham.Equals(idSPHienTai) && spGH.sdt.Equals(user.Sdt))
                {
                    spGH.soLuong += (Convert.ToInt32(soluong.Value));
                    return;
                }
            }
            //nếu duyệt hết ko thấy thì tạo mới sản phẩm và thêm vào giỏ hàng
            SanPhamGioHang spgh = new SanPhamGioHang(sanPhamHienTai.Id, sanPhamHienTai.HinhAnh, sanPhamHienTai.Ten, sanPhamHienTai.Gia, Convert.ToInt32(soluong.Value), user.Sdt);
            listSPGioHang.Add(spgh);
            Application["DSGioHang"] = listSPGioHang;
        }
    }
}
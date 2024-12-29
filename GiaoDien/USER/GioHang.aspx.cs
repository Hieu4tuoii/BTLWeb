using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebCoBan.GiaoDien.USER
{
    public partial class GioHang : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            KiemtraDangNhap();
            HienDsGioHang();
        }

        public void KiemtraDangNhap()
        {
            //lấy user từ trong session
            User userTrongSession = (User)Session["user"];
            //nếu user null thì hiện nút đăng nhập, nếu có user thì hiện tên user
            if (userTrongSession != null)
            {
                btnDangNhap.Attributes["class"] += " hidden";//thêm class hidden để ẩn nút đăng nhập vì đã đăng nhập thành công
                tenNguoiDungDangNhap.InnerText = userTrongSession.HoVaTen;
            }
            else
            {
                tenNguoiDungDangNhap.Attributes["class"] += " hidden";
                nutDangXuat.Attributes["class"] += " hidden";
            }
        }

        public void HienDsGioHang()
        {
            //lấy ra user từ session
            User user = (User)Session["user"];
            //nếu user null thì chuyển đến trang đăng nhập
            if (user == null)
            {
                Response.Redirect("DangNhap.aspx");
                return;
            }
            //lấy ra ds giỏ hàng từ application
            List<SanPhamGioHang> listSPGioHang = (List<SanPhamGioHang>)Application["DSGioHang"];
            //duyệt qua ds giỏ hàng và chỉ lấy những giỏ hàng có sdt người mua giống với sdst của tài khoản đang đăng nhập
            string outputHTML = "";
            double tongtien = 0;
            foreach (SanPhamGioHang spgh in listSPGioHang)
            {
                if (spgh.sdt.Equals(user.Sdt))
                {
                    //hiện sản phẩm
                    outputHTML +=
                                        "<tr>\r\n <td> "
                                        + $"<a href='XuLyHuyGioHang.aspx?id={spgh.idSanPham}&sdt={spgh.sdt}'>"
                                        + "<svg width=\"20%\" height=\"20%\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z\"/></svg>'"
                                        + "</a></td>\r\n"
                                        + "<td><img src=\""
                                        + spgh.hinhAnh + "\" alt=\"anh-sp\"></td>\r\n<td>"
                                        + spgh.ten
                                        + "</td>\r\n"
                                        + " <td class='change-quantity space'>"
                                         + $" <a href = 'XuLyGiamGioHang.aspx?id={spgh.idSanPham}&sdt={user.Sdt}'>"
                                         + " <svg width=\"15%\" height=\"15%\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M432 256c0 17.7-14.3 32-32 32L48 288c-17.7 0-32-14.3-32-32s14.3-32 32-32l352 0c17.7 0 32 14.3 32 32z\"/></svg> "
                                         + " </a>"
                                         + $" <span id = 'text_quantity' > {spgh.soLuong} </span> "
                                         + $" <a href = 'XuLyTangGioHang.aspx?id={spgh.idSanPham}&sdt={user.Sdt}'>"
                                         + " <svg width=\"15%\" height=\"15%\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d=\"M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 144L48 224c-17.7 0-32 14.3-32 32s14.3 32 32 32l144 0 0 144c0 17.7 14.3 32 32 32s32-14.3 32-32l0-144 144 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l-144 0 0-144z\"/></svg>"
                                         + " </a>"
                                         + " </td>"
                                        + "<td>"
                                        + spgh.gia.ToString("#,### VNĐ")
                                        + "</td>\r\n"
                                        + "<td>"
                                        + (spgh.soLuong * spgh.gia).ToString("#,### VNĐ")
                                        + "</td>\r\n</tr>\r\n";
                    //tăng tổng tiền
                    tongtien = spgh.gia * spgh.soLuong;
                }
            }
            bodySanPham.InnerHtml = outputHTML;
            //set lại giá trị tổng tiền
            tongtienhang.InnerText = tongtien.ToString("#,### VNĐ");
            tongthanhtoan.InnerText = tongtien.ToString("#,### VNĐ");
        }
    }
}
using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;

namespace BTLWebCoBan.GiaoDien.ADMIN
{
    public partial class CapNhatSp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lấy giá trị id từ url
            string id = Request.QueryString.Get("id");
            //nếu ispostback thì là cập nhật sản phẩm
            if (IsPostBack)
            {
                CapNhatSanPham(id);
            }
            //nếu chỉ là truy cập trang lần đầu thì lấy ra thông tin sản phẩm cần update
            else
            {
                LayThongTinSanPhamCapNhat(id);
            }

        }

        public void LayThongTinSanPhamCapNhat(string id)
        {
            //lấy ra list sản phẩm ở trong application
            List<SanPham> dsSanPhamTrongApplication = (List<SanPham>)Application["listSanPham"];
            //duyet forech để lấy ra sản phẩm cần cập nhật
            foreach (SanPham sp in dsSanPhamTrongApplication)
            {
                if (id.Equals(sp.Id.ToString()))
                {
                    //gán giá trị cho các control
                    tenSanPhamInput.Value = sp.Ten;
                    moTaSanPhamInput.Value = sp.MoTa;
                    giaSanPhamInput.Value = Convert.ToInt32(sp.Gia).ToString();
                    if (sp.TenDanhMuc.Equals("#EarBuds"))
                    {
                        danhMucSanPhamSelect.SelectedIndex = 0;
                    }
                    else if (sp.TenDanhMuc.Equals("#HeadPhones"))
                    {
                        danhMucSanPhamSelect.SelectedIndex = 1;
                    }
                    if (sp.TenDanhMuc.Equals("#Accessory"))
                    {
                        danhMucSanPhamSelect.SelectedIndex = 2;
                    }
                    //gán đường dẫn hình ảnh
                    urlAnhUpLoad.InnerHtml = sp.HinhAnh;
                    break;
                }
            }
        }

        public void CapNhatSanPham(string idSanPhamCapNhat)
        {
            //duyệt vòng for để lấy ra sản phẩm cần cập nhật
            List<SanPham> dsSanPhamTrongApplication = (List<SanPham>)Application["listSanPham"];
            foreach (SanPham sp in dsSanPhamTrongApplication)
            {
                if (idSanPhamCapNhat.Equals(sp.Id.ToString()))
                {
                    //gán lại giá trị cho sp từ form từ phương thức post
                    sp.Ten = Request.Form.Get("tenSanPhamInput");
                    sp.MoTa = Request.Form.Get("moTaSanPhamInput");
                    sp.Gia = Convert.ToInt32(Request.Form.Get("giaSanPhamInput"));
                    sp.TenDanhMuc = Request.Form.Get("danhMucSanPhamSelect");
                    sp.HinhAnh = Request.Form.Get("urlAnhUpLoad");
                    break;
                }
            }
            //cập nhật lại list sản phẩm trong application
            Application["listSanPham"] = dsSanPhamTrongApplication;
            //sau khi cập nhật thành công thì chuyển hướng đến trang Admin
            Response.Redirect("Admin.aspx");
        }
    }
}
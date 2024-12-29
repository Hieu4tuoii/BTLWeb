using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebCoBan.GiaoDien.USER
{
    public partial class XuLyTangGioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<SanPhamGioHang> listGH = (List<SanPhamGioHang>)Application["DSGioHang"];
            //get id from gioHang
            string id = Request.QueryString["id"];
            //get user from session
            string sdt = Request.QueryString["sdt"];
            foreach (SanPhamGioHang sp in listGH)
            {
                if (sp.idSanPham == id && sdt.Equals(sp.sdt))
                {
                    sp.soLuong++;
                }
            }
            //update listGH trong application
            Application["DSGioHang"] = listGH;
            Response.Redirect("GioHang.aspx");
        }
    }
}
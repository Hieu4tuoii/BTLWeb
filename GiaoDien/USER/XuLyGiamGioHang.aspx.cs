using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;


namespace BTLWebCoBan.GiaoDien.USER
{
    public partial class XuLyGiamGioHang : System.Web.UI.Page
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
                if (sp.idSanPham == id && sdt.Equals(sp.sdt) )
                {
                   sp.soLuong--;
                    if (sp.soLuong == 0)
                    {
                        listGH.Remove(sp);
                    }
                    break;
                }
            }
            //update listGH trong application
            Application["DSGioHang"] = listGH;
            Response.Redirect("GioHang.aspx");
        }
    }
}
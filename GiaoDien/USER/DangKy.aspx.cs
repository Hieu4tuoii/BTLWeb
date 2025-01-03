﻿using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebCoBan.GiaoDien.USER
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //lấy thông tin ra từ form
                string hoVaTen = Request.Form.Get("txtHoVaTen");
                string sdt = Request.Form.Get("sdt");
                string matKhau = Request.Form.Get("txtmatkhau");
                string ngaySinh = Request.Form.Get("ngaySinh");
                string soThich = Request.Form.Get("hobbies");
                //new ra user mới
                User newUser = new User(hoVaTen, sdt, matKhau, false, ngaySinh, soThich);
                //them user vao application
                List<User> dsUserTrongApplication = (List<User>)Application["listUsers"];
                dsUserTrongApplication.Add(newUser);
                Response.Redirect("DangNhap.aspx");
            }
        }
    }
}
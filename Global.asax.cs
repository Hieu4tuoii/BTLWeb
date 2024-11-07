using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
namespace BTLWebCoBan
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //list sản phẩm lưu trong application
            List<SanPham> listSanPham = new List<SanPham>();
            listSanPham.Add(new SanPham(1, "Iphone 12", "Điện thoại Iphone 12", 20000000, ".//.iphone12.jpg", "Tai nghe có dây"));
            listSanPham.Add(new SanPham(2, "Samsung Galaxy S21", "Điện thoại Samsung Galaxy S21", 15000000, "samsungs21.jpg", "Tai nghe không dây"));
            listSanPham.Add(new SanPham(3, "Macbook Pro 2020", "Laptop Macbook Pro 2020", 30000000, "macbookpro2020.jpg", "Tai nghe chống ồn"));
            listSanPham.Add(new SanPham(4, "Dell XPS 13", "Laptop Dell XPS 13", 25000000, "dellxps13.jpg", "Tai nghe chống ồn"));
            //lưu
            Application["listSanPham"] = listSanPham;

            //list user
            List<User> listUser = new List<User>();
            //them sẵn 1 tk user 1 tk admin
            listUser.Add(new User("admin", "1234567890", "admin", true));
            listUser.Add(new User("Trần Minh Hiếu", "0348921209", "tranminhhieu", false));
            Application["listUsers"] = listUser;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            //tạo session lưu trữ  user đang đăng nhập
            Session["user"] = null;
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
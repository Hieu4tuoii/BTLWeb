using BTLWebCoBan.DoiTuong;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebCoBan.GiaoDien.ADMIN
{
    public partial class DSUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //     //tendangnhap, email, sdt, matkhau, quyen
            //private string hoVaTen;
            //private string sdt;
            //private string matKhau;
            //private bool isAdmin;
            //private string ngaySinh;
            //private string soThich;
            //lấy sản phẩm từ application
            //lấy sản phẩm từ application
            List<User> listUser = (List<User>)Application["listUsers"];
            string outputHtml = @"
                <table>
                    <thead>
                        <tr>
                            <th>Họ và tên</th>
                            <th>Số điện thọại</th>
                            <th>Ngày sinh</th>
                            <th>Sở thích</th>
                        </tr>
                    </thead>
                    <tbody>";
            // Dùng vòng lặp foreach để hiển thị từng sản phẩm
            foreach (User user in listUser)
            {
                outputHtml += $@"
                        <tr>
                            <td>{user.HoVaTen}</td>
                            <td>{user.Sdt}</td>
                            <td>{user.NgaySinh}</td>
                            <td>{user.SoThich}</td>
                        </tr>";
            }
            // Kết thúc HTML cho bảng
            outputHtml += @"
                    </tbody>
                </table>";
            tableUser.InnerHtml = outputHtml;
        }
    }
}
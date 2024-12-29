<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimKiemSanPham.aspx.cs" Inherits="BTLWebCoBan.GiaoDien.USER.TimKiemSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tìm kiếm sản phẩm</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../../Assets/CSS/TimKiemSanPham.css" rel="stylesheet" />
        <link href="../../Assets/CSS/Index.css" rel="stylesheet" />
</head>
<body>
   <header class="header">
    <div class="logo">
        <img src="../../Assets/LOGO/SUhouse.png" alt="logo" class="logo"/>
    </div>
    <div class="menu">
         <ul id="navbar">
     <li><a href="TrangChu.aspx">Trang chủ</a></li>
     <li><a href="DanhMucSanPham.aspx">Sản phẩm</a></li>
     <li><a href="TrangChu.aspx">Về chúng tôi</a></li>
     <li><a href="#">Blog</a></li>
     <li><a href="#">Liên hệ</a></li>
 </ul>
    </div>
    <div class="search">
        <div class="search-bar">
           <form  method="get" action="TimKiemSanPham.aspx"> 
            <input id="search" name="search" runat="server"  placeholder="Tìm kiếm sản phẩm..." type="text"/>
            <button id="ButtonSearch" class="btnSearch">Tìm kiếm</button>
      </form>
        </div> 
    </div>
    <div id="user">
        <div class="avatar">
           <a href="DangNhap.aspx" id="btnDangNhap" name="btnDangNhap" class="btnDangNhap" runat="server">Đăng nhập</a>
          <span runat="server" id="tenNguoiDungDangNhap"></span>
            <a runat="server" style="color: red; text-decoration: underline" id="nutDangXuat" href="XuLyDangXuat.aspx">Thoát</a>
        </div>
        <div class="cart_icon">
            <a href="GioHang.aspx"><svg style="width: 20px; height: 20px;"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path
                        d="M0 24C0 10.7 10.7 0 24 0L69.5 0c22 0 41.5 12.8 50.6 32l411 0c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3l-288.5 0 5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5L488 336c13.3 0 24 10.7 24 24s-10.7 24-24 24l-288.3 0c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5L24 48C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z" /></svg></a>
        </div>
    </div>
</header>

    <%--SẢN PHẨM tìm kiếm--%>
<section id="product1" class="section_1" runat="server">
        
</section>
</body>
</html>

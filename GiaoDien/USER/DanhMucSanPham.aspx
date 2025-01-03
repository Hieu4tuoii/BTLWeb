﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhMucSanPham.aspx.cs" Inherits="BTLWebCoBan.GiaoDien.USER.DanhMucSanPham" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Danh Mục Sản Phẩm</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../Assets/CSS/DanhMucSanPham.css" />
     <link rel="stylesheet" href="../../Assets/CSS/Index.css" />
</head>
<body>
     <%---------------------------------------------HEADER----------------------------------------------------------%>
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
            <input id="search" name="search"  placeholder="Tìm kiếm sản phẩm..." type="text"/>
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
        <div class="cart_icon" onclick="location.href = 'Giohang.aspx';">
            <a href="GioHang.aspx"><svg style="width: 20px; height: 20px;"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path
                        d="M0 24C0 10.7 10.7 0 24 0L69.5 0c22 0 41.5 12.8 50.6 32l411 0c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3l-288.5 0 5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5L488 336c13.3 0 24 10.7 24 24s-10.7 24-24 24l-288.3 0c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5L24 48C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z" /></svg></a>
        </div>
    </div>
</header>
    <%--danh sách các danh mục--%>
    <div class="category-list">
      <h2 class="category-list__title">DANH MỤC SẢN PHẨM</h2>
      <div class="category-list__buttons">
        <div class="category-list__buttons-inner">
          <a href="DanhMucSanPham.aspx?danh-muc=EarBuds" id="danhMucTaiNgheCoDay" runat="server" class="category-list__button">
            Tai nghe có dây
          </a>
          <a href="DanhMucSanPham.aspx?danh-muc=HeadPhones" id="danhMucTaiNgheKhongDay" runat="server"  class="category-list__button">Tai nghe không dây</a>
          <a href="DanhMucSanPham.aspx?danh-muc=Accessory" id="phuKienTaiNghe" runat="server"  class="category-list__button">Phụ kiên tai nghe</a>
        </div>
      </div>
    </div>
    <%--Danh mục đang chọn--%>
    <div class="category">
      <h1 class="category__title" id="danhMucDangChon" runat="server"></h1>
      <p class="category__description" id="moTaDanhMucDangChon" runat="server"> 
       
      </p>
    </div>
    <%--danh sách sản phẩm theo danh mục--%>
    <section id="product1" class="section_1">
      <div class="big_container" id="listsanPhamTheoDanhMuc" runat="server">

        
      </div>
    </section>
    <%--footer--%>
    <%--<footer id="my_footer">
        <div class="col">
            <img class="logo" src="../Tainguyen/SUhouse.png" alt="logo">
            <h4>© Copyright 2024 | SuHouse Shop | All Rights Reserved</h4>
            <p>
                Mua tai nghe cao cấp, phụ kiện cho tai nghe,
                tai nghe Huawei, Xiaomi, Apple, Marshall,
                Sony, Samsung, JBL, Sennheiser, Bose, Skullcandy...
            </p>
            <div class="follow">
                <div class="icon">
                    <a class="ins"><svg style="height: 30px; width: 30px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M194.4 211.7a53.3 53.3 0 1 0 59.3 88.7 53.3 53.3 0 1 0 -59.3-88.7zm142.3-68.4c-5.2-5.2-11.5-9.3-18.4-12c-18.1-7.1-57.6-6.8-83.1-6.5c-4.1 0-7.9 .1-11.2 .1c-3.3 0-7.2 0-11.4-.1c-25.5-.3-64.8-.7-82.9 6.5c-6.9 2.7-13.1 6.8-18.4 12s-9.3 11.5-12 18.4c-7.1 18.1-6.7 57.7-6.5 83.2c0 4.1 .1 7.9 .1 11.1s0 7-.1 11.1c-.2 25.5-.6 65.1 6.5 83.2c2.7 6.9 6.8 13.1 12 18.4s11.5 9.3 18.4 12c18.1 7.1 57.6 6.8 83.1 6.5c4.1 0 7.9-.1 11.2-.1c3.3 0 7.2 0 11.4 .1c25.5 .3 64.8 .7 82.9-6.5c6.9-2.7 13.1-6.8 18.4-12s9.3-11.5 12-18.4c7.2-18 6.8-57.4 6.5-83c0-4.2-.1-8.1-.1-11.4s0-7.1 .1-11.4c.3-25.5 .7-64.9-6.5-83l0 0c-2.7-6.9-6.8-13.1-12-18.4zm-67.1 44.5A82 82 0 1 1 178.4 324.2a82 82 0 1 1 91.1-136.4zm29.2-1.3c-3.1-2.1-5.6-5.1-7.1-8.6s-1.8-7.3-1.1-11.1s2.6-7.1 5.2-9.8s6.1-4.5 9.8-5.2s7.6-.4 11.1 1.1s6.5 3.9 8.6 7s3.2 6.8 3.2 10.6c0 2.5-.5 5-1.4 7.3s-2.4 4.4-4.1 6.2s-3.9 3.2-6.2 4.2s-4.8 1.5-7.3 1.5l0 0c-3.8 0-7.5-1.1-10.6-3.2zM448 96c0-35.3-28.7-64-64-64H64C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H384c35.3 0 64-28.7 64-64V96zM357 389c-18.7 18.7-41.4 24.6-67 25.9c-26.4 1.5-105.6 1.5-132 0c-25.6-1.3-48.3-7.2-67-25.9s-24.6-41.4-25.8-67c-1.5-26.4-1.5-105.6 0-132c1.3-25.6 7.1-48.3 25.8-67s41.5-24.6 67-25.8c26.4-1.5 105.6-1.5 132 0c25.6 1.3 48.3 7.1 67 25.8s24.6 41.4 25.8 67c1.5 26.3 1.5 105.4 0 131.9c-1.3 25.6-7.1 48.3-25.8 67z"/></svg></a>
                    <a class="fb"><svg style="height: 30px; width: 30px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64h98.2V334.2H109.4V256h52.8V222.3c0-87.1 39.4-127.5 125-127.5c16.2 0 44.2 3.2 55.7 6.4V172c-6-.6-16.5-1-29.6-1c-42 0-58.2 15.9-58.2 57.2V256h83.6l-14.4 78.2H255V480H384c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64z"/></svg></a>
                    <a class="tiktok"><svg style="height: 30px; width: 30px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M448 209.9a210.1 210.1 0 0 1 -122.8-39.3V349.4A162.6 162.6 0 1 1 185 188.3V278.2a74.6 74.6 0 1 0 52.2 71.2V0l88 0a121.2 121.2 0 0 0 1.9 22.2h0A122.2 122.2 0 0 0 381 102.4a121.4 121.4 0 0 0 67 20.1z"/></svg></a>
                    <a class="yt"><svg style="height: 30px; width: 30px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M282 256.2l-95.2-54.1V310.3L282 256.2zM384 32H64C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H384c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64zm14.4 136.1c7.6 28.6 7.6 88.2 7.6 88.2s0 59.6-7.6 88.1c-4.2 15.8-16.5 27.7-32.2 31.9C337.9 384 224 384 224 384s-113.9 0-142.2-7.6c-15.7-4.2-28-16.1-32.2-31.9C42 315.9 42 256.3 42 256.3s0-59.7 7.6-88.2c4.2-15.8 16.5-28.2 32.2-32.4C110.1 128 224 128 224 128s113.9 0 142.2 7.7c15.7 4.2 28 16.6 32.2 32.4z"/></svg></a>
                </div>
            </div>
        </div>

        <div class="col link">
            <h4>Đường dẫn</h4>
            <a href="#">Trang chủ</a>
            <a href="#">Sản phẩm</a>
            <a href="#">Về chúng tôi</a>
            <a href="#">Blog</a>
            <a href="#">Liên hệ</a>
        </div>

        <div class="col contact">
            <h4>Thông tin liên hệ</h4>
            <a href="#">+84 834 201 999</a>
            <a href="#">
                Ngõ 41 Đông Tác, Kim Liên, Đống Đa,</br> Hà Nội
            </a>
            <a href="#">suhouseshop123@gmail.com</a>
        </div>

        <div class="col install">
            <h4>Install App</h4>
            <p>From Appstore & Google Play</p>
            <div style="display: flex;" class="row">
                <img style="width: 100px; height: 25px; object-fit: cover; scale: 1.5;" src="../Tainguyen/2.png" alt="appstore">
                <img  style="width: 100px; height: 25px; object-fit: cover; scale: 1.5" src="../Tainguyen/3.png" alt="googlePlay">
            </div>
            <p>Secured Payment Gateways</p>
            <img src="../Tainguyen/payment.png" alt="">
        </div>
    </footer>--%>
</body>
</html>

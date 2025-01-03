﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTLWebCoBan.GiaoDien.USER.TrangChu" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Chủ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../../Assets/CSS/TrangChu.css" rel="stylesheet" />
        <link href="../../Assets/CSS/Index.css" rel="stylesheet" />
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
                <div class="cart_icon">
                    <a href="GioHang.aspx"><svg style="width: 20px; height: 20px;"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path
                                d="M0 24C0 10.7 10.7 0 24 0L69.5 0c22 0 41.5 12.8 50.6 32l411 0c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3l-288.5 0 5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5L488 336c13.3 0 24 10.7 24 24s-10.7 24-24 24l-288.3 0c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5L24 48C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z" /></svg></a>
                </div>
            </div>
        </header>
        <%---------------------------------------------SLIDE SHOW---------------------------------------------%>
         <section class="slide">
            <div class="slide_content">
                <h3>RELEASE DATE & PRICE</h3>
                <h1>MEIZU M6 NOTE</h1>
                <h4>ĐẶT HÀNG NGAY</h4>
            </div>
        </section>
        <%--SẢN PHẨM tai nghe MỚI--%>
        <section id="product1" class="section_1" runat="server">
        </section>
        <section class="center_button">
            <button class="custom_button">XEM TẤT CẢ . SẢN PHẨM MỚI</button>
        </section>
        <%---------------------------------------------BỘ SƯU TẬP TAI NGHE CAO CẤP---------------------------------------------%>
        <section id="product2" class="section_1" runat="server">
            
        </section>
        <section class="center_button">
            <button class="custom_button">XEM TẤT CẢ . BỘ SƯU TẬP TAI NGHE CAO CẤP</button>
        </section>
        <%---------------------------------------------BANNER QUẢNG CÁO---------------------------------------------%>
        <section id="sm_banner" class="section_p1">
            <div class="banner_box">
                <h4>AIRPODS PRO 3</h4>
                <h1>RELEASE DATE & PRICE</h1>
                <button class="white">ĐẶT HÀNG NGAY</button>
            </div>
        </section>
        <%---------------------------------------------PHỤ KIỆN CHO TAI NGHE---------------------------------------------%>
        <section id="product3" class="section_1" runat="server">
            
        </section>
        <section class="center_button">
            <button class="custom_button">XEM TẤT CẢ . PHỤ KIỆN CHO TAI NGHE</button>
        </section>
        <%---------------------------------------------CÁC DỊCH VỤ GIÚP BẠN MUA SẮM---------------------------------------------%>
        <section id="service">
            <h1>CÁC DỊCH VỤ <strong>GIÚP BẠN MUA SẮM</strong></h1>
            <div class="big_container">
                <div class="sp_box">
                    <div class="sp_content">
                        <h3>FREE SHIPPING</h3>
                        <p>Miễn phí giao hàng cho các hóa đơn từ 1.000.000đ</p>
                        <a><svg style="height: 40px; width: 40px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M112 0C85.5 0 64 21.5 64 48l0 48L16 96c-8.8 0-16 7.2-16 16s7.2 16 16 16l48 0 208 0c8.8 0 16 7.2 16 16s-7.2 16-16 16L64 160l-16 0c-8.8 0-16 7.2-16 16s7.2 16 16 16l16 0 176 0c8.8 0 16 7.2 16 16s-7.2 16-16 16L64 224l-48 0c-8.8 0-16 7.2-16 16s7.2 16 16 16l48 0 144 0c8.8 0 16 7.2 16 16s-7.2 16-16 16L64 288l0 128c0 53 43 96 96 96s96-43 96-96l128 0c0 53 43 96 96 96s96-43 96-96l32 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l0-64 0-32 0-18.7c0-17-6.7-33.3-18.7-45.3L512 114.7c-12-12-28.3-18.7-45.3-18.7L416 96l0-48c0-26.5-21.5-48-48-48L112 0zM544 237.3l0 18.7-128 0 0-96 50.7 0L544 237.3zM160 368a48 48 0 1 1 0 96 48 48 0 1 1 0-96zm272 48a48 48 0 1 1 96 0 48 48 0 1 1 -96 0z"/></svg></a>
                    </div>
                </div>

                <div class="sp_box">
                    <div class="sp_content">
                        <h3>ONLINE SUPPORT 24/7</h3>
                        <p>Hỗ trợ khách hàng 24/7 . Hãy gọi cho chúng tôi</p>
                        <a><svg style="height: 40px; width: 40px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 80C149.9 80 62.4 159.4 49.6 262c9.4-3.8 19.6-6 30.4-6c26.5 0 48 21.5 48 48l0 128c0 26.5-21.5 48-48 48c-44.2 0-80-35.8-80-80l0-16 0-48 0-48C0 146.6 114.6 32 256 32s256 114.6 256 256l0 48 0 48 0 16c0 44.2-35.8 80-80 80c-26.5 0-48-21.5-48-48l0-128c0-26.5 21.5-48 48-48c10.8 0 21 2.1 30.4 6C449.6 159.4 362.1 80 256 80z"/></svg></a>
                    </div>
                </div>

                <div class="sp_box">
                    <div class="sp_content">
                        <h3>ACCEPT PAYMENT</h3>
                        <p>Miễn phí vận chuyển khi thanh toán qua thẻ Visa</p>
                        <a><svg style="height: 40px; width: 40px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M470.1 231.3s7.6 37.2 9.3 45H446c3.3-8.9 16-43.5 16-43.5-.2 .3 3.3-9.1 5.3-14.9l2.8 13.4zM576 80v352c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V80c0-26.5 21.5-48 48-48h480c26.5 0 48 21.5 48 48zM152.5 331.2L215.7 176h-42.5l-39.3 106-4.3-21.5-14-71.4c-2.3-9.9-9.4-12.7-18.2-13.1H32.7l-.7 3.1c15.8 4 29.9 9.8 42.2 17.1l35.8 135h42.5zm94.4 .2L272.1 176h-40.2l-25.1 155.4h40.1zm139.9-50.8c.2-17.7-10.6-31.2-33.7-42.3-14.1-7.1-22.7-11.9-22.7-19.2 .2-6.6 7.3-13.4 23.1-13.4 13.1-.3 22.7 2.8 29.9 5.9l3.6 1.7 5.5-33.6c-7.9-3.1-20.5-6.6-36-6.6-39.7 0-67.6 21.2-67.8 51.4-.3 22.3 20 34.7 35.2 42.2 15.5 7.6 20.8 12.6 20.8 19.3-.2 10.4-12.6 15.2-24.1 15.2-16 0-24.6-2.5-37.7-8.3l-5.3-2.5-5.6 34.9c9.4 4.3 26.8 8.1 44.8 8.3 42.2 .1 69.7-20.8 70-53zM528 331.4L495.6 176h-31.1c-9.6 0-16.9 2.8-21 12.9l-59.7 142.5H426s6.9-19.2 8.4-23.3H486c1.2 5.5 4.8 23.3 4.8 23.3H528z"/></svg></a>
                    </div>
                </div>
            </div>
        </section>
        <%---------------------------------------------BLOG CÔNG NGHỆ---------------------------------------------%>
        <section id="product1">
            <h1>BLOG <strong>CÔNG NGHỆ</strong></h1>
            <p>Những bài viết mới nhất về các hãng tai nghe nổi tiếng</p>
            <div class="blog_container">
                <div class="blog_box">
                    <img src="../../Assets/HinhAnh/buds3.jpg" alt="blog1"/>
                    <div class="blog_content">
                        <span>12/10/2024</span>
                        <h4>HƯỚNG DẪN SỬ DỤNG TAI NGHE XIOAMI BUDS 3</h4>
                        <p>Đây là hướng dẫn sử dụng tai nghe Xiaomi Buds 3 mới nhất mà bạn có thể quan tâm...</p>
                    </div>
                </div>
                <div class="blog_box">
                    <img src="../../Assets/HinhAnh/galaxybud2pro.jpg" alt="blog2"/>
                    <div class="blog_content">
                        <span>11/10/2023</span>
                        <h4>SAMSUNG GALAXY BUDS 2 PRO GIÁ CHỈ TỪ 5 TRIỆU ĐỒNG </h4>
                        <p>Một trong những tai nghe nhỏ gọn nhất hiện nay, hỗ trợ chống nước chuẩn IPX7. Sản phẩm chống ồn chủ động thông minh...</p>
                    </div>
                </div>
                <div class="blog_box">
                    <img src="../../Assets/HinhAnh/sonyLinkBuds.jpg" alt="blog3"/>
                    <div class="blog_content">
                        <span>10/6/2024</span>
                        <h4>Sony Linkbuds S ĐỐI THỦ CỦA GALAXY BUDS 2 PRO</h4>
                        <p>LinkBuds S kết hợp giữa sự nhỏ gọn, cảm giác đeo thoải mái của dòng LinkBuds và một số tính năng cao cấp của WF-1000XM4...</p>
                    </div>
                </div>
            </div>
        </section>
        <%---------------------------------------------FOOTER---------------------------------------------%>
       <%--  <footer id="my_footer">
            <div class="col">
                <img class="logo" src="../../Assets/LOGO/SUhouse.png" alt="logo"/>
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
                    <img  src="../../Assets/HinhAnh/AppStore.png" alt="appstore"/>
                    <img  src="../../Assets/HinhAnh/GGPlay.png" alt="googlePlay"/>
                </div>
                <p>Secured Payment Gateways</p>
                <img src="../../Assets/HinhAnh/payment.png" alt=""/>
            </div>
        </footer>--%>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BTLWebCoBan.GiaoDien.Admin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản lý sản phẩm</title>
    <link rel="stylesheet" href="../../Assets/CSS/Admin.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <div class="container">
      <h1>Danh sách sản phẩm</h1>
      <p>Quản lý danh sách sản phẩm của bạn</p>
        <a href="ThemSP.aspx" class="btn_Add">+ Thêm</a>
      <div class="search-bar">
        <input type="text" placeholder="Search..." />
      </div>
        <div id="tableSanPham" runat="server">
        </div>
    </div>
</body>
</html>

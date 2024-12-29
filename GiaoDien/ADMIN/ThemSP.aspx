<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="BTLWebCoBan.GiaoDien.ThemSP" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="../../Assets/CSS/ThemVaCapNhatSanPham.css" rel="stylesheet" />
</head>
<body>
            <div class="formThemSanPham">
    <h1>Thêm sản phẩm</h1>
    <form runat="server" method="post">
        <div>
            <label for="tenSanPhamInput">Tên</label>
            <input placeholder="Tên sản phẩm" id="tenSanPhamInput" name="tenSanPhamInput" type="text"required/>
        </div>
        <div>
            <label for="moTaSanPhamInput">Mô tả</label>
            <input placeholder="Mô tả sản phẩm" id="moTaSanPhamInput" name="moTaSanPhamInput" type="text" required/>
        </div>
        <div>
            <label for="giaSanPhamInput">Giá</label>
            <input placeholder="Giá sản phẩm" id="giaSanPhamInput" name="giaSanPhamInput" type="number" value="0" required/>
        </div>
        <div>
            <label for="hinhAnhSanPhamInput">Hình ảnh</label>
             <asp:FileUpload runat="server" type="file" ID="hinhAnhSanPhamInput" name="hinhAnhSanPhamInput" required/>
        </div>
    <div>
       <label for="danhMucSanPhamSelect">Danh mục</label>
       <select name="danhMucSanPhamSelect" id="danhMucSanPhamSelect">
    <option value="#EarBuds">#EarBuds</option>
    <option value="#HeadPhones">#HeadPhones</option>
    <option value="#Accessory">#Accessory</option>
</select>
    </div>
    <button type="submit" class="buttonSubmitForm">Thêm ngay</button>
    </form>
</div>
</body>
</html>

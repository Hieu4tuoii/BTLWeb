<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BTLWebCoBan.GiaoDien.USER.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
      <link rel="stylesheet" href="../../Assets/CSS/DangNhap_DangKy.css">
</head>
<body>
    <script>
        function check() {
            var hoVaTen = document.getElementById("txtHoVaTen").value;
            var sdt = document.getElementById("sdt").value;
            var matkhau = document.getElementById("txtmatkhau").value;
            var rmatkhau = document.getElementById("txtrmatkhau").value;
            var hobbies = document.getElementById("hobbies");
            var selectedHobbies = Array.from(hobbies.selectedOptions).map(option => option.value);

            var errorHoVaTen = document.getElementById("errorHoVaTen");
            var errornumber = document.getElementById("errornumber");
            var errormatkhau = document.getElementById("errormatkhau");
            var errormatkhauNhapLai = document.getElementById("errormatkhauNhapLai");
            var errorHobbies = document.getElementById("errorHobbies");
            var ngaySinh = document.getElementById("ngaySinh").value;
            var errrorNgaySinh = document.getElementById("errorNgaySinh");

            var check = true;

            // Kiểm tra họ và tên
            if (hoVaTen == "") {
                errorHoVaTen.innerHTML = "Họ và tên không được để trống!";
                check = false;
            } else {
                errorHoVaTen.innerHTML = "";
            }

            // Kiểm tra số điện thoại
            if (sdt == "") {
                errornumber.innerHTML = "Số điện thoại không được để trống!";
                check = false;
            } else {
                errornumber.innerHTML = "";
            }

            // Kiểm tra mật khẩu
            if (matkhau == "") {
                errormatkhau.innerHTML = "Mật khẩu không được để trống!";
                check = false;
            } else {
                errormatkhau.innerHTML = "";
            }

            // Kiểm tra xác nhận mật khẩu
            if (rmatkhau == "") {
                errormatkhauNhapLai.innerHTML = "Mật khẩu không được để trống!";
                check = false;
            } else if (matkhau != rmatkhau) {
                errormatkhauNhapLai.innerHTML = "Mật khẩu không trùng khớp!";
                check = false;
            } else {
                errormatkhauNhapLai.innerHTML = "";
            }

            //kiểm tra ngay sinh bỏ trống
            if (ngaySinh.length <= 0) {
                errrorNgaySinh.innerHTML = "Ngay sinh không được bỏ trống";
                check = false;
            } else {
                errrorNgaySinh.innerHTML = "";

            }

            // Kiểm tra số lượng sở thích được chọn
            if (selectedHobbies.length < 1 || selectedHobbies.length > 3) {
                errorHobbies.innerHTML = "Bạn chỉ được chọn từ 1 đến 3 sở thích!";
                check = false;
            } else {
                errorHobbies.innerHTML = "";
            }
            return check;
        }
    </script>
   <form runat="server" id="formdangky" class="form" method="post" onsubmit="return check()">
        <div class="form-title">
            <!-- <a href="SignIn.html"><i class="uil uil-arrow-left"></i></a> -->
            <p><span class="Dangkitaikhoan">Đăng ký</span> tài khoản!</p>
        </div>
        <div class="input-container">
            <p class="input-title">Họ và tên</p>
            <input type="text" placeholder="Nhập họ và tên" id="txtHoVaTen" name="txtHoVaTen" />
            <div id="errorHoVaTen" name="errorHoVaTen" class="alert"></div>
        </div>
        <div class="input-container">
            <p class="input-title">Số điện thoại</p>
            <input type="tel" placeholder="Nhập số điện thoại" id="sdt" name="sdt" maxlength="11" title="Ten digits code" "/>
            <div id="errornumber" name="errornumber" class="alert"></div>
        </div>
              <div class="input-container">
<p class="input-title">Ngày sinh</p>
<input id="ngaySinh" placeholder="dd/MM/yyyy" name="ngaySinh"/>
                  <div id="errorNgaySinh" name="errorNgaySinh" class="alert"></div>
<label for="hobbies">Chọn sở thích (1-3):</label><br>
<select id="hobbies" name="hobbies" multiple size="5">
    <option value="Thể thao">Thể thao</option>
    <option value="Âm nhạc">Âm nhạc</option>
    <option value="Đọc sách">Đọc sách</option>
    <option value="Du lịch">Du lịch</option>
</select>
<div id="errorHobbies" class="alert"></div>

                  


    <div id="errornumber" name="errornumber" class="alert"></div>
</div>
    
        <div class="input-container">
            <p class="input-title">Mật khẩu</p>
            <input type="password" placeholder="Nhập mật khẩu" id="txtmatkhau" name="txtmatkhau" />
            <div id="errormatkhau" name="errormatkhau" class="alert"></div>
        </div>
        <div class="input-container">
            <p class="input-title">Xác nhận mật khẩu</p>
            <input type="password" placeholder="Nhập mật khẩu" id="txtrmatkhau" name="txtrmatkhau" />
            <div id="errormatkhauNhapLai" name="errormatkhauNhapLai" class="alert"></div>
        </div>
        <button type="submit" id="register">
            Đăng ký
        </button>
        <p id="signin-link">
            Đã có tài khoản?
            <a href="DangNhap.aspx">Đăng nhập ngay!</a>
        </p>
    </form>
</body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tạo Trang Login</title>
  <link rel="stylesheet" href="style.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<style>
  *{
    margin:0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
  }

  section{
    position: relative;
    width: 100%;
    height: 100vh;
    display: flex;
  }

  section .img-bg{
    position: relative;
    width: 50%;
    height: 100%;
  }



  section .img-bg img{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  section .noi-dung{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 50%;
    height: 100%;
  }

  section .noi-dung .form{
    width: 50%;
  }


  section .noi-dung .form h2{
    color: #607d8b;
    font-weight: 500;
    font-size: 1.5em;
    text-transform: uppercase;
    margin-bottom: 20px;
    border-bottom: 4px solid #ff4584;
    display: inline-block;
    letter-spacing: 1px;

  }

  section .noi-dung .form .input-form{
    margin-bottom: 20px;
  }


  section .noi-dung .form .input-form span{
    font-size: 16px;
    margin-bottom: 5px;
    display: inline-block;
    color: #607db8;
    letter-spacing: 1px;

  }

  section .noi-dung .form .input-form input{
    width: 100%;
    padding: 10px 20px;
    outline: none;
    border: 1px solid #607d8b;
    font-size: 16px;
    letter-spacing: 1px;
    color: #607d8b;
    background: transparent;
    border-radius: 30px;

  }
  section .noi-dung .form .input-form input[type="submit"]{
    background: #ff4584;
    color: #fff;
    outline: none;
    border: none;
    font-weight: 500;
    cursor: pointer;
    box-shadow: 0 1px 1px rgba(0,0,0,0.12),
    0 2px 2px rgba(0,0,0,0.12),
    0 4px 4px rgba(0,0,0,0.12),
    0 8px 8px rgba(0,0,0,0.12),
    0 16px 16px rgba(0,0,0,0.12);
  }

  section .noi-dung .form .input-form input[type="submit"]:hover{
    background: #f53677;
  }
  section .noi-dung .form .nho-dang-nhap{
    margin-bottom: 10px;
    color: #607d8b;
    font-size: 14px;
  }

  section .noi-dung .form .input-form p{
    color: #607d8b;
  }

  section .noi-dung .form .input-form p a{
    color: #ff4584;
  }

  section .noi-dung .form h3{
    color: #607d8b;
    text-align: center;
    margin: 80px 0 10px;
    font-weight: 500;
  }

  section .noi-dung .form .icon-dang-nhap{
    display: flex;
    justify-content: center;
    align-items: center;
  }

  section .noi-dung .form .icon-dang-nhap li{
    list-style: none;
    cursor: pointer;
    width: 50px;
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  section .noi-dung .form .icon-dang-nhap li:nth-child(1){
    color: #3b5999;
  }
  section .noi-dung .form .icon-dang-nhap li:nth-child(2){
    color: #dd4b39;
  }
  section .noi-dung .form .icon-dang-nhap li:nth-child(3){
    color: #55acee;
  }
  section .noi-dung .form .icon-dang-nhap li i{
    font-size: 24px;

  }

  @media (max-width: 768px){
    section .img-bg{
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }
    section .noi-dung{
      display: flex;
      justify-content: center;
      align-items: center;
      width: 100%;
      height: 100%;
      z-index: 1;
    }
    section .noi-dung .form{
      width: 100%;
      padding: 40px;
      background: rgba(255 255 255 0.9);
      margin: 50px;
    }
    section .noi-dung .form h3{
      color: #607d8b;
      text-align: center;
      margin: 30px 0 10px;
      font-weight: 500;
    }
  }


</style>
</head>

<body>
<section>
  <!--Bắt Đầu Phần Hình Ảnh-->
  <div class="img-bg">
<%--    <img src="https://niemvuilaptrinh.ams3.cdn.digitaloceanspaces.com/tao_trang_dang_nhap/hinh_anh_minh_hoa.jpg"--%>
<%--         alt="Hình Ảnh Minh Họa">--%>
  </div>
  <!--Kết Thúc Phần Hình Ảnh-->
  <!--Bắt Đầu Phần Nội Dung-->
  <div class="noi-dung">
    <div class="form">
      <h2>Trang Dang Nhap</h2>
      <form action="/loginUser?action=login" method="post">
        <div class="input-form">
          <span>Ten Nguoi Dung</span>
          <input type="text" name="usernameLogin" size="30"  placeholder="usernameLogin" />
        </div>
        <div class="input-form">
          <span>Mat Khau</span>
          <input type="password" name="passwordLogin" size="30" placeholder="passwordLogin" />
        </div>
        <div class="input-form">
          <input type="submit" value="Signin"/>
        </div>
        <div class="input-form">
          <p>ban chua co tai khoan chua!<a href="/loginUser?action=createUser" class="btn btn-secondary">dang ky</a>

        </div>
      </form>
      <h3>Login bang mang xa hoi</h3>
      <ul class="icon-dang-nhap">
        <li><i class="fa fa-facebook" aria-hidden="true"></i></li>
        <li><i class="fa fa-google" aria-hidden="true"></i></li>
        <li><i class="fa fa-twitter" aria-hidden="true"></i></li>
      </ul>
    </div>
  </div>
  <!--Kết Thúc Phần Nội Dung-->
</section>
</body>

</html>
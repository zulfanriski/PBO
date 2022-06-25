<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="projek_beta.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="Bootstap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="konten%20tambahan/css/styling_login.css" rel="stylesheet" />
    <style>
        h1 {
            position:relative;
   
            right:204px;
            bottom:30px;
        }
        .name {
            position:relative;
            right:320px;
            bottom:280px;
            text-align:center;
            width:250px;
            border-radius:15px 15px;
        }
        .pass {
            position:relative;
            right:320px;
            bottom:250;
            text-align:center;
            width:250px;
            border-radius:15px 15px;
            bottom:240px;
        }
        #n {
            position:relative;
            right:180px;
            bottom:310px;   

        }
        #p {
            position:relative;
            right:180px;
            bottom:268px;
        }
        #registe {
            position:relative;
            right:165px;
            top:180px;

        }
        .active {
            position:relative;
            right:125px;
            bottom:220px;
            background-color:#007bff;
    border-radius:15px 15px;
    color:#ffffff;
    border-color:#007bff;
    width:130px;
        }
        .active:hover {
            background-color:#0069d9;
        }
        #Label1 {
            position:relative;
            right:330px;
            bottom:140px;
        }
    </style>
</head>

<body>
    <div class=" container-fluid">
        <div class=" row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                 <form>
                     <div id="judul">

                     <h1>Selamat Datang</h1>
  <form id="form" runat="server">
        <table>   
    <tr>  
        <td id="n" class="auto-style1">Nama</td>    
        <td>  
            <asp:TextBox ID="Username" runat="server" CssClass="name"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td id="p" class="auto-style1">Password</td>    
        <td>  
            <asp:TextBox ID="sandi" runat="server" CssClass="pass"></asp:TextBox>  
        </td>  
    </tr>    
        <td>  
            <asp:Button ID="btnInsertion" runat="server" Text="Login" OnClick="btnloginsiswa" CssClass="active" />
        </td>  
            <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>
            </form>
    <div id="registe">
        <p1>Tidak punya akun?</p1> <a href="Register.aspx">Buat Akun</a>
    </div>
</form>
                
            </div>
            <div class="col-md-4 col-sm-12"></div>
    
        </div>
       
    </div>
  
    <script src="Bootstap/js/bootstrap.min.js"></script>
</body>
</html>

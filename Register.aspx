<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="projek_beta.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="Bootstap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="konten%20tambahan/css/styling_register.css" rel="stylesheet" />
    <style>
        img {
            position:relative;
            top:540px;
            left:240px;
    width:40px;
    height:40px;
}
        #title {
            position:relative;
            left:80px;
        }
        #form1 {
            position:relative;
            bottom:250px;
            right:80px;
        }
        #Label1 {
            position:relative;
            top:60px;
        }
        .name {
            width:250px;
            border-radius:15px 15px;
            text-align:center;
        }
        .nis {
            width:250px;
            border-radius:15px 15px;
            text-align:center;
        }
        .email {
            width:250px;
            border-radius:15px 15px;
            text-align:center;
        }
        .pass {
            width:250px;
            border-radius:15px 15px;
            text-align:center;
        }
        body {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            position:relative;
            right:50px;

        }
        .active {
            background-color:#007bff;
    border-radius:15px 15px;
    color:#ffffff;
    border-color:#007bff;
    width:130px;
    position:relative;
    top:30px;
    left:190px;
        }
        #Label1 {
            position:absolute;
            left:185px;
            top:500px;
        }
    </style>
</head>
<body>
  <div class=" container-fluid">
        <div class=" row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                     <div id="title">
                         <h1>Registrasi</h1>
                     </div>
                 <form id="form1" runat="server">
        <table>   
    <tr>  
        <td class="auto-style1">Nama Siswa</td>    
        <td>  
            <asp:TextBox ID="Username" runat="server" CssClass="name"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td class="auto-style1">NIS</td>    
        <td>  
            <asp:TextBox ID="nis" runat="server" CssClass="nis"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td class="auto-style1">Email</td>    
        <td>  
            <asp:TextBox ID="email" runat="server" CssClass="email"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td class="auto-style1">Password</td>    
        <td>  
            <asp:TextBox ID="sandi" runat="server" CssClass="pass"></asp:TextBox>  
        </td>  
    </tr>    
        <td>  
            <asp:Button ID="btnInsertion" runat="server" Text="Buat Akun" OnClick="akun" CssClass="active" />
        </td>  
            <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>
            </form>
                <a href="login.aspx">

                <img src="konten%20tambahan/gambar/318477.png" />
                </a>
            </div>
            <div class="col-md-4 col-sm-12"></div>
    
        </div>
       
    </div>
  
    <script src="Bootstap/js/bootstrap.min.js"></script>
</body>
</html>

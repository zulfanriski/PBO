<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginadmin.aspx.cs" Inherits="projek_beta.loginadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="konten%20tambahan/css/styling_admin.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <style>
     h1 {
    position: relative;
    right: 0px;
    top:160px;
}

form {
    position: relative;
    right: 280px;
}
.tombol {
    background-color:#007bff;
    border-radius:15px 15px;
    color:#ffffff;
    border-color:#007bff;
    width:130px;
    position:relative;
    left:320px;
    top:30px;
    
}
.tombol:hover {
    background-color:#0069d9;
}
#Label1 {
    position:relative;
    top:100px;
    left:120px;
}
h1 {
    position:relative;
    left:249px;
    bottom:50px;
}
.nama {
    position:relative;
    left:130px;
    border-radius:15px 15px;
    width:250px;
    bottom:30px;
    text-align:center;
}
.sandi {
    position:relative;
    left:130px;
    border-radius: 15px 15px;
    width:250px;
    text-align:center;
}
#name {
    position:relative;
    left:269px;
    bottom:60px
}
#sa {
    position:relative;
    left:268px;
    bottom:30px;
}
body {
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
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
                     </div>
    <form id="form" runat="server">
        <table>   
    <tr>  
        <td id="name" class="auto-style1">Nama</td>    
        <td>  
            <asp:TextBox ID="Username" runat="server" CssClass="nama"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td id="sa" class="auto-style1">Password</td>    
        <td>  
            <asp:TextBox ID="sandi" runat="server" CssClass="sandi"></asp:TextBox>  
        </td>  
    </tr>    
        <td>  
            <asp:Button ID="btnInsertion" runat="server" Text="Login" CssClass="tombol" OnClick="btnloginadmin"  />
        </td>  
            <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>
            </form>
            <div class="col-md-4 col-sm-12"></div>
    
        </div>
       
    </div>
    <script src="Bootstap/js/bootstrap.min.js"></script>
</body>
</html>

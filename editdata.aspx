<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editdata.aspx.cs" Inherits="projek_beta.editdata" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="konten%20tambahan/css/styling_edit.css" rel="stylesheet" />
    <link href="Bootstap/css/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        img {
            height:110px;
            width:110px;
            position:relative;
            bottom:99px;
            left:128px;
        }
        h1 {
            position:relative;
            left:560px;
            bottom:50px;
            font-size:20px;
        }
        body {
            overflow-y:scroll;
            overflow-x:hidden;
        }
        .nama {
            position:absolute;
            left:1200px;
            width:220px;
            border-radius:15px 15px;
            text-align:center;
        }
        .kelas {
            position:absolute;
            left:1200px;
            top:330px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .absen {
            position:relative;
            left:1100px;
            top: 70px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .nominal {
            position:relative;
            left:1100px;
            top:96px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .tanggal {
            position: relative;
            left:1100px;
            top:250px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .active {
            position:absolute;
            left:1340px;
            top:500px;
            background-color:#007bff;
            border-radius:15px 15px;
            color:#ffffff;
            border-color:#007bff;
            width:80px;
        }
        .active:hover {
            background-color:#0069d9;
        }
        #siswa {
            position:relative;
            left:1095px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:13px;   
        }
        #class {
            position:relative;
            left:1095px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top: 40px;
        }
        #nomer {
            position:relative;
            left:1095px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:70px;
        }
        #harga {
           position:relative;
            left:1095px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:96px;
        }
        #tang {
            position:relative;
            left:1095px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:250px;
        }
        #Label1 {
            position:relative;
            left:920px;
            top:80px;
        }
        .act {
            position:absolute;
            left:1250px;
            top:680px;
            background-color:#007bff;
            border-radius:15px 15px;
            color:#ffffff;
            border-color:#007bff;
            width:130px;
        }
        .act:hover {
            background-color:#0069d9;
        }
        #GridView1 {
            text-align:center;
            position:relative;
            left:260px;
            bottom:180px;
        }
        #Label2 {
            position:relative;
            left:749px;
            top:310px
        }
        #judul {
            position:relative;
            left:660px;
            top:80px;
        }
        #o {
             position:relative;
            left:650px;
            top:400px;
        }
        .acti {
            position:relative;
            left:1100px;
            top:100px;
            background-color:#007bff;
            border-radius:15px 15px;
            color:#ffffff;
            border-color:#007bff;
            width:80px;
        }
        .acti:hover {
            background-color:#0069d9;
        }
        
    </style>
    <meta charset="UTF-8">
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-dark bg-primary shadow-sm">
  <div class="container">

    <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

    <div id="navbarSupportedContent" class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a href="#" class="nav-link">About</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Services</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>
    <img id="logo" src="konten%20tambahan/gambar/20220607_205810_0000-removebg-preview.png" />
    <div id="judul">
        <h1>Edit Data Siswa</h1>
    </div>
    <div id="o">
        <h1>
            Hapus Data Siswa
        </h1>
    </div>

     <form id="form1" runat="server">
        <table>   
    <tr>  
        <td id="siswa" class="auto-style1">Nama Siswa</td>    
        <td>  
            <asp:TextBox ID="Username" CssClass="nama" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td id="class" class="auto-style1">NIS</td>    
        <td>  
            <asp:TextBox ID="nis" CssClass="kelas" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td id="nomer" class="auto-style1">Kelas</td>    
        <td>  
            <asp:TextBox ID="kelas" CssClass="absen" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td id="harga" class="auto-style1">Alamat</td>    
        <td>  
            <asp:TextBox ID="alamat" CssClass="nominal" runat="server"></asp:TextBox>  
        </td>  
    </tr>
            <tr> 
        <td id="tang" class="auto-style1">ID Siswa</td>    
        <td>  
            <asp:TextBox ID="Tanggal" CssClass="tanggal" runat="server" ></asp:TextBox>  
        </td>
        </tr>

        

        <td>  
            <asp:Button ID="Update" runat="server" Text="Update" OnClick="update" CssClass="active" />
        </td>  
             <td>  
            <asp:Button ID="Button2" runat="server" Text="Add" OnClick="add" CssClass="acti" />
        </td>
             <td>  
            <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="delet" CssClass="act" />
        </td> 
           <asp:GridView ID="GridView1" runat="server"  ForeColor="#333333" GridLines="Both" Width="700px">
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
            </table>
            </form>
  
    <div class="sidebar">
    <div class="logo-details">
        <div class="logo_name">Aksi</div>
        <i class='bx bx-menu' id="btn" ></i>
    </div>
    <ul class="nav-list">
      <li>
          <i class='bx bx-search' ></i>
         <input type="text" placeholder="Search...">
         <span class="tooltip">Search</span>
      </li>
      <li>
        <a href="MenuAdmin.aspx">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
         <span class="tooltip">Dashboard</span>
      </li>
      <li>
       <a href="#">
         <i class='bx bx-user' ></i>
         <span class="links_name">User</span>
       </a>
       <span class="tooltip">User</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-chat' ></i>
         <span class="links_name">Messages</span>
       </a>
       <span class="tooltip">Messages</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-pie-chart-alt-2' ></i>
         <span class="links_name">Analytics</span>
       </a>
       <span class="tooltip">Analytics</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-folder' ></i>
         <span class="links_name">File Manager</span>
       </a>
       <span class="tooltip">Files</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-cog' ></i>
         <span class="links_name">Setting</span>
       </a>
       <span class="tooltip">Setting</span>
     </li>
     <li class="profile">
         <div class="profile-details">
           <div class="name_job">
             <div class="name"></div>
             <div class="job"></div>
           </div>
         </div>
             <a href="pilih.aspx">
         <i class='bx bx-log-out' id="log_out" ></i>
            </a>
     </li>
    </ul>
  </div>
  
  <script>
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
  let searchBtn = document.querySelector(".bx-search");

  closeBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("open");
    menuBtnChange();
  });

  searchBtn.addEventListener("click", ()=>{ 
    sidebar.classList.toggle("open");
    menuBtnChange(); 
  });

 
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");
   }
  }
  </script>
</body>
    <script src="Bootstap/js/bootstrap.min.js"></script>
</body>
</html>


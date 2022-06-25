<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menusiswa.aspx.cs" Inherits="projek_beta.menusiswa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="konten%20tambahan/css/styling_menusiswa.css" rel="stylesheet" />
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
        }
        body {
            overflow:hidden;
        }
        .nama {
            position:absolute;
            left:750px;
            width:220px;
            border-radius:15px 15px;
            text-align:center;
        }
        .kelas {
            position:absolute;
            left:750px;
            top:320px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .absen {
            position:relative;
            left:620px;
            top: 70px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .nominal {
            position:relative;
            left:625px;
            top:96px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .tanggal {
            position: relative;
            left:625px;
            top:120px;
            width:220px;
             border-radius:15px 15px;
            text-align:center;
        }
        .active {
            position:relative;
            left:800px;
            top:160px;
            background-color:#007bff;
            border-radius:15px 15px;
            color:#ffffff;
            border-color:#007bff;
            width:130px;
        }
        .active:hover {
            background-color:#0069d9;
        }
        #siswa {
            position:relative;
            left:600px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:13px;   
        }
        #class {
            position:relative;
            left:600px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top: 40px;
        }
        #nomer {
            position:relative;
            left:600px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:70px;
        }
        #harga {
           position:relative;
            left:600px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:96px;
        }
        #tang {
            position:relative;
            left:600px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            top:120px;
        }
        #Label1 {
            position:relative;
            left:650px;
            top:200px;
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
        <h1>Silahkan Membayar Kas</h1>
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
        <td id="class" class="auto-style1">Kelas</td>    
        <td>  
            <asp:TextBox ID="kelas" CssClass="kelas" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td id="nomer" class="auto-style1">Nomer Absen</td>    
        <td>  
            <asp:TextBox ID="absen" CssClass="absen" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
            <tr>  
        <td id="harga" class="auto-style1">Nominal</td>    
        <td>  
            <asp:TextBox ID="nominal" CssClass="nominal" runat="server"></asp:TextBox>  
        </td>  
    </tr>
            <tr>  
        <td id="tang" class="auto-style1">Tanggal</td>    
        <td>  
            <asp:TextBox ID="Tanggal" CssClass="tanggal" runat="server" textmode="Date" ></asp:TextBox>  
        </td>
                </tr>
        <td>  
            <asp:Button ID="btnInsertion" runat="server" Text="Bayar" OnClick="bayar" CssClass="active" />
        </td>  
            <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>
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
        <a href="#">
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
           <!--<img src="profile.jpg" alt="profileImg">-->
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
    menuBtnChange();//calling the function(optional)
  });

  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
    sidebar.classList.toggle("open");
    menuBtnChange(); //calling the function(optional)
  });

  // following are the code to change sidebar button(optional)
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
   }
  }
  </script>
</body>
    <script src="Bootstap/js/bootstrap.min.js"></script>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdmin.aspx.cs" Inherits="projek_beta.MenuAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="konten%20tambahan/css/menuadmin.css" rel="stylesheet" />
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
        #tambah {
            height:140px;
            width:140px;
            top:20px;
            left:630px;
        }
        #rekap {
            height:135px;
            width:135px;
            top:20px;
            left:750px;
        }
        h1 {
            position:relative;
            left:578px;
            bottom:50px;
        }
        #tombol {
            position:relative;
            top:50px;
            left:600px;
        }
        #add {
            position:relative;
            left:30px;
        }
        body {
            overflow:hidden;
        }
        #transaksi {
            position:relative;
            left:140px;
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
        <h1>Selamat Datang Admin</h1>
    </div>
    <img id="tambah" src="konten%20tambahan/gambar/data_security_shield_document_icon_208899.png" />
    <img id="rekap" src="konten%20tambahan/gambar/invoice_transaction_bill_receipt_investment_dollar_icon_188468.png" />
   
    <div id="tombol">
        <a href="editdata.aspx">

   <button id="add" type="button" class="btn btn-primary ">Edit Data Siswa</button>
        </a>
    <a href="transaksi.aspx">
    <button id="transaksi" type="button" class="btn btn-primary">Lihat transaksi</button>
    </a>
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
         <i class='bx bx-log-out' id="log_out" ></i>
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

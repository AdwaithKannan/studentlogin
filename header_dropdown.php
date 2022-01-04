<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<link rel="icon" href="images/Malayalam VV color.svg" type="image/png" sizes="32x32">
    <title>Vijayaveedhi - Student Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="http://groware.in/vijayaveedhi/vtc/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.datatables.net/rowreorder/1.2.8/css/rowReorder.dataTables.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js" type="text/javascript"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
    
<style>
.mr-2, .mx-2 {
    margin-right: 0.5
rem
!important;
}
.align-items-center {
    align-items: center!important;
}
.col {
    flex-basis: 0;
    flex-grow: 1;
    max-width: 100%;
}
.text-gray-300 {
    color: #dddfeb!important;
}
.no-gutters>.col, .no-gutters>[class*=col-] {
    padding-right: 0;
    padding-left: 0;
}
.no-gutters>.col, .no-gutters>[class*=col-] {
    padding-right: 0;
    padding-left: 0;
}
tr td{
	font-size:13px;
}
.navbar-fixed {
  top: 0;
  z-index: 100;
  position: fixed;
  width: 100%;
}
.navbar-default {
    border-color: #11234c;
    background: linear-gradient(to bottom,#2a3550 ,#082e8b 100%);
    border-radius: 0;
}
.navbar-default .navbar-brand {
	color :#fff !important;
}
.navbar-default .navbar-brand:focus, .navbar-default .navbar-brand:hover{
	color :#fff !important;
}
.navbar-default .navbar-nav>li>a {
	color :#fff !important;
}
.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus, .navbar-default .navbar-nav>.active>a:hover{
	background-color:#e7e7e782 !important;
}
.navbar-default .navbar-nav>li>a:focus, .navbar-default .navbar-nav>li>a:hover{
	background-color:#e7e7e782 !important;
}
.shadow{
	    box-shadow: 0 .15rem 1.75rem 0 rgba(58, 59, 69, .15)!important;
		padding:30px;
}
.smallbox {
	    display: flex;
    flex-wrap: wrap;
    margin-right: -0.75rem;
    margin-left: -0.75rem;
	margin-bottom:30px;
}
.smallbox .border-left-primary {
    border-left: 0.25rem solid #4e73df!important;
}
.pb-2, .py-2 {
    padding-bottom: 0.5rem!important;
}
.h-100 {
    height: 100%!important;
}
.border-left-success {
    border-left: 0.25rem solid #1cc88a!important;
}
.border-left-info {
    border-left: 0.25rem solid #36b9cc!important;
}
.border-left-warning {
    border-left: 0.25rem  solid #f6c23e!important;
}
.text-success {
    color: #1cc88a!important;
}
.font-weight-bold {
    font-weight: 700!important;
}
.dropdown .dropdown-menu .dropdown-header, .sidebar .sidebar-heading, .text-uppercase {
    text-transform: uppercase!important;
}
.mb-1, .my-1 {
    margin-bottom: 0.25remq!important;
}
.text-info {
    color: #36b9cc!important;
}

.text-warning {
    color: #f6c23e!important;
}
footer{
	margin-top:30px;
}
.dropdown:hover .dropdown-menu{
	display:block !important;
}
</style>

</head>

<body id="page-top">

   
   <div class="container">
  <div class="row">
    <div class="col-lg-12" style="margin:auto;text-align:center;">
      <img src="images/Malayalam VV color.svg" alt="logo" style="width:300px;">
    </div>
  </div>
</div>
<nav class="navbar navbar-default">
  <div class="container">
    
    <ul class="nav navbar-nav">
    <i class='fas fa-user-alt' style='font-size:36px'></i>
      <li class="active"><a href="dashboard.php">Dashboard</a></li>
      <li><a href="profile.php">Profile</a></li>
	  <li><a href="#">Exam</a></li>
      <li><a href="#">Notifications</a></li>
      <li><a href="#">Assignments</a></li>
      <li><a href="#">Menu</a></li>
      <li class="dropdown"><a href="#" class="dropbtn">Menu<b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="#">Submenu</a></li>
				<li><a href="#">Submenu</a></li>
				<li><a href="#">Submenu</a></li>
          </ul>
	  </li>
      <li class="dropdown"><a href="#" class="dropbtn">Menu<b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="#">Submenu</a></li>
				<li><a href="#">Submenu</a></li>
				<li><a href="#">Submenu</a></li>
          </ul>
	  </li>
      
      <li><a href="logout.php">Logout</a></li>
    </ul>
  </div>
</nav>
  




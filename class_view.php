 <!-- SQL -->
<?php
include('header_dropdown.php');
?>
<style>
.text-center{
	text-align:center;
	font-weight:bold;
	text-decoration:underline;
	    color: #0f1fdb;
    font-size: 1.7rem;
}
.btn-group-sm>.btn, .btn-sm{
	margin:0 2px;
}
#class_view ul {
	 
	 font-size: 1.5rem;
	 list-style: none;
	 
	 padding: 0;
}
 #class_view ul li {
	 margin: 0;
	 margin-bottom: 1rem;
	 padding-left: 1.5rem;
	 position: relative;
}
 #class_view ul li:after {
	 content: '';
	 height: 0.4em;
	 width: 0.4em;
	 background: #d2153a;
	 display: block;
	 position: absolute;
	 transform: rotate(45deg);
	 top: 0.5em;
	 left: 0;
}
 
#class_view ul li a {
	color:black;
}	
.h4{
	text-align:center;
	margin-bottom:20px;
}
</style>
<div class="container" id="class_view">
	<div class="col-md-12 col-sm-12">
		<div class="col-md-8 col-sm-12">
			<h4>View Video Class</h4>   
			<div class="row no-gutters align-items-center">
				
			<iframe src="https://drive.google.com/file/d/1nfDJ_QVpAVyW4U_-rkTF_7x4EO5ml8hG/preview" width="100%" height="480" allow="autoplay"></iframe>
			
			</div>
		</div>
		<div class="col-md-4 col-sm-12" style="margin-top:40px;">
			<div class="card shadow">
			<h4 class="h4">Chapter List</h4> 
				<ul>
				  <li><a href="">Chapeter 2</a></li>  
				  <li><a href="">Chapeter 2</a></li>
				  <li><a href="">Chapeter 2</a></li>
				  <li><a href="">Chapeter 2</a></li>
				  <li><a href="">Chapeter 2</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<?php include('footer.php');
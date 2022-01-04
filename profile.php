<!-- SQL -->
<?php
session_start();
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

form{

	margin:auto;

}
label{
  user-select: none;
}
input[type="radio"] {
  display: none;
}
.error{
	color:red;
}
input[type="radio"] + label {
  z-index: 10;
  margin: 0 10px 10px 0;
  position: relative;
  color: #ced4da;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.1);
  font-weight: bold;
  background-color: #ffffff;
  border: 2px solid #ced4da;
  cursor: pointer;
  transition: all 200ms ease;
}

input[type="radio"]:checked + label {
  color: #495057;
  background-color: #ced4da;
}

input[type="radio"] + label {
  padding: 5px 20px;
  border-radius: 10px;
}
.error {
     font-size:1rem !important;
    }

.modal-header {
	    border-color: #11234c;
    background: linear-gradient(to bottom,#2a3550 ,#082e8b 100%);
}
</style>
<div class="container">
<img src="images/Malayalam VV color.svg" width="100px" height="100px">
<?php
include_once 'dbconn.php';
$email = $_SESSION['username'];
$result = mysqli_query($db,"SELECT * FROM `vtc_students` WHERE `email`='$email'");
?>
<?php
if (mysqli_num_rows($result) > 0) {
?>


<table class="table table-bordered">

  <tbody>
  </tr>
<?php
$i=0;
while($row = mysqli_fetch_array($result)) {
?>
  <tr>
      <th scope="col">NAME</th>
      <td scope="col"><?php echo $row["name"]; ?></td>
     
    </tr>
    <tr>
      <th scope="row">EMAIL</th>
      <td><?php echo $row["email"]; ?></td>
     
    </tr>
    <tr>
      <th scope="row">PHONE NUMBER</th>
      <td><?php echo $row["ph_num"]; ?></td>
       
    </tr>
    <tr>
      <th scope="row">GENDER</th>
      <td colspan="2"><?php echo $row["gender"]; ?></td>
      
    </tr>

    <?php
$i++;
}
?>
  </tbody>
  
</table>

<?php
}
else{
echo "No result found";
}
?>
</div>




</body>

<?php include('footer.php');?>
</html>
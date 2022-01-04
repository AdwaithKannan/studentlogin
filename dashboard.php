<!-- SQL -->
<?php
session_start();
include('header_dropdown.php');
?>
<style>
    .text-center {
        text-align: center;
        font-weight: bold;
        text-decoration: underline;
        color: #0f1fdb;
        font-size: 1.7rem;
    }

    .btn-group-sm>.btn,
    .btn-sm {
        margin: 0 2px;
    }

    form {

        margin: auto;

    }

    label {
        user-select: none;
    }

    input[type="radio"] {
        display: none;
    }

    .error {
        color: red;
    }

    input[type="radio"]+label {
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

    input[type="radio"]:checked+label {
        color: #495057;
        background-color: #ced4da;
    }

    input[type="radio"]+label {
        padding: 5px 20px;
        border-radius: 10px;
    }

    .error {
        font-size: 1rem !important;
    }

    .modal-header {
        border-color: #11234c;
        background: linear-gradient(to bottom, #2a3550, #082e8b 100%);
    }
</style>
<div class="container">
    <div class="row smallbox">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-3 col-sm-12 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2" style="float:left;">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                Lorem ipsum</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">&nbsp;&nbsp;(<span style="color:red;">2</span> <a href="" style="color:#000;"> Lorem ipsum
                                </a>)</div>
                        </div>
                        <div class="col-auto" style="float:right;">
                            <i class="fas fa-calculator fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-3 col-sm-12 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2" style="float:left;">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Lorem ipsum</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">&nbsp;&nbsp;(<span style="color:red;">2</span> <a href="" style="color:#000;"> Lorem ipsum</a>)</div>
                        </div>
                        <div class="col-auto" style="float:right;">
                            <i class="fas fa-paperclip fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-3 col-sm-12 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2" style="float:left;">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                Lorem ipsum</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                        </div>
                        <div class="col-auto" style="float:right;">
                            <i class="fas fa-users fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-3 col-sm-12 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2" style="float:left;">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                Lorem ipsum</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">&nbsp;&nbsp;(<span style="color:red;">5</span> <a href="registered_vtc.php" style="color:#000;"> Lorem ipsum</a>)</div>
                        </div>
                        <div class="col-auto" style="float:right;">
                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--<div class="card shadow">

    <a href="register.php" style="float: right;" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas  fa-sm text-white-50"></i> New VTC</a>
                                <br>
                                <br>

</div>-->

    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" style="color:#fff;">&times;</button>
                    <h4 class="modal-title" style="color:#fff;">Welcome To Vijayaveedhi</h4>
                </div>
                <form class="" method="post" enctype="multipart/form-data">
                <div class="modal-body text-center" style="text-decoration:none;color:black">
                    <h5 style="margin-bottom:40px;">Please Choose Your Language</h5>
                    
                        <div class="form-group">
                            <input type="radio" id="malayalam" name="radio" value="M">
                            <label for="malayalam">Malayalam</label>
                            <input type="radio" id="english" name="radio" value="E">
                            <label for="english">English</label>
                        </div>
                  
                </div>
                <div class="modal-footer">
                    <input type="Submit" class="btn btn-primary" name="submitLanguage" value="Submit">
                </div>
                </form>
            </div>

        </div>
    </div>
</div>
<?php include('footer.php'); ?>





<?php
$medium='';
$radio = '';
if (isset($_POST['submitLanguage'])) {

    $radio = $_POST['radio'];

   $db=  mysqli_connect('localhost', 'root', '','vijayaveethi');
    $email = $_SESSION['username'];
    $query = " UPDATE `vtc_students` SET `medium` = '$radio' WHERE `email`='$email'";
    mysqli_query($db, $query);


    mysqli_close($db);
}

if (isset($_SESSION['username'])) {


    $db=  mysqli_connect('localhost', 'root', '','vijayaveethi');
    $email = $_SESSION['username'];
    $query = "SELECT `medium` FROM `vtc_students` WHERE `email`='$email'";
    $result = mysqli_query($db, $query);
    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while($row = mysqli_fetch_assoc($result)) {
            $medium= $row["medium"];

if($medium==''){

    echo "<script>
    $(document).ready(function() {
        $('#myModal').modal('show');
    });
</script>";
}

        }
      } else {
        echo "0 results";
      }

    mysqli_close($db);

}



?>
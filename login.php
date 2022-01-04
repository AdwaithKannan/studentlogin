<!-- SQL -->
<?php
require_once('base.ini.php');
require_once('db.ini.php');
require_once('class.student.php');
if(isset($_POST['sub']))
{

	$student = new student();

	$checkUser = $student->authenticate($_POST);

	if ($checkUser==1) {

		echo '<script>window.location = "'.SITE_URL.'/dashboard.php";</script>';

	} else {

		$msg = "<span style='text-align:center;color:#ff0000;background: #F8F0F1;border: 0px #A25965 solid;height: auto;margin-left: 50px;'>Invalid email or password</span>";

	}

	
}
?>

<!-- SQL -->

<!doctype html>
                        <html>
                            <head>
                                <meta charset='utf-8'>
                                <meta name='viewport' content='width=device-width, initial-scale=1'>
                                <title>Vijayaveedhi | Kerala State Rutronix - Student Login </title>
								<link rel="icon" href="images/V icon.svg" type="image/png" sizes="32x32">
										
<!-- Facebook Pixel Code -->

																
																
<style>
#log-in {
	 font-family: helvetica;
	 color: #333;
	 padding: 0 15px;
}
 #log-in * {
	 box-sizing: border-box;
}
 #log-in .login-heading {
	 font-size: 36px;
	 line-height: 1.5;
	 font-weight: bold;
	 margin: 10px 0;
	 text-align: center;
}
 #log-in .login-copy {
	 text-align: center;
	 margin-bottom: 30px;
}
 #log-in .login-form {
	 margin: 60px auto;
	 display: block;
	 padding: 20px 30px 30px 30px;
	 max-width: 480px;
	 background: #f6f6f6;
	 border-radius: 8px;
	 box-shadow: 0 2px 0 1px rgba(0, 0, 0, 0.1);
}
 #log-in .login-form .field-container {
	 position: relative;
	 display: block;
	 margin: 10px 0;
	 height: 54px;
	 width: 100%;
	 background: white;
	 border: #f0f;
	 border-radius: 3px;
}
 #log-in .login-form .field-container.-focused label {
	 font-size: 11px;
	 line-height: 12px;
	 color: #888;
	 bottom: auto;
	 top: 8px;
	 font-weight: bold;
}
 #log-in .login-form .field-container.-focused input {
	 line-height: 62px;
}
 #log-in .login-form label {
	 position: absolute;
	 top: 0;
	 right: 10px;
	 bottom: 0;
	 left: 10px;
	 z-index: 1;
	 line-height: 54px;
	 display: block;
	 color: #666;
	 font-size: 16px;
	 transition: font-size 0.2s cubic-bezier(0.645, 0.045, 0.355, 1), line-height 0.2s cubic-bezier(0.645, 0.045, 0.355, 1), color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1), font-weight 0.2s cubic-bezier(0.645, 0.045, 0.355, 1), top 0.2s cubic-bezier(0.645, 0.045, 0.355, 1), bottom 0.2s cubic-bezier(0.645, 0.045, 0.355, 1);
}
 #log-in .login-form input {
	 position: absolute;
	 top: 0;
	 right: 0;
	 bottom: 0;
	 left: 0;
	 width: 100%;
	 z-index: 2;
	 display: block;
	 background: transparent;
	 line-height: 54px;
	 padding: 0 10px;
	 font-size: 16px;
	 border: none;
	 color: #333;
	 border-radius: 3px;
	 border: 1px solid transparent;
	 transition: border-color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1);
}
 #log-in .login-form input:focus, #log-in .login-form input:active {
	 outline: none;
	 border-color: #ededed;
}
 #log-in .login-form button {
	 display: block;
	 margin: 30px 0;
	 height: 54px;
	 width: 100%;
	 background: #005287;
	 border: 1px solid #005287;
	 border-top-color: transparent;
	 border-radius: 3px;
	 font-size: 16px;
	 font-weight: bold;
	 color: #fff;
	 text-shadow: -1px -1px rgba(0, 0, 0, 0.1);
	 transition: background 0.2s cubic-bezier(0.645, 0.045, 0.355, 1);
}
 #log-in .login-form button:hover {
	 background: #1375b5;
	 cursor: pointer;
}
 #log-in .login-form .create-account-link {
	 color: #085da9;
	 font-size: 14px;
	 display: block;
	 text-align: center;
	 text-decoration: none;
	 transition: color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1);
}
 #log-in .login-form .create-account-link:hover {
	 color: #0094cc;
}
 
</style>
                                <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
                                <script type='text/javascript' src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src="https://itkeralaeducation.com/rutronix/js/jquery.validate.min.js.download"></script>                               
															 
                            </head>
                            <body oncontextmenu='return true' class='snippet-body'>
														
<!-- Navigation -->
														
														
		<style>
		 input.error {
    color: red !important;
	    border: 1px solid red !important;
}
#email-error,#passwd-error {
	    float: left !important;
    color: red !important;
    text-align: right !important;
}

.my-error-class {
    color:#FF0000;  /* red */
}
.my-valid-class {
    color:#00CC00; /* green */
}
/* #gw_head {
		float: left;
			width: 243px;
			height: 58px;
			margin-top: -56px;
			margin-right: 0px;
			margin-left: 114px;
	} */

.form_logo {
	float:left;
	width:92%;
}
body{
	background:#eaeef7;
}
		</style>												
											
														
                            <!-- MultiStep Form [START] -->
<div class="container-fluid" id="grad1">
    <div class="row justify-content-center mt-0">
       <div id="log-in">
				  <form class="login-form" method="POST" name="logform" id="logform" action="#" enctype='multipart/form-data' role="form" >
					<a class="navbar-brand" href="https://channels.rutronixonline.com/" target="_blank">
          <img src="<?php echo SITE_URL ?>/images/Malayalam VV color.svg" alt="logo" class="img-responsive form_logo ">
        </a>
					<p class="login-copy">Login Here</p>
					<p class="login-copy"><?php echo $msg; ?></p>

					<div class="field-container -username">
					  <label for="email">E-mail</label><input type="email" name="email"   />
					</div>
					<div class="field-container -password">
					  <label for="passwd">Password</label>
					  <input type="password" name="passwd"/>
					</div>
					<button class="log-in-button" type="submit" name="sub" id="sub">Log in</button>
					<a class="create-account-link" href="">Don't have an account? Sign up</a>
				  </form>



  </div>
</div>



    

<script>
$('input').focus(function(){
  var input = $(this);
  input.closest('.field-container').addClass('-focused');
});

$('input').blur(function(){
  var input = $(this);
  if (input.val().length === 0) {
    input.closest('.field-container').removeClass('-focused');
  }
});

$(document).ready(function(){

    $("#logform").validate({
        rules: {
            email: {
                required: true,
                // another rule
            },
            passwd: {
                required: true,
                // another rule
            }
           
        }
    });

});
</script>
</body>

</html>
<?php



session_start();



error_reporting(1);



class student



{



	var $conn;



	var $table;



	function __construct()



	{



		$this->conn = mysqli_connect(HOSTNAME,DBUSER,DBPWD,DBNAME);



		$this->table = 'vtc_students';



		



		if (mysqli_connect_errno())



		{



			echo "Failed to connect to MySQL: " . mysqli_connect_error();



		}



	}







	function __destruct()



	{



		mysqli_close($this->conn);



	}







	function authenticate($val = array())



	{



		/* // $password = md5($val['password'].SALT); */







		



		$query = "SELECT `id`,`email`,`password` FROM $this->table WHERE `email` =  '".mysqli_real_escape_string($this->conn,$val['email'])."' AND `password` = '".mysqli_real_escape_string($this->conn,$val['passwd'])."' ";







		







		$result = mysqli_query($this->conn,$query);







		$result = mysqli_fetch_object($result);







		if(!empty($result->id))



		{



			$_SESSION['userid']  	= $result->id;



			$_SESSION['username']   = $result->email;



			



			$_SESSION['VTCName']  = $result->vtc_name;



			



			return true;



		}



		else



		{



			return false;



		}



	}







	function GetStudentsList()



	{







		$query = "select * from vtc_students ";



		$result =  mysqli_query($this->conn,$query); 



		return $result;



	







	}







	function ChangePasswd($val = array())



	{



		if ($val['newPass']==$val['newPassConfirm']) {







			$query = "UPDATE $this->table SET passwd = '".mysqli_real_escape_string($this->conn,$val['newPass'])."' WHERE id = '".mysqli_real_escape_string($this->conn,$_SESSION['userid'])."' ";







			$result = mysqli_query($this->conn,$query);



			return $result;



			



		}







		else



		{



			return false;



		}



	}







	function AddStudent($arr = array()){





		if( $arr['fName']!='' &&  $arr['email']!='' && $arr['mob']!='' && $arr['radio']!='' && $arr['quali']!='' && $arr['category']!='' && $arr['course']!='') {

			



			$query1 = "INSERT INTO vtc_students (`name`,`email`,`ph_num`,`gender`,`qualification`,`category`,`course`,`step`)



									VALUES (



									'".mysqli_real_escape_string($this->conn,$arr['fName'])."', 



									'".mysqli_real_escape_string($this->conn,$arr['email'])."', 



									'".mysqli_real_escape_string($this->conn,$arr['mob'])."',



									'".mysqli_real_escape_string($this->conn,$arr['radio'])."', 



									'".mysqli_real_escape_string($this->conn,$arr['quali'])."', 



									'".mysqli_real_escape_string($this->conn,$arr['category'])."',



									'".mysqli_real_escape_string($this->conn,$arr['course'])."',

									'".mysqli_real_escape_string($this->conn,1)."'



									); ";

		



					$result = mysqli_query($this->conn,$query1); 



					$id = mysqli_insert_id($this->conn);



					return  $id;

		} else {



			return "false";



		}



	}

	function GetStudDetails($id)



	{

		$query = "SELECT * FROM `vtc_students` WHERE id='".$id."' ";

		$result = mysqli_query($this->conn,$query);

		$data = mysqli_fetch_assoc($result);

		return $data;



	}



	function GetPaymentIDDetails($vtc){



		$p_query = "SELECT count FROM `payment_count` WHERE vtc='".$vtc."' ";

		$p_result = mysqli_query($this->conn,$p_query);

		$p_data = mysqli_fetch_assoc($p_result);



		$count=$p_data['count'] + 1;



		$payid=$vtc.'21'.$count;



		return $payid;



	}

	function GetVTCsList()

	{





	}

	

	



}
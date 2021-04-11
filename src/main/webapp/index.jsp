<html>
<style>
body{
  background-image: url('sport.jpg');
   background-attachment: fixed;
  background-position: center;
}
.header{
    position: fixed;
    top: 0;
    height: 10%; 
    width: 100%;
    background-color: DarkSalmon;
    color: white;
}


footer {
  text-align: center;
  padding: 3px;
  background-color: DarkSalmon;
  color: white;
   bottom: 0;
   width : 100%;
   position: fixed;
}
.center1 {
	align: center;
	box-shadow: 7px 7px 5px black;
	border-radius: 15px;
	margin-top: 5%;
	margin-left: 25%;
	margin-right: 40%;
	width: 50%;
	border: 3px solid green;
	padding: 5px;
	background: rgba(60, 179, 113, 0.85);
}
</style>
<body style = "align:center;BACKGROUND-COLOR: cornsilk;">

	<script type="text/javascript">
		function validate() {
			var un = document.f1.userName.value;
			var unl = document.getElementById("name").value;
		    var con = document.getElementById("con").value;
			var email = document.getElementById("email").value;
			var dob1 = document.f1.dob.value;
			var gen = document.f1.gender.value;
			var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
			var pass1 = document.f1.password.value;
			var cpass = document.f1.confirmPassword.value;
			var status = false;
			if (un == "" || un == null) {
			//	document.getElementById("userNamelocation").innerHTML = "Please enter all the fields";
				document.getElementById("userNamelocation").innerHTML = alert("Enter UserName");
				status = false;
				console.log("inside if");
			}
			else if(un.length < 3 || un.length > 18){
				document.getElementById("userNamelocation").innerHTML = alert("UserName should be greater than 3 and less than 18 characters");
				status = false;
			}
			else if(email.length < 5 || email.length > 56){
				document.getElementById("emaillocation").innerHTML = alert("Email should be greater than 5 and less than 56 characters");
				status = false;
				
			}
			else if(con.search (/[0-9]/)== -1){
				document.getElementById("contactlocation").innerHTML = alert("Contact number should only be digits");
				status = false;
				
			}
			else if(con.length < 10 ){
				document.getElementById("contactlocation").innerHTML = alert("Contact number should be min 10 digits");
				status = false;
				
			}
			else if (dob1 == "" || dob1 == null) {
				//	document.getElementById("userNamelocation").innerHTML = "Please enter all the fields";
					document.getElementById("doblocation").innerHTML = alert("Select DOB from Calender");
					status = false;
					console.log("inside if");
				}
			else if (gen == "" || gen == null) {
				//	document.getElementById("userNamelocation").innerHTML = "Please enter all the fields";
					document.getElementById("genderlocation").innerHTML = alert("Select gender");
					status = false;
					console.log("inside if");
				}
			else if(! pass1.match(pass)){
				document.getElementById("passwordlocation").innerHTML = alert("Invalid Password");
				status = false;
				
			}
			else if(! cpass.match(pass1)){
				document.getElementById("cpasswordlocation").innerHTML = alert("Password not matching");
				status = false;
				
			}
			
			
			else {
				document.getElementById("userNamelocation").innerHTML = "Correct";
				status = true;
			}
			return status;
			
		}
	</script>
	<div class ="header">
	<label style="text-align: left; background-color: DarkSalmon; height: 50px; font-size: 25px; font-style: oblique;">
	NTCC Sports accessories
	</label>
	<a href ="login.jsp" style ="padding-left: 1225px;size=20%;"><input type="button" value="login" ></a>
			                
	</div>
	 <h1 align="center">Create Account</h1>
	<div class="center1">
		<form name="f1" action="account.ghd" onsubmit="return validate()" method="post">
		<table style = text-align: center; margin-left: auto ; margin-right : auto>
		<tr>
		<td>UserName</td>
		<td>:</td>
		<td><input id ="name" type="text" name="userName"><span id="userNamelocation" style="color: red"></span></td> 
		</tr>
		<tr>
		<td>Email</td>
		<td>:</td>
		<td><input id ="email" type="text" name="emailId"><br><span id="emaillocation" style="color: red"></span></td>
		</tr>
		<tr>
		<td>ContactNo</td>
		<td>:</td>
		<td><input id ="con" type="number" name="contactNo"><br> <span id="contactlocation" style="color: red"></span></td></td>
		</tr>
		<tr>
		<td>DOB</td>
		<td>:</td>
		<td><input id ="dob" type="date" name="dob"><br> <span id="doblocation" style="color: red"></span></td>
		</tr>
		<tr>
		<td>Gender</td>
		<td>:</td>
		<td><input type="radio"
				id="male" name="gender" value="male"> <label for="male">Male</label>
			<input type="radio" id="female" name="gender" value="female">
			<label for="female">Female</label> <input type="radio" id="other"
				name="gender" value="other"> <label for="other">Other</label><span id="genderlocaion" style="color: red"></span></td>
	   </tr>
	   <tr>
	   <td>Password</td>
	   <td>:</td>
	   <td><input type="password" name="password"><br><span id="passwordlocation" style="color: red"></span> </td>
	   </tr>
	   <tr>
	   <td>ConfirmPassword</td>
	   <td>:</td>
	   <td><input type="password" name="confirmPassword"><br><span id="cpasswordlocation" style="color: red"></span></td>
	   </tr>
	   <tr>
	   <td><input type="reset" value="Cancel"></td>
	   <td></td>
	   <td><input type="submit" value="Register"></td>
	   </tr>
		</table>
			

		</form>
		    
       
	</div>
	 <footer>
  <p>Contact us:6789034521 visit us:www.ntcc.com
  <a href="mailto:hege@ghd.com">hege@ghd.com</a></p>
</footer>

</body>
</html>

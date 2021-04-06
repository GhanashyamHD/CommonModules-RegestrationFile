<html>
<style>


.footer {
	text-align: center;
	color: brown;
	position: fixed;
	background-attachment: fixed;
	bottom: 0;
	width: 50%;
	height: 60px; /* Height of the footer */
	background: rgba(124, 25, 25, 0.637);
}

.center1 {
	align: center;
	box-shadow: 7px 7px 5px grey;
	border-radius: 15px;
	margin-top: 10%;
	margin-left: 25%;
	margin-right: 40%;
	width: 50%;
	border: 3px solid green;
	padding: 20px;
	background: rgba(60, 179, 113, 0.85);
}
</style>
<body style = "align:center; bgcolor:pink">

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
	<header
		style="text-align: left; background-color: rgba(124, 55, 109, 0.253); height: 80px; font-size: 25px; font-style: oblique;">
		NTCC
		<p align="right">
			<input type="submit" value="logout" size="10%">
		</p>
	</header>
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
		<p class="footer">Contact us:6789034521 visit us:www.ntcc.com</p>

	</div>

</body>
</html>

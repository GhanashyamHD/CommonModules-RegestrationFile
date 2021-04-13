<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<style>
body{
  background-image: url('sport.jpg');
   background-attachment: fixed;
  background-position: center;
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
.header{
    position: fixed;
    top: 0;
    height: 10%; 
    width: 100%;
    background-color: DarkSalmon;
    color: white;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>loginPage</title>
</head>
<body style = "align:center;BACKGROUND-COLOR: cornsilk;">
<script type="text/javascript">
function validate() {
			
			var name = document.f1.userName.value;
			var pass1 = document.f1.password.value;
			var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
			var status = false;
			
		
		    if(name == "" || name == null){
				document.getElementById("userNamelocation").innerHTML = alert("Enter valid userName");
				status = false;
				
			}
		    else if(! pass1.match(pass)){
				document.getElementById("passwordlocation").innerHTML = alert("Enter valid Password");
				status = false;
				
			}
			
			
			
			else {
				document.getElementById("emailIdlocation").innerHTML = "Correct";
				status = true;
			}
			return status;
			
		}
</script>
<div class ="header">
	<label style="text-align: left; background-color: DarkSalmon; height: 50px; font-size: 25px; font-style: oblique;">
	NTCC Sports accessories
	</label>
	<a href ="login.jsp" style ="padding-left: 1225px;size=20%;"><input type="button" value="logout" ></a>
			                
	</div><h1 align="center">Login Page</h1>
	<h1> ${msg} </h1><br>
<div class="center1">
<form name = f1 action="login.ghd" onsubmit="return validate()" method="post">
<table>
<tr>
<td>UserName</td>
<td>:</td>
<td><input type ="text" name ="userName" placeholder="Enter UserName"><span id="userNamelocation" style="color: red"></span></td>
</tr>
<tr>
<td>Password</td>
<td>:</td>
<td><input type ="password" name ="password" placeholder="Enter Password"><span id="passwordlocation" style="color: red"></span></td>
</tr>
<tr>
<td><input type ="reset" value="Cancel"></td>
<td></td>
<td><input type ="submit" value ="Login"></td>
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
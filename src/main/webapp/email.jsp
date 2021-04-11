<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style = "align:center;BACKGROUND-COLOR: cornsilk;">
<script type="text/javascript">
function validate() {
			
			var email = document.getElementById("email").value;
			
			var status = false;
			
		
		    if(email.length < 5 || email.length > 56){
				document.getElementById("emaillocation").innerHTML = alert("Email should be greater than 5 and less than 56 characters");
				status = false;
				
			}
			
			
			
			else {
				document.getElementById("emaillocation").innerHTML = "Correct";
				status = true;
			}
			return status;
			
		}
</script>
<header
		style="text-align: left; background-color: DarkSalmon; height: 80px; font-size: 25px; font-style: oblique;">
		NTCC Sports Accessories
		<p align="right">
       <input type="submit" value="logout" size="10%">
		</p>
	</header>
<div class="center1">
<form  name="f3" action="email.ghd" onsubmit="return validate()" method="post">
<table>
<tr>
<td>Email</td>
<td>:</td>
<td><input id = "email" type="text" name="emailId" placeholder="Enter Email" ><span id="emaillocation" style="color: red"></span></td>
<tr align="center">
<td><input type="submit" value ="get"></td>
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
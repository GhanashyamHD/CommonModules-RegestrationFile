<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>

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
<div class ="header">
	<label style="text-align: left; background-color: DarkSalmon; height: 50px; font-size: 25px; font-style: oblique;">
	NTCC Sports accessories
	</label>
	<a href ="logout.jsp" style ="padding-left: 1225px;size=20%;"><input type="button" value="logout" ></a>
			                
	</div>
<div class ="center1">
<form action ="update.ghd">
<table>
<tr>
<td>EmailId</td>
<td>:</td>
<td><input type="text" name="emailId" value ="${entity.getEmailId()}">

</tr>
<tr>
<td>UserName</td>
<td>:</td>
<td><input type = "text" name="userName" placeholder = "${entity.getUserName()}"></td>
</tr>
<tr>
<td>ContactNo</td>
<td>:</td>
<td><input type ="number" name="contactNo" placeholder ="${entity.getContactNo()}"> </td>
</tr>

<tr>
<td>DOB</td>
<td>:</td>
<td><input type ="date" name ="dob" placeholder ="${entity.getDob()}">    </td>
</tr>
<tr>
<td><input type ="reset" value ="Cancel">
<td></td>
<td><input type = "submit" value ="Update">
</tr>
</table>
</form>
</div>
<footer>
  <p>Contact us:6789034521 visit us:www.ntcc.com
  <a href="mailto:hege@ghd.com">hege@ghd.com</a></p>
</footer></body>
</html>
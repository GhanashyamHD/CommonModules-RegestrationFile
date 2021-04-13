<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    background: -webkit-linear-gradient(#93B874, #C9DCB9); 
    background: -o-linear-gradient(#93B874, #C9DCB9); 
    background: -moz-linear-gradient(#93B874, #C9DCB9); 
    background: linear-gradient(#93B874, #C9DCB9); 
    background-color: #93B874; 
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
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style = "align:center;BACKGROUND-COLOR: cornsilk;">
<script type = "text/javascript" >  
    function preventBack() { window.history.forward(); }  
    setTimeout("preventBack()", 0);  
    window.onunload = function () { null };  
</script>
<div class ="header">
	<label style="text-align: left; background-color: DarkSalmon; height: 50px; font-size: 25px; font-style: oblique;">
	NTCC Sports accessories
	</label>
	<a href ="login.jsp" style ="padding-left: 1225px;size=20%;"><input type="button" value="logout" ></a>		                
	</div>
<h1> ${msg} </h1><br>

<div align="center">
<a href ="main.jsp" style ="color: black; align:center;"> Click here to direct to main page</a><br>
</div>

<footer>
  <p>Contact us:6789034521 visit us:www.ntcc.com
  <a href="mailto:hege@ghd.com">hege@ghd.com</a></p>
</footer></body>
</html>



</body>
</html>
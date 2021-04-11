<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored = "false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<style>
body{
  background-image: url('sport.jpg');
   background-attachment: fixed;
  background-position: center;
}
.div1 {
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}
table, th, td {
  border: 1px solid black;
}

footer {
  text-align: center;
  padding: 8px;
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
<title>Insert title here</title>
</head>
<body style = "align:center;BACKGROUND-COLOR: cornsilk;">
<script type="text/javascript">
function validate() {
			
			var search = document.f4.sportType.value;
			
			var status = false;
			
		
		    if(search == "" || search == null ){
				document.getElementById("sportTypelocation").innerHTML = alert("Enter the sport to search for items");
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
	<label style="text-align: left; background-color: DarkSalmon; height: 80px; font-size: 25px; font-style: oblique;">
	NTCC Sports Accessories
	</label>
	<a href ="email.jsp" style ="padding-left: 960px;size:50%;"><input type="button" value="GetProfile" size="15%"></a>		                
	<label>
	<a href ="addprod.jsp" style ="padding-left: 1225px;size:50%;"><input type="button" value="AddProd  " ></a> 
</label>
	</div>
<div class ="center1">
<form name="f4" action="search.ghd" onsubmit="return validate()" method="post" >
<table>
<tr>
<td>Search</td>
<td>:</td>
<td><input type ="text" name ="sportType" size="25%"><span id="sportTypelocation" style="color: red"></span></td>
<td><input type ="submit" value ="submit"></td>
</tr>
</table>
</form>



</div>
<div class ="div1">
<table align ="center">
<!--  <tr>
<th>Item</th>
<th>SportType</th>
<th>Quantity</th>
<th>Price</th>
<th>Ratings</th>
</tr> -->

<c:forEach items = "${addEntities}" var ="sportType">
<tr>
<td>${sportType.getItem()}</td> 
<td>${sportType.getSportType()}</td> 
<td>${sportType.getQuantity()}</td> 
<td>${sportType.getPrice()}</td>
<td>${sportType.getRating()}</td>  
</tr>
</c:forEach>

</table>

</div>




<footer>
  <label>Contact us:6789034521 visit us:www.ntcc.com
  <a href="mailto:hege@ghd.com">hege@ghd.com</a>
 </label>
  	<a href ="logout.jsp" style ="padding-left: 1225px;size:50%;"><input type="submit" value="logout"  size="25%"></a>

  	
	
</footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<style>
body{ 
    background: url("../images/sport.jpg");

   background-attachment: fixed;
  background-position: center;
}


.footer {
  text-align: center;
  padding: 3px;
  background-color: DarkSalmon;
  color: white;
   bottom: 0;
   width : 100%;
   position: fixed;
   padding-right: 20px;
   
   
   
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
			var it = document.f2.item.value;
			var st = document.f2.sportType.value;
			var quan = document.f2.quantity.value;
			var pri = document.f2.price.value;
			var rat = document.f2.rating.value;
			
			var status = false;
			if (it == "" || it == null) {
				document.getElementById("itemlocation").innerHTML = alert("Enter item");
				status = false;
			}
			
			
			else if (st == "" || st == null) {
					document.getElementById("sportTypelocation").innerHTML = alert("Enter SportType");
					status = false;
				}
			else if (quan == "" || quan == null) {
				document.getElementById("quantitylocation").innerHTML = alert("Enter quantity");
				status = false;
			}
			else if (pri == "" || pri == null) {
				document.getElementById("priceTypelocation").innerHTML = alert("Enter price");
				status = false;
			}
			else if (rat == "" || rat == null) {
				document.getElementById("ratinglocation").innerHTML = alert("Enter your rating");
				status = false;
			}
			
			
			else {
				document.getElementById("itemlocation").innerHTML = "Correct";
				status = true;
			}
			return status;
			
		}
	</script>
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
<div class = "center1">
<form name = "f2" action="addprod.ghd" onsubmit="return validate()" method="post">
<table>
<tr>
<td>Item</td>
<td>:</td>
<td><input type ="text" name = "item" placeholder="Enter Item to be added"><span id="itemlocation" style="color: red"></span></td>
</tr>
<tr>
<td>SportType</td>
<td>:</td>
<td><input type ="text" name = "sportType" placeholder="Enter the Sport it is used for"><span id="sportTypelocation" style="color: red"></span></td>
</tr>
<tr>
<td>Quantity</td>
<td>:</td>
<td><input type ="text" name = "quantity" placeholder="Enter Quantity"><span id="quantitylocation" style="color: red"></span></td>
</tr>
<tr>
<td>Price</td>
<td>:</td>
<td><input type ="text" name = "price" placeholder="Enter price per item"><span id="pricelocation" style="color: red"></span></td>
</tr>
<tr>
<td>Rating</td>
<td>:</td>
<td><input type ="number" name = "rating" placeholder="Ratings"><span id="ratinglocation" style="color: red"></span></td>
</tr>
<tr>
<td><input type ="reset" value ="Reset"></td>
<td></td>
<td><input type ="submit" value ="Submit"></td>
</tr>
</table>
</form>
</div>
<div class ="footer">
<footer>
  <p>Contact us:6789034521 visit us:www.ntcc.com
  <a href="mailto:hege@ghd.com">hege@ghd.com</a></p>
  </footer>
</div>
</body>
</html>
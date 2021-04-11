/**
 * 
 */
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
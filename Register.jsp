<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Graphical Password Authentication</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t3.focus();
	return false;
	}
	if(isNaN(formObj.t3.value)){
		window.alert("Please enter valid contact number");
		formObj.t3.focus();
		return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Email ID");
	formObj.t4.focus();
	return false;
	}
	var filter = /^([a-zA-Z0-9_\.\-])+\@(gmail+\.)+(com)+$/;
	if (!filter.test(ormObj.t4.value)) {
		window.alert('enter a valid email address');
		formObj.t4.focus();
		return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t5.focus();
	return false;
	}
	return true;
	}
	</script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<center><font size="4" color="yellow">Graphical Password Authentication </font></center>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul><center>
			<li class="first current_page_item"><a href="index.jsp"><font size="" color="yellow">Home</font></a></li>
			<li class="first current_page_item"><a href="UserLogin.jsp"><font size="" color="yellow">User Login Here</font></a></li>
			<li class="first current_page_item"><a href="Register.jsp"><font size="" color="yellow">New User Signup Here</font></a></li>
		</center></ul>	<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/investor.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<form name="f1" method="post" action="SignupAction" onsubmit="return validate(this);">
<br/>
   <h5><b>New User Signup Screen</b></h5>   
  
<%
	 String data=request.getParameter("t1");
	 if(data!=null){
		 out.println("<center> <font size=3 color=red>"+data+"</center>");
	 }
	 %>
				
						<table align="center" id="images" >
			 
			 <script>
    var count = 0;
	var output = "<tr><td><font size=3 color=black>Username</b></td><td><input type=text name=t1 style=font-family: Comic Sans MS size=30/></td></tr><tr><td colspan=5>";

	function shuffle(array) {
	   for (let i = array.length - 1; i > 0; i--) { 
	      const j = Math.floor(Math.random() * (i + 1)); 
         [array[i], array[j]] = [array[j], array[i]]; 
       } 
      return array; 
    }; 

	const myArray = ["1", "2", "3", "4", "5", "6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25"]; 
    const shuffledArray = shuffle(myArray);

    for (let i = 0; i < 25; i++) {
	    if(count === 5) {
		  output += "</td></tr>";
		  output += "<tr><td colspan=5>";
		  count = 0;
		}
		output += "<img src=samples/"+shuffledArray[i]+".jpg id="+shuffledArray[i]+" height=100 width=100></img>"; 
		count++;
	}
	output += "</td></tr>";
	document.getElementById("images").innerHTML = output;
</script>
         
		  <tr><td><font size="3" color="black">Password</b></td><td><input type="password" id="password" name="t2" style="font-family: Comic Sans MS" size="30" readonly/></td></tr>		

		   <tr><td><font size="3" color="black">Contact&nbsp;No</b></td><td><input type="text"  name="t3" style="font-family: Comic Sans MS" size="15"/></td></tr>

		   <tr><td><font size="3" color="black">Email&nbsp;ID</b></td><td><input type="text"  name="t4" style="font-family: Comic Sans MS" size="40"/></td></tr>

		   <tr><td><font size="3" color="black">Address</b></td><td><input type="text"  name="t5" style="font-family: Comic Sans MS" size="50"/></td></tr>
		  

			<tr><td></td><td><input type="submit" value="Submit">

<script>

	const images = document.querySelectorAll("img")

images.forEach(function(img){
  img.addEventListener("click", function(event){
  document.getElementById("password").value = "ChoosenImage"+event.target.id;
  
  })
})
</script>

			</td>
			</tr>
			</table>
				</div>	
					
				</div>
				<br/><br/>
	</body>
</html>
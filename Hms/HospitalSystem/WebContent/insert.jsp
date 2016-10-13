
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>
<head>
<title>Add Record </title>
<style>
*
{
margin:0px;
padding:0px;
}
#main
{
background-image:url(images/bg.png);
background-repeat:repeat;
background-size:100% 100%;
}

#logo
{
width:15%;
height: 150px;
float:left;
margin-left:10px;
}
#heading
{
width:84%;
float:left;
font-size:20px;
text-align:left;
}

#header
{
width:100%;
height:150px;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
    
}

.active {
    background-color: #4CAF50;
}

input[type=text],
input[type=number], 
select, 
textarea {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}


input[type=submit],
input[type=reset],
button[type=button]
 {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin-left: 150px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    
}

input[type=submit]:hover,
input[type=reset]:hover ,
button[type=button]:hover
 {
    background-color: #45a049;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}

div.form {
   margin:40px;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 40px;
}


</style>
</head>
<body id="main">

<!-- Header starts -->
<div id="header">
<div id="logo">
	<img alt="Logo" src="images/logo.png" width="150" height="150">

</div>

<div id="heading">
	<h1 style="margin-top:50px"><b>Hospital Management System</b></h1>

</div>

</div>
<!-- Header Ends -->
<ul>
	<li><a href="DoctorHome.jsp">Home</a></li>
	<li><a class="active" href="insert.jsp">Add Doctor</a></li>
	<li><a href="list.jsp">Manage Doctor</a></li>
 
</ul>
<div class="form" >
<form  action="save.jsp" name="insertDoctor" id="content" method="POST" >
			
			<!-- <label for="DoctorID" style="font-size:20px">Doctor ID	:*</label>
  			<input type="text" id="docID" name="DoctorID" placeholder="Enter Doctor ID" required autofocus="autofocus">	<br />
			 -->
			<label for="DoctorName" style="font-size:20px">Doctor Name	:*</label>
  			<input type="text" id="docName" name="DoctorName" placeholder="Enter Doctor Name" required autofocus="autofocus" >	<br /><br />
			
			<label for="Gender" style="font-size:20px">Gender	:</label>
			<select id="Gender" name="Gender">
				<option value="Male">Male</option>
				<option value="Female">Female</option>
				<option value="Other">Other</option>
			</select>
			
  			<!-- <input type="radio" id="gender" name="Gender" checked="checked" >Male
			<input type="radio" id="gender" name="Gender" >Female
			<input type="radio" id="gender" name="Gender" >Other	<br /><br /> -->
			
			<label for="Age" style="font-size:20px">Age	:*</label>
  			<input type="number" id="age" name="Age" placeholder="Enter The Age" required min="18" max="150">	<br /><br />
			
			<label for="Specialization" style="font-size:20px">Specialization	:*</label>
  			<input type="text" id="spec" name="Specialization" placeholder="Enter Doctor Specialization" required >	<br /><br />
			
			<label for="Experience" style="font-size:20px">Experience	:*</label>
  			<input type="number" id="exp" name="Experience" placeholder="Enter Doctor Experience" required min="0" max="50">	<br /><br />
			
			<label for="Achievement" style="font-size:20px">Achievements	:</label>
  			<textarea id="achieve" name="Achievement" placeholder="Enter Doctor Achievement(s)"  ></textarea>	<br /><br />
			
			<label for="PhoneNo" style="font-size:20px">Phone Number	:*</label>
  			<input type="text" id="number" name="PhoneNo" placeholder="Enter Doctor Phone Number" required >	<br /><br />
			
			<label for="EmailID" style="font-size:20px">Email ID	:*</label>
  			<input type="text" id="email" name="EmailID" placeholder="Enter Doctor Email ID" required >	<br /><br />
			
			<label for="Address" style="font-size:20px">Address	:*</label>
  			<textarea id="add" name="Address" placeholder="Enter Doctor Address"  required ></textarea>	<br /><br />
			
			<label for="CityName" style="font-size:20px">City	:*</label>
			<input type="text" id="state" name="CityName" placeholder="Enter City Name" required >	<br /><br />
			
			<label for="StateName" style="font-size:20px">State	:*</label>
			<input type="text" id="state" name="StateName" placeholder="Enter State Name" required >	<br /><br />
			
			<label for="Country" style="font-size:20px">Country	:*</label>
  			<input type="text" id="country" name="Country" placeholder="Enter Country Name" required >	<br /><br />
			
			<label for="PostalCode" style="font-size:20px">Postal Code	:*</label>
  			<input type="text" id="code" name="PostalCode" placeholder="Enter Postal Code" required maxlength="6">	<br /><br />
			
			<!-- <label for="time" style="font-size:20px">Available Time	:*</label>
  			<input type="datetime-local" value="2016-10-01T10:30:00" id="time" name="time" placeholder="Enter The Time of Doctor's Availability" required >	<br /><br />
			 -->
			<input type="submit" value="Insert" >
			<input type="reset" value="Reset" >
			
			<!-- <button type="button" onclick="window.location.href='DoctorHome.jsp'">Back -->
			
</form>
</div>

</body>
</html>

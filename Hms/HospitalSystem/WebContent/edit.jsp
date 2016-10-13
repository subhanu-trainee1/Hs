
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>Update Record</title>
<style>
#main
{
background-color:#f2f2f2;
}

#header
{
width:100%;
height:50px;
text-align:center;
text-decoration:underline;
color:#000000;
}

input[type=text],  
input[type=number],
input[type=email],
input[type=datetime-local]
{
width: 100%;
padding: 8px 20px;
margin: 8px 0;
box-sizing: border-box;
border: 2px solid;
border-radius: 4px;
border: 1px solid #ccc;
}
textarea, select
{
width: 100%;
padding: 8px 20px;
margin: 8px 0;
box-sizing: border-box;
border: 2px solid;
border-radius: 4px;
border: 1px solid #ccc;
}

input[type=submit], input[type=reset],input[type=button] {
background-color: #FFFFFF;
border: 1px solid #ffd8de;
color: green;
padding: 16px 32px;
text-decoration: none;
margin: 4px 2px;
cursor: pointer;
margin-left:120px;
border-radius:10px;
}

input[type=submit]:hover, input[type=reset]:hover ,input[type=button]:hover
{
background-color:#66bb55;
color:#FFFFFF;
}

textarea:invalid
{
border-color:#FF0000;
background:#f0dada;
}

input:invalid,
input:out-of-range {
border-color:#FF0000;
background:#f0dada;
}

#content
{
float:left;
width:800px;
height:300px;
margin-left:250px;
margin-top:50px;
}

#form
{
float:left;
width:100px;

}

</style>
</head>
<body>
<%-- <%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16;   }; "
           + "</style>");

%> --%>

<%@ page import ="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp" %>

<% 
String ID = request.getParameter("DoctorID");
System.out.println("DOCTORID = " + ID);
int DoctorID = Integer.parseInt(ID);
System.out.println( "DOCTORID1 = " + DoctorID);
/* Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "rapidd_db";
String driver = "com.mysql.jdbc.Driver"; */
try{
Class.forName(driver);
con = DriverManager.getConnection(url,username,password);
try{
Statement st = con.createStatement();
String query = "SELECT DoctorID,DoctorName, Gender, Age, Specialization, Experience, Achievement, PhoneNo, EmailID, Address, CityName, StateName, Country, PostalCode FROM doctordetails WHERE DoctorID=" + DoctorID ;
ResultSet rs = st.executeQuery(query);
System.out.println(query);
while (rs.next()) {
%>

<body id="main">
<!-- Header starts -->
<div id="header">
	<h1><b>Hospital Management System</b></h1>

</div>
<!-- Header Ends -->

<form action="update.jsp" name="insertDoctor" id="content" method="POST" >

	<fieldset>
		<legend><h2>Doctor Management System :</h2></legend>
			
			<label for="DoctorID" style="font-size:20px">Doctor ID	:*</label>
  			<input type="hidden" id="docID" name="DoctorID" value="<%=request.getParameter("DoctorID")%>" >	<br />
			
			<label for="DoctorName" style="font-size:20px">Doctor Name	:*</label>
  			<input type="text" id="docName" name="DoctorName" value="<%=request.getParameter("DoctorName")%>" required autofocus="autofocus" >	<br /><br />
			
			<label for="Gender" style="font-size:20px">Gender	:</label>
  			<input type="radio" id="gender" name="Gender" checked="checked" >Male
			<input type="radio" id="gender" name="Gender" >Female
			<input type="radio" id="gender" name="Gender" >Other	<br /><br />
			
			<label for="Age" style="font-size:20px">Age	:*</label>
  			<input type="number" id="age" name="Age" value="<%=request.getParameter("Age")%>" required min="18" max="150">	<br /><br />
			
			<label for="Specialization" style="font-size:20px">Specialization	:*</label>
  			<input type="text" id="spec" name="Specialization" value="<%=request.getParameter("Specialization")%>" required >	<br /><br />
			
			<label for="Experience" style="font-size:20px">Experience	:*</label>
  			<input type="number" id="exp" name="Experience" value="<%=request.getParameter("Experience")%>" required min="0" max="50">	<br /><br />
			
			<label for="Achievements" style="font-size:20px">Achievements	:</label>
  			<textarea id="achieve" name="Achievements" value="<%=request.getParameter("Achievements")%>"  ></textarea>	<br /><br />
			
			<label for="PhoneNo" style="font-size:20px">Phone Number	:*</label>
  			<input type="text" id="number" name="PhoneNo" value="<%=request.getParameter("PhoneNo")%>" required >	<br /><br />
			
			<label for="EmailID" style="font-size:20px">Email ID	:*</label>
  			<input type="text" id="email" name="EmailID" value="<%=request.getParameter("EmailID")%>" required >	<br /><br />
			
			<label for="Address" style="font-size:20px">Address	:*</label>
  			<textarea id="add" name="Address" value="<%=request.getParameter("Address")%>"  required ></textarea>	<br /><br />
			
			<label for="CityName" style="font-size:20px">City	:*</label>
			<input type="text" id="state" name="CityName" value="<%=request.getParameter("CityName")%>" required >	<br /><br />
			
			<label for="StateName" style="font-size:20px">State	:*</label>
			<input type="text" id="state" name="StateName" value="<%=request.getParameter("StateName")%>" required >	<br /><br />
			
			<label for="Country" style="font-size:20px">Country	:*</label>
  			<input type="text" id="country" name="Country" value="<%=request.getParameter("Country")%>" required >	<br /><br />
			
			<label for="PostalCode" style="font-size:20px">Postal Code	:*</label>
  			<input type="number" id="code" name="PostalCode" value="<%=request.getParameter("PostalCode")%>" required maxlength="6">	<br /><br />
			
			<!-- <label for="time" style="font-size:20px">Available Time	:*</label>
  			<input type="datetime-local" value="2016-10-01T10:30:00" id="time" name="time" placeholder="Enter The Time of Doctor's Availability" required >	<br /><br />
			 -->
			<input type="submit" value="Insert" >
			<input type="reset" value="Reset">
			<input type="button" value="Back" >
			
		</fieldset>

</form>

<%}

rs.close();	
con.close();

}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
<% out.println("<br>");
out.println("<a href='list.jsp'> RETURN TO MAIN PAGE </a>");
%>
</body>
</html>

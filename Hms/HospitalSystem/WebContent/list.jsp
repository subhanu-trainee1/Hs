
<%@ page language="java" import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp" %>

<html>
<head>
<title>Doctor Management System</title>
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
    width: 100%;
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
    background-color: #5b5;
    
}

.active {
    background-color: #4CAF50;
}

input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('images/search.png');
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}

div.table {
   	margin:40px;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 40px;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
    border-bottom: 1px black solid;
}

th {
    background-color: #4CAF50;
    color: white;
}

tr:hover {
	background-color: activeborder;
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
	<li><a  href="insert.jsp">Add Doctor</a></li>
	<li><a class="active" href="list.jsp">Manage Doctor</a></li>
 
</ul>
<div class="table">

<table >
<form>
  <input type="text" name="search" placeholder="Search..">
</form>
<tr>
</tr>
	<thead>
		<tr>
			<!-- <th>Doctor ID</th> -->
			<th>Doctor Name</th>
			<!-- <th>Gender</th>
			<th>Age</th> -->
			<th>Specification</th>
			<th>Experience</th>
			<th>Achievements</th>
			<th>Phone Number</th>
			<th>Email ID</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Country</th>
			<th>Postal Code</th>
			<th>ACTION</th>
		</tr>
	</thead>
										
<%

ResultSet rst=null;
Statement stmt=null;
try{
con=DriverManager.getConnection(url,username,password);
stmt=con.createStatement();
rst=stmt.executeQuery("SELECT * FROM doctordetails ");
while(rst.next()){

%>
	<tbody>
		<tr>
			<%-- <td><%=rst.getString(1)%></td> --%>
			<td><%=rst.getString(2)%></td>
			<%-- <td><%=rst.getString(3)%></td>
			<td><%=rst.getString(4)%></td> --%>
			<td><%=rst.getString(5)%></td>
			<td><%=rst.getString(6)%></td>
			<td><%=rst.getString(7)%></td>
			<td><%=rst.getString(8)%></td>
			<td><%=rst.getString(9)%></td>
			<td><%=rst.getString(10)%></td>
			<td><%=rst.getString(11)%></td>
			<td><%=rst.getString(12)%></td>
			<td><%=rst.getString(13)%></td>
			<td><%=rst.getString(14)%></td>
			<td class="da-icon-column">
				<a href="edit.jsp"><img src="images/pencil.png" /></a>
				<a href="delete.jsp"><img src="images/cross.png" /></a>
			</td>
		</tr>
											
<%
}
rst.close();
stmt.close();
con.close();
}catch(Exception e){
System.out.println(e.getMessage());
}
%>
	</tbody>
</table>

</div>
</body>
</html>


<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16;   }; "
           + "</style>");

%>

<%@ page import ="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp" %>

<%

/* Connection con = null;
String url = "jdbc:mysql://localhost:3306/rapidd_db";
//String db = "rapidd_db";
String driver = "com.mysql.jdbc.Driver"; */
try{
	
Class.forName(driver);
con = DriverManager.getConnection(url,username,password);

try{
	
Statement st = con.createStatement();
int DoctorID = Integer.parseInt(request.getParameter("DoctorID"));
String DoctorName = request.getParameter("DoctorName");
String Gender = request.getParameter("Gender");
int Age = Integer.parseInt(request.getParameter("Age"));
String Specialization = request.getParameter("Specialization");
String Experience = request.getParameter("Experience");
String Achievement = request.getParameter("Achievement");
String PhoneNo = request.getParameter("PhoneNo");
String EmailID = request.getParameter("EmailID");
String Address = request.getParameter("Address");
String CityName = request.getParameter("CityName");
String StateName = request.getParameter("StateName");
String Country = request.getParameter("Country");
String PostalCode = request.getParameter("PostalCode");
//TimeAvailable = request.getParameter("time");


int val = st.executeUpdate("INSERT INTO doctordetails "
        + "VALUES(DoctorID,'"+DoctorName+"','"+ Gender+"','"+ Age +"','"+ Specialization +"','"+ Experience +"','"+ Achievement +"','"+ PhoneNo +"','"+ EmailID +"','"+ Address +"','"+ CityName +"','"+ StateName +"','"+ Country +"','"+ PostalCode +"')");

con.close();
out.println("<p> The record of " +"<b>"+ DoctorName +"</b>" + " is successfully saved. </p>");
out.println("<br>");
out.println("<a href='DoctorHome.jsp'> RETURN TO MAIN PAGE </a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!" + ex);
}
}
catch (Exception e){
e.printStackTrace();
}

%>

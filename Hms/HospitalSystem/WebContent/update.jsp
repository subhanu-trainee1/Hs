

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
String ID =request.getParameter("DoctorID");
System.out.println(ID);
int DoctorID = Integer.parseInt(ID);

try{
Class.forName(driver);
con = DriverManager.getConnection(url,username,password);
try{
Statement st = con.createStatement();
String DoctorName = request.getParameter("DoctorName");
System.out.println(DoctorName);
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
System.out.println(PostalCode);
//TimeAvailable = request.getParameter("time");

int in = st.executeUpdate("UPDATE doctordetails SET DoctorName = '"+ DoctorName +"'" + ", Gender = '" + Gender+"'" + ", Age = '"+ Age +"'" + ", Specialization = '"+ Specialization +"'" + ", Experience = '"+ Experience +"'" + ", Achievements = '"+ Achievement +"'" + ", PhoneNo = '"+ PhoneNo +"'" + ", EmailID = '"+ EmailID +"'" + ", Address = '"+ Address +"'" + ", CityName = '"+ CityName +"'" + ", StateName = '"+ StateName +"'" + ", Country = '"+ Country +"'" + ", PostalCode = '"+ PostalCode +"' "
                                  + "WHERE DoctorID='"+ DoctorID +"'");
con.close();
out.println("<p> The record of " +"<b>"+ DoctorName +"</b>" + " is successfully updated. </p>");
out.println("<br>");
out.println("<a href='list.jsp'> RETURN TO MAIN PAGE </a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>


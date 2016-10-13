
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
String DoctorID =request.getParameter("DoctorID");
int ID = Integer.parseInt(DoctorID);
/* Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "rapidd_db";
String driver = "com.mysql.jdbc.Driver"; */
try{
Class.forName(driver);
con = DriverManager.getConnection(url,username,password);
try{
Statement st = con.createStatement();
String DoctorName =request.getParameter("DoctorName");
int in = st.executeUpdate("DELETE FROM doctordetails WHERE id='"+ ID +"'");
con.close();
out.println("<p> The record of " + DoctorName + " is Successfully Deleted. </p>");
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

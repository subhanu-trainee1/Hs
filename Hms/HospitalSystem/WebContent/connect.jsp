<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
<%@page language="java" import="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%
 	String password=null;
	String username=null;
	String url=null;
	String driver=null;
	Connection con = null;
	Properties props = new Properties();
	try
	{		
			
		props.load(getServletContext().getResourceAsStream("/WEB-INF/lib/database.properties"));
		url = props.getProperty("url");
		username = props.getProperty("username");
		password = props.getProperty("password");
		driver = props.getProperty("driver");
		
		Class.forName(props.getProperty("driver"));
		con = DriverManager.getConnection(props.getProperty("url"), 
										props.getProperty("username"), 
										props.getProperty("password"));
	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println(e);
	}
	
%>
</body>
</html>
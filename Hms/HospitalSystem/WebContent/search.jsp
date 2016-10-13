<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="connect.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
</head>


 <body>

 <sql:query dataSource="${snapshot}" var="sql">
SELECT * from doctordetails;
<!-- SELECT * FROM department where department_name ='"%search%"'-->
</sql:query>

  <FORM NAME="form1" METHOD="POST">
  <input type="text" name="search"/>
   <INPUT TYPE="BUTTON" VALUE="Button 1">
   </FORM><br>


    <table border=1>
        <thead>
            <tr>
                <th>department Id</th>
                <th>department Name</th>

                <th colspan=1>Action</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${sql.rows}">
                <tr>
                    <td><c:out value="${user.department_id}" /></td>
                    <td><c:out value="${user.department_name}" /></td>
                  </tr>
            </c:forEach>
        </tbody>
    </table>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="front.html" %>
    <%@page import="java.sql.*,java.util.*"%>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	}
catch(Exception e)
{
System.out.print(e);
//e.printStackTrace();
}
%>
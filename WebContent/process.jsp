<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
String fi=request.getParameter("id");
String last_name=request.getParameter("TEACHER");
PreparedStatement preparedStatement = null;
Connection con=null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	Statement st=conn.createStatement();
	//int i=st.executeUpdate("insert into timetable.monday(periods,id_"+fi+") values('"+last_name+"','"+fi+"')");
//	st.executeUpdate("alter table timetable.monday add column id_"+fi+" VARCHAR(25)");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+last_name+"' where periods=1");
	out.println("Data is successfully inserted!");
//System.out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
//e.printStackTrace();
}
%>
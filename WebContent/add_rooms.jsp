<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <head> 
  </head>
<body>
<%
class me extends Exception
{
	me()
	{
	}
	public String toString()
	{
		return "PLEASE ENTER VALID DATA";
	}
}
String block=request.getParameter("block");
String room=request.getParameter("room");
PreparedStatement preparedStatement = null;
ResultSet rs=null;
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	Statement st=conn.createStatement();
	if(block.equals(null)||room.equals(null))
	{
		throw new me();
	}
	block=block.toLowerCase();
	st.executeUpdate("insert into timetable.rooms(block,r_no) values('"+block+"','"+room+"')");
	rs=st.executeQuery("select id from timetable.rooms where block='"+block+"'");
	String co=new String();
	while(rs.next())
	{
	co=rs.getString(1);
	}
	int cnt=Integer.parseInt(co);
	session.setAttribute("column_name",cnt);
}
catch(Exception e)
{
	%>
	<script text="text/javascript" >

	window.location.href = "entry_rooms.jsp";
	window.onload=alert("Error~DATA already exists!!");
	</script>
	<% 
System.out.print(e);
//e.printStackTrace();
}
%>

<meta charset="UTF-8">
        <meta http-equiv="refresh" content="0; url=entry_periods.jsp">
        <script type="text/javascript">
            window.location.href = "entry_rooms2.jsp"
        </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <head> 
  </head>
  
<body>
<%
String fi=request.getParameter("ID");
String last_name=request.getParameter("TEACHER");
PreparedStatement preparedStatement = null;
Connection con=null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	Statement st=conn.createStatement();
	session.setAttribute("m_id",fi);
	last_name=last_name.toUpperCase();
out.print(fi);
	int i=st.executeUpdate("insert into timetable.main(id,name) values('"+fi+"','"+last_name+"')");
	st.executeUpdate("alter table timetable.monday add column id_"+fi+" VARCHAR(30)");
	st.executeUpdate("alter table timetable.tuesday add column id_"+fi+" VARCHAR(30)");
	st.executeUpdate("alter table timetable.wednesday add column id_"+fi+" VARCHAR(30)");
	st.executeUpdate("alter table timetable.thursday add column id_"+fi+" VARCHAR(30)");
	st.executeUpdate("alter table timetable.friday add column id_"+fi+" VARCHAR(30)");
	//st.executeUpdate("update timetable.monday set id_"+fi+"='"+last_name+"' where periods=1");
	//out.println("Data is successfully inserted!");
//System.out.println("Data is successfully inserted!");
}
catch(Exception e)
{
%>
<script text="text/javascript" >

window.location.href = "result.jsp";
window.onload=alert("Error~Id already exists!!");
</script>
<% 
//e.printStackTrace();
}
%>


        <!-- <meta http-equiv="refresh" content="0; url=entry_periods.jsp">-->
        <script type="text/javascript">
            window.location.href = "entry_periods.jsp"
        </script>
</body>
</html>
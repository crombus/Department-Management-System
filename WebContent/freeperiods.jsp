<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<body>
<%String fi=request.getParameter("id");
Statement statement = null;
ResultSet resultSet = null;
class me extends Exception
{
	me()
	{
	}
	public String toString()
	{
		return "PLEASE ENTER VALID DATA";
	}
}String day=request.getParameter("day"); 
String last_name=request.getParameter("TEACHER");

try{%>
<h1><%out.println(day.toUpperCase()); %></h1>
<h2><%out.println(last_name.toUpperCase()); %></h2>
<table border="1">
<tr>
<td>period</td>
<td>status</td>

</tr>

<%

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	Statement st=conn.createStatement();
	if(day.toLowerCase().equals("monday"))
	{
String sql ="select * from timetable.monday where id_"+fi+"='free'";
resultSet = st.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<td><%=resultSet.getString("id_"+fi+"") %></td>
</tr>
<%
}
}
	else	if(day.toLowerCase().equals("tuesday"))
	{
String sql ="select * from timetable.tuesday where id_"+fi+"='free'";
resultSet = st.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<td><%=resultSet.getString("id_"+fi+"") %></td>
</tr>
<%
}
}
	else	if(day.toLowerCase().equals("wednesday"))
	{
String sql ="select * from timetable.wednesday where id_"+fi+"='free'";
resultSet = st.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<td><%=resultSet.getString("id_"+fi+"") %></td>
</tr>
<%
}
}
	else	if(day.toLowerCase().equals("thursday"))
	{
String sql ="select * from timetable.thursday where id_"+fi+"='free'";
resultSet = st.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<td><%=resultSet.getString("id_"+fi+"") %></td>
</tr>
<%
}
}
	else	if(day.toLowerCase().equals("friday"))
	{
String sql ="select * from timetable.friday where id_"+fi+"='free'";
resultSet = st.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<td><%=resultSet.getString("id_"+fi+"") %></td>
</tr>
<%
}
}
	else
	{
		throw new me();
	}
	} catch (Exception e) {%>
		<script text="text/javascript" >
        
		window.location.href = "entry_free_periods.jsp";
		window.onload=alert("Invalid")
		</script><% 
		//out.print(e);
}

%>

</table>
<a href="front.jsp"><p class="small">HOME</p></a>
</body>
</html>
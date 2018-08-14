<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>period</td>
<td>status</td>

</tr>

<%
Statement statement = null;
ResultSet resultSet = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	Statement st=conn.createStatement();
	for(int i=1;i<3;i++)
	{
String sql ="select * from timetable.monday where id_"+i+"='free'";
resultSet = st.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<td><%=resultSet.getString("id_"+i+"") %></td>
<%

}
resultSet=null;
%>
<td>fr </td></tr><%  }
} catch (Exception e) {
e.printStackTrace();
}


%>

</table>
</body>
</html>
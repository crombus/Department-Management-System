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
<%
//String fi=request.getParameter("id");
//String last_name=request.getParameter("TEACHER");
Statement statement = null;
ResultSet resultSet = null;
//ResultSet resultSet1 = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	Statement st=conn.createStatement();
	String sql1="select * from timetable.main";
	resultSet=st.executeQuery(sql1);
	while(resultSet.next())
	{%>
	
	
<td><%=resultSet.getString("name") %></td>
<% }%>
</tr><% 
	resultSet=null;%><tr><td>MONDAY</td></tr>
	<% 
String sql ="select * from timetable.monday";
resultSet=st.executeQuery(sql1);
String co=new String();
while(resultSet.next())
{
co=resultSet.getString(1);
}
resultSet=null;
int cnt=Integer.parseInt(co);
resultSet = st.executeQuery(sql);
while(resultSet.next()){	
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<% int i=1;
while(i<cnt){
	String id=resultSet.getString("id_"+i+"");
	//out.println(id);
	//String id1[]=id.split(" ");
//if(id1.equals(null))
	{%>
<td><%=resultSet.getString("id_"+i+"") %></td>
<%i++;
}}}
//out.println("TUESDAY");
%><tr><td>TUESDAY</td></tr>
<% 
 sql ="select * from timetable.tuesday";
resultSet = st.executeQuery(sql);
while(resultSet.next()){	
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<% int i=1;
while(i<cnt-1){
	//String id=resultSet.getString("id_"+i+"");
	//out.println(id);
	//String id1[]=id.split(" ");
//if(id1.equals(null))
	{%>
<td><%=resultSet.getString("id_"+i+"") %></td>

<%i++;
}}}%><tr><td>WEDNESDAY</td></tr>
<% 
sql ="select * from timetable.wednesday";
resultSet = st.executeQuery(sql);
while(resultSet.next()){	
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<% int i=1;
while(i<cnt-1){
	//String id=resultSet.getString("id_"+i+"");
	//out.println(id);
	//String id1[]=id.split(" ");
//if(id1.equals(null))
	{%>
<td><%=resultSet.getString("id_"+i+"") %></td>

<%i++;
}}}%><tr><td>THURSDAY</td></tr>
<% 
sql ="select * from timetable.thursday";
resultSet = st.executeQuery(sql);
while(resultSet.next()){	
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<% int i=1;
while(i<cnt-1){
	//String id=resultSet.getString("id_"+i+"");
	//out.println(id);
	//String id1[]=id.split(" ");
//if(id1.equals(null))
	{%>
<td><%=resultSet.getString("id_"+i+"") %></td>

<%i++;
}}}%><tr><td>FRIDAY</td></tr>
<% 
sql ="select * from timetable.friday";
resultSet = st.executeQuery(sql);
while(resultSet.next()){	
%>
<tr>
<td><%=resultSet.getString("periods") %></td>
<% int i=1;
while(i<cnt-1){
	//String id=resultSet.getString("id_"+i+"");
	//out.println(id);
	//String id1[]=id.split(" ");
//if(id1.equals(null))
	{%>
<td><%=resultSet.getString("id_"+i+"") %></td>

<%i++;
}}}
}
 catch (Exception e) {
e.printStackTrace();
}


%>

</table>
</body>
</html>
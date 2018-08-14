<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <html><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <head> </head><body>
<%
String fi=request.getParameter("id");
String day=request.getParameter("day");
String first=request.getParameter("p1");
String second=request.getParameter("p2");
String third=request.getParameter("p3");
String fourth=request.getParameter("p4");
String fifth=request.getParameter("p5");
String sixth=request.getParameter("p6");
String seventh=request.getParameter("p7");
String eight=request.getParameter("p8");
PreparedStatement preparedStatement = null;
Connection con=null;
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
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "future250");
	Statement st=conn.createStatement();
	if(fi.isEmpty()||day.isEmpty()||first.isEmpty()||second.isEmpty()||third.isEmpty()||fourth.isEmpty()||fifth.isEmpty()||sixth.isEmpty()||seventh.isEmpty()||eight.isEmpty())
	{
		fi="free";
		day="free";
		first="free";
		second="free";
		third="free";
		fourth="free";
		fifth="free";
		sixth="free";
		seventh="free";
		eight="free";
	}
	if(day.toLowerCase().equals("monday"))
	{
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+first+"' where periods=1");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+second+"' where periods=2");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+third+"' where periods=3");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+fourth+"' where periods=4");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+fifth+"' where periods=5");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+sixth+"' where periods=6");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+seventh+"' where periods=7");
	st.executeUpdate("update timetable.monday set id_"+fi+"='"+eight+"' where periods=8");}
	else if(day.toLowerCase().equals("tuesday"))
	{
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+first+"' where periods=1");
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+second+"' where periods=2");
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+third+"' where periods=3");
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+fourth+"' where periods=4");
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+fifth+"' where periods=5");
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+sixth+"' where periods=6");
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+seventh+"' where periods=7");
	st.executeUpdate("update timetable.tuesday set id_"+fi+"='"+eight+"' where periods=8");}
	else if(day.toLowerCase().equals("wednesday"))
	{
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+first+"' where periods=1");
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+second+"' where periods=2");
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+third+"' where periods=3");
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+fourth+"' where periods=4");
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+fifth+"' where periods=5");
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+sixth+"' where periods=6");
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+seventh+"' where periods=7");
	st.executeUpdate("update timetable.wednesday set id_"+fi+"='"+eight+"' where periods=8");}
	else if(day.toLowerCase().equals("thursday"))
	{
	st.executeUpdate("update timetable.thrusday set id_"+fi+"='"+first+"' where periods=1");
	st.executeUpdate("update timetable.thursday set id_"+fi+"='"+second+"' where periods=2");
	st.executeUpdate("update timetable.thursday set id_"+fi+"='"+third+"' where periods=3");
	st.executeUpdate("update timetable.thursday set id_"+fi+"='"+fourth+"' where periods=4");
	st.executeUpdate("update timetable.thursday set id_"+fi+"='"+fifth+"' where periods=5");
	st.executeUpdate("update timetable.thursday set id_"+fi+"='"+sixth+"' where periods=6");
	st.executeUpdate("update timetable.thursday set id_"+fi+"='"+seventh+"' where periods=7");
	st.executeUpdate("update timetable.thursday set id_"+fi+"='"+eight+"' where periods=8");}
	else if(day.toLowerCase().equals("friday"))
	{
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+first+"' where periods=1");
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+second+"' where periods=2");
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+third+"' where periods=3");
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+fourth+"' where periods=4");
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+fifth+"' where periods=5");
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+sixth+"' where periods=6");
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+seventh+"' where periods=7");
	st.executeUpdate("update timetable.friday set id_"+fi+"='"+eight+"' where periods=8");}
	else
	{
		throw new me();
	}
	out.println("Data is successfully inserted!");
//System.out.println("Data is successfully inserted!");
}
catch(Exception e)
{%>
	<script text="text/javascript" >

	window.location.href = "entry_periods.jsp";
	window.onload=alert("Error~Id already exists!!");
	</script><%
out.print(e);
//e.printStackTrace();
}
%>

        <!-- <meta http-equiv="refresh" content="0; url=entry_periods.jsp">-->
        <script type="text/javascript">
            window.location.href = "entry_periods.jsp"
            	window.onload=alert("DATA INSERTED!!");
        </script>
</body></html>
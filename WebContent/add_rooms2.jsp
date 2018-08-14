<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*"%>
<%
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
ResultSet rs=null;
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
	//int n=session.getAttribute("column_name");
	first=first.toUpperCase();
	second=second.toUpperCase();
	third=third.toUpperCase();
	fourth=fourth.toUpperCase();
	fifth=fifth.toUpperCase();
	sixth=sixth.toUpperCase();
	seventh=seventh.toUpperCase();
	eight=eight.toUpperCase();
	if(day.toLowerCase().equals("monday"))
	{
	st.executeUpdate("insert into timetable.mr(id,period1,period2,period3,period4,period5,period6,period7,period8) values("+session.getAttribute("column_name")+",'"+first+"','"+second+"','"+third+"','"+fourth+"','"+fifth+"','"+sixth+"','"+seventh+"','"+eight+"')");
	}
	else if(day.toLowerCase().equals("tuesday"))
	{
		st.executeUpdate("insert into timetable.tr(id,period1,period2,period3,period4,period5,period6,period7,period8) values("+session.getAttribute("column_name")+",'"+first+"','"+second+"','"+third+"','"+fourth+"','"+fifth+"','"+sixth+"','"+seventh+"','"+eight+"')");
	}
	else if(day.toLowerCase().equals("wednesday"))
	{
		st.executeUpdate("insert into timetable.wr(id,period1,period2,period3,period4,period5,period6,period7,period8) values("+session.getAttribute("column_name")+",'"+first+"','"+second+"','"+third+"','"+fourth+"','"+fifth+"','"+sixth+"','"+seventh+"','"+eight+"')");
	}
	else if(day.toLowerCase().equals("thursday"))
	{
		st.executeUpdate("insert into timetable.thr(id,period1,period2,period3,period4,period5,period6,period7,period8) values("+session.getAttribute("column_name")+",'"+first+"','"+second+"','"+third+"','"+fourth+"','"+fifth+"','"+sixth+"','"+seventh+"','"+eight+"')");
	}
	else if(day.toLowerCase().equals("friday"))
	{
		st.executeUpdate("insert into timetable.fr(id,period1,period2,period3,period4,period5,period6,period7,period8) values("+session.getAttribute("column_name")+",'"+first+"','"+second+"','"+third+"','"+fourth+"','"+fifth+"','"+sixth+"','"+seventh+"','"+eight+"')");
	}
	else
	{
		throw new me();
	}
	//out.println(cnt);
	
	out.println("Data is successfully inserted!");
//System.out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
//e.printStackTrace();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<meta charset="UTF-8">
        <meta http-equiv="refresh" content="0; url=entry_periods.jsp">
        <script type="text/javascript">
            window.location.href = "entry_rooms2.jsp"
                alert ("DATA ENTERED SUCCESFULLY")
        </script>
</body>
</html>
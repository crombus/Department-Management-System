<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="addperiods.jsp">
ID:<br>
<input type="text" name="id" value=<%=session.getAttribute("m_id")%>>
<br>
DAY:<br>
<input type="text" name="day">
<br>
PERIOD 1:<br>
<input type="text" name="p1">
<br>
PERIOD 2:<br>
<input type="text" name="p2">
<br>
PERIOD 3:<br>
<input type="text" name="p3">
<br>
PERIOD 4:<br>
<input type="text" name="p4">
<br>
PERIOD 5:<br>
<input type="text" name="p5">
<br>
PERIOD 6:<br>
<input type="text" name="p6">
<br>
PERIOD 7:<br>
<input type="text" name="p7">
<br>
PERIOD 8:<br>
<input type="text" name="p8">
<br>
<br><br>
<input type="submit" value="submit">
</form>
</body>
</html>
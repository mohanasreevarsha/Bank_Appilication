<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
long accountnumber=Integer.parseInt(request.getParameter("accnum"));
String username=request.getParameter("uname");
String password=request.getParameter("psw");
String accountstatus=null;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("select *from bank where accountnumber=? and name=? and password=?");
	ps.setLong(1,accountnumber);
	ps.setString(2,username);
	ps.setString(3,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		accountstatus=rs.getString(7);
		out.print("My previous account status is:"+" "+accountstatus+"<p></p>");
	}
	else
		out.print("Enter valid details");
	accountstatus="Inactive";
	PreparedStatement ps1=con.prepareStatement("update bank set accountstatus=? where accountnumber=?");
	ps1.setString(1,accountstatus);
	ps1.setLong(2, accountnumber);
	int i=ps1.executeUpdate();
	out.print(i+" "+"My present account status:"+" "+accountstatus+"<p></p>");
	con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>

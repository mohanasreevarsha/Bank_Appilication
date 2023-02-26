<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div{
width:50%;
background-color:skyblue;
margin:10px;
padding:10px;
border-radius:40px;
}
</style>
</head>
<body>
<center>
<div>
<a href="homepage.jsp">Home</a>&nbsp&nbsp&nbsp&nbsp
<a href="newaccount.jsp">New Account</a>&nbsp&nbsp&nbsp&nbsp
<a href="Balance.jsp">Balance</a>&nbsp&nbsp&nbsp&nbsp
<a href="Deposit.jsp">Deposite</a>&nbsp&nbsp&nbsp&nbsp
<a href="Withdraw.jsp">Withdraw</a>&nbsp&nbsp&nbsp&nbsp
<a href="Transfer.jsp">Transfer</a>&nbsp&nbsp&nbsp&nbsp
<a href="Close.jsp">Close A/C</a>&nbsp&nbsp&nbsp&nbsp
<a href="AboutUS.jsp">About US</a>
</div>
</center>
<%@ page import="java.sql.*" %>
<%
long accountnumber=Long.parseLong(request.getParameter("accno"));
String name=request.getParameter("uname");
String password=request.getParameter("pswd");
long targetaccno=Long.parseLong(request.getParameter("tamun"));
long amount=Long.parseLong(request.getParameter("amun"));
double AMOUNT=0.0;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("select *from bank where accountnumber=? and name=? and password=?");
	ps.setLong(1,accountnumber);
	ps.setString(2,name);
	ps.setString(3,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		AMOUNT=rs.getInt(4);
		out.print("The account1 balance is:"+" "+AMOUNT+"<p></p>");
		out.print("The transfering amount is:"+" "+amount+"<p></p>");
		AMOUNT=AMOUNT-amount;
		out.print("After transfering amount dcreases to:"+" "+AMOUNT+"<p></p>");
	}
	else
		out.print("Enter valid details"+"<p></p>");
	PreparedStatement ps1=con.prepareStatement("update bank set AMOUNT=? where accountnumber=? and name=? and password=?");
	ps1.setDouble(1,AMOUNT);
	ps1.setLong(2,accountnumber);
	ps1.setString(3,name);
	ps1.setString(4,password);
	int i1=ps1.executeUpdate();
	out.print(i1+" "+"After transferring amount is updated"+"<p></p>");
	
	accountnumber=targetaccno;
	
	PreparedStatement ps2=con.prepareStatement("select *from bank where accountnumber=?");
	ps2.setLong(1, accountnumber);
	ResultSet rs1=ps2.executeQuery();
	if(rs1.next())
	{
		AMOUNT=rs1.getInt(4);
		AMOUNT=AMOUNT+amount;
		out.print("The account2 balance is increases to:"+" "+AMOUNT+"<p></p>");
	}
	
	PreparedStatement ps3=con.prepareStatement("update bank set AMOUNT=? where accountnumber=?");
	ps3.setDouble(1,AMOUNT);
	ps3.setLong(2,accountnumber);
	int i2=ps3.executeUpdate();
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>
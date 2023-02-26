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
background-color:orange;
margin:10px;
padding:5px;
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
<a href="AboutUS.jsp">About US</a><p></p>
</div>
</center>
<%@ page import="java.sql.*" %>
<%
long accountnumber=Long.parseLong(request.getParameter("accno"));
String username=request.getParameter("uname");
String password=request.getParameter("pswd");
double amount=Double.parseDouble(request.getParameter("amun"));
double AMOUNT=0.0;
out.print("<h1>Account Info</h1>");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("select *from bank where accountnumber=? and name=? and password=?");
	ps.setLong(1,accountnumber);
	ps.setString(2,username);
	ps.setString(3,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
    	AMOUNT=rs.getInt(4);
    	out.print("My previous account balance is : "+AMOUNT+"<br>");
    	out.print("My deposite balance is : "+ amount+"<br>");
    	AMOUNT= AMOUNT+amount;
    	out.print("My current balance is : "+AMOUNT+"<p></p>");
	}
	
    else
    	out.print(" Enter valid details"+"<p></p>");
	PreparedStatement ps1=con.prepareStatement("update bank set amount=? where accountnumber=?");
	ps1.setDouble(1,AMOUNT);
	ps1.setLong(2, accountnumber);
	int i=ps1.executeUpdate();
	out.print(i+" "+"After deposit record updated successfully");
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>

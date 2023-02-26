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
<center>
<body>
<form action="Closecode.jsp" method="post">

<h1 style="color:red">SDFC BANK</h1><p></p>
<h2 style="color:green">EXTRAORDINARY SERVICES</h2><p></p>
<div>
<a href="homepage.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="newaccount.jsp">New Account</a>&nbs;&nbsp;&nbsp;&nbsp;
<a href="Balance.jsp">Balance</a>&nbs;&nbsp;&nbsp;&nbsp;
<a href="Deposit.jsp">Deposite</a>&nbs;&nbsp;&nbsp;&nbsp;
<a href="Withdraw.jsp">Withdraw</a>&nbs;&nbsp;&nbsp;&nbsp;
<a href="Transfer.jsp">Transfer</a>&nbs;&nbsp;&nbsp;&nbsp;
<a href="Close.jsp.jsp">Close A/C</a>&nbs;&nbsp;&nbsp;&nbsp;
<a href="AboutUS.jsp">About US</a><p></p>
</div>
<table>
<h2 style="color:yellow">Close Account</h2>
<tr>
<td>Account Number:</td>
<td><input type="number" name="accnum"></td>
</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="uname"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="psw"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Submit">
<input type="reset" value="Clear"></td>
</tr>
</table>
</form>
</body>
</center>
</html>
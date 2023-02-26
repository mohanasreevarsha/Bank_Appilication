<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div{ 
width:60%;
padding:10px;
margin:5px;
background-color:orange;
border-radius:40px;
}</style>
</head>
<body>
<script>
function check()
{
	var v1=f.accno.value;
	var v2=f.uname.value;
	var v3=f.pswd.value;
	var v4=f.cpswd.value;
	var v5=f.amun.value;
	var v6=f.addr.value;
	var v7=f.mno.value;
	if(v1=="")
	{
		alert("please insert accountnumber");
		return false;
		}
	if(v2=="")
	{
		alert("please insert username");
		return false;
	}
	if(v3=="")
	{
		alert("please insert password");
		return false;
	}
	if(v4=="")
	{
		alert("please insert confirmpassword");
		return false;
	}
	if(v5=="")
	{
		alert("please insert amount");
		return false;
	}
	if(v6=="")
	{
		alert("please insert address");
		return false;
	}
	if(v7=="")
	{
		alert("please insert mobileno");
		return false;
	}
	}
</script>
<center>
<fieldset>
<h1 style="color:red">SDFC BANK</h1>
<h3 style="color:blue">EXTRAORDINARY SERVICES</h3>
<div>
<a href="homepage.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="newaccount.jsp">New Account</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Balance.jsp">Balance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Deposite.jsp">Deposite</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Withdraw.jsp">Withdraw</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Tranfer.jsp">Tranfer</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Close.jsp">CloseA/C</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="AboutUs.jsp">AboutUs</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<center>
<fieldset>
<h1 style="color:green">Open Account Form</h1>
<form action="Accountcode.jsp" method="post" name="f" onsubmit="return check()">
<table>
<tr><td>Account Number:</td>
<td><input type="number" name="accno"></td>

<tr><td>Name:</td>
<td><input type="text" name="uname"></td>

<tr><td>Pass word:</td>
<td><input type="password" name="pswd"></td>

<tr><td>Confirm_password:</td>
<td><input type="password" name="cpswd"></td>

<tr><td>Amount:</td>
<td><input type="number" name="amun"></td>

<tr><td>Address:</td>
<td><input type="text" name="addr"></td>

<tr><td>Mobile number:</td>
<td><input type="number" name="mno"></td>
<tr><td><input type="submit" value="submit"></td>
<td><input type="reset" value="clear"></td></tr>
</table>
</form>
</fieldset>
</center>
</fieldset>
</center>



</body>
</html>
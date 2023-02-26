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
background-color:pink;
padding:10px;
margin:5px;
border-radius:10px;
}</style>
</head>
<body>
<script>
function check()
{
	var v1=f.accno.value;
	var v2=f.uname.value;
	var v3=f.pswd.value;
	
	if(v1=="")
		{
		alert("please insert accountnumber:");
		return false;
		}
	if(v2=="")
	{
		alert("please insert username:");
		return false;
	}
	if(v3=="")
	{
		alert("please insert password:");
		return false;
	}
	}
</script><center>
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
<table>
<h1 style="color:orange">BALANCE FORM</h1>
<form action="Balancecode.jsp" method="post" name="f" onsubmit="return check()">
<tr><td>Account No:<td>
<td><input type="number" name="accno"></td></tr>

<tr><td>Name:<td>
<td><input type="text" name="uname"></td></tr>

<tr><td>Password:<td>
<td><input type="password" name="pswd"></td></tr>

<tr>
<td><input type="submit" value="submit"></td>
<td><input type="submit" value="clear"></td>
</tr>
</form>
</table>

</fieldset>
</center>
</fieldset>
</center>

</body>
</html>
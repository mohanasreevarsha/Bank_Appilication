<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%       
int accountnumber=Integer.parseInt(request.getParameter("accno"));
String name=request.getParameter("uname");
String password=request.getParameter("pswd");
String confirm_password=request.getParameter("cpswd");
double amount=Double.parseDouble(request.getParameter("amun"));
String address=request.getParameter("addr");
long mobile_number=Long.parseLong(request.getParameter("mno"));
String accountstatus="Active";
try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
  PreparedStatement ps=con.prepareStatement("insert into bank values(?,?,?,?,?,?,?)");
  ps.setInt(1,accountnumber);
  ps.setString(2,name);
  ps.setString(3,password);
  ps.setDouble(4,amount);
  ps.setString(5,address);
  ps.setLong(6,mobile_number);
  ps.setString(7,accountstatus);
  int i=ps.executeUpdate();
   out.print(i+"New record inserted successfully......!");
}
 catch(Exception ex)
 {
	out.print(ex);
 }
%>

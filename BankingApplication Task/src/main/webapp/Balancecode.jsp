<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
int accountnumber=Integer.parseInt(request.getParameter("accno"));
String name=request.getParameter("uname");
String password=request.getParameter("pswd");
try
{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
   PreparedStatement ps=con.prepareStatement("select *from bank where accountnumber=? and name=? and password=?");
   ps.setInt(1,accountnumber);
   ps.setString(2,name);
   ps.setString(3,password);
   ResultSet rs=ps.executeQuery();
   ResultSetMetaData rsmd=rs.getMetaData();
   out.print("Welcome to"+name+"<p></p>");
   out.print("<html><body><table border='2' align=center>");
   int n=rsmd.getColumnCount();
   for(int i=1;i<=n;i++)
	  out.println("<td><font color=blue size=3>"+"<br>"+rsmd.getColumnName(i));
   out.print("<tr>");
   while(rs.next()){
	   for(int i=1;i<=n;i++){
		if(i!=3){
	    out.println("<td><br>"+rs.getString(i));
	}
	else{
		out.println("<td><br> *****");
	}
  }
	out.println("<tr>");
}
out.println("</html></body></table>");
}
catch(Exception ex){
	out.println(ex);
}
%>
 


	


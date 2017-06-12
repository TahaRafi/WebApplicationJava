<%-- 
    Document   : Product
    Created on : Apr 16, 2017, 11:55:14 PM
    Author     : taha
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
          <%
String id = request.getParameter("userId");
String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String connectionUrl = "jdbc:sqlserver://TAHA;databaseName=Cart";
String dbName = "Cart";
String userId = "sa";
String password = "TAHA";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Productid</b></td>
<td><b>ProductName</b></td>
<td><b>ProductTypeID</b></td>
<td><b>Active</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM Product";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Product_ID") %></td>
<td><%=resultSet.getString("Product_Name") %></td>
<td><%=resultSet.getString("Parent_Type_ID") %></td>
<td><%=resultSet.getString("Active") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </body>
</html>

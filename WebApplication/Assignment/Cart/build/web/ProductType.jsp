<%-- 
    Document   : ProductType
    Created on : Apr 16, 2017, 11:55:06 PM
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
<td><b>ProductTypeid</b></td>
<td><b>ProductTypeName</b></td>
<td><b>ParentProductTypeId</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM Product_Type";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Product_Type_ID") %></td>
<td><%=resultSet.getString("Product_Type_Name") %></td>
<td><%=resultSet.getString("ParenT_Product_Type_ID") %></td>


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

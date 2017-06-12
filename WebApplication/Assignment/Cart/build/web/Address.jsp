<%-- 
    Document   : Address
    Created on : Apr 16, 2017, 11:54:52 PM
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
<td><b>Addressid</b></td>
<td><b>AddressType</b></td>
<td><b>RecipientName</b></td>
<td><b>AddressField1</b></td>
<td><b>AddressField2</b></td>
<td><b>Zipcode</b></td>
<td><b>city</b></td>
<td><b>country</b></td>
<td><b>Active</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM Address";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Address_ID") %></td>
<td><%=resultSet.getString("Address_Type") %></td>
<td><%=resultSet.getString("Recipient_Name") %></td>
<td><%=resultSet.getString("Address_Field1") %></td>
<td><%=resultSet.getString("Address_Field2") %></td>
<td><%=resultSet.getString("Zip_Code") %></td>
<td><%=resultSet.getString("City") %></td>
<td><%=resultSet.getString("Country") %></td>
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

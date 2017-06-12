<%-- 
    Document   : main
    Created on : Apr 10, 2017, 11:56:27 PM
    Author     : taha
--%>


<%@page import="Cart.SqlTableInsert"%>
<%@page import="Cart.InsertFactory"%>
<%@page import="Cart.SqlCustomerInsert"%>
<%@page import="Cart.SqlCustomerInsert.*"%>

<%@page import="com.sun.xml.internal.ws.client.sei.ResponseBuilder.Body"%>

<%@page import="javax.script.ScriptEngineManager"%>
<%@page import="javax.script.ScriptEngine"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    
 
</head>
 
<body>
   
    <p>Please click a button to insert Csv Table values into Customer Table.</p>

     <form >
        <input type="button" id="idname" value = "Customer" onclick="Customer()"/><br>
    </form>

    <p>Please click a button to insert Csv Table values into Promotion Table.</p>

     <form >
        <input type="button" id="idname" value = "Promotion" onclick="Promotion()"/><br>
    </form>

 
     <p>Please click a button to insert Csv Table values into Address Table.</p>

     <form >
        <input type="button" id="idname" value = "Address" onclick="Address()"/><br>
    </form>
    
    <p>Please click a button to insert Csv Table values into  Product Type Table.</p>

     <form >
        <input type="button" id="idname" value = "ProductType" onclick="Product_Type()"/><br>
    </form>
    
    
    <p>Please click a button to insert Csv Table values into   Product  Table.</p>

     <form >
        <input type="button" id="idname" value = "Product" onclick="Product()"/><br>
    </form>
    
    
    
    
      <p>Please click a button to insert Csv Table values into  Stock Table.</p>

     <form >
        <input type="button" id="idname" value = "Stock" onclick="Stock()"/><br>
    </form>
    

    <script type="text/javascript">
        function Customer(){
      
       
    <%
    InsertFactory Fact=new InsertFactory();
    SqlTableInsert customer=Fact.GetTable("Customer");
    customer.Insert();    


    %>
            

            window.location = "CustomerData.jsp";
       
        }

        
        </script>
        
        
         <script type="text/javascript">
        function Promotion(){
      
             <%
    InsertFactory Fact1=new InsertFactory();
    SqlTableInsert promotion=Fact1.GetTable("Promotion");
    promotion.Insert();    
    %>    
     window.location = "Promotion.jsp";
            //document.write("<h1>I am Customer</h1>");
       
        }

        
        </script>
        
          <script type="text/javascript">
        function Address(){
      
         <%
    InsertFactory Fact2=new InsertFactory();
    SqlTableInsert Address=Fact2.GetTable("Address");
    Address.Insert();    
    %>    
    window.location = "Address.jsp";
            //document.write("<h1>I am Customer</h1>");
       
        }

        
        </script>
        
       
             <script type="text/javascript">
        function  Product_Type(){
      
       <%
    InsertFactory Fact3=new InsertFactory();
    SqlTableInsert ProductType=Fact3.GetTable("ProductType");
    ProductType.Insert();    
    %>    
    window.location = "ProductType.jsp";
            //document.write("<h1>I am Customer</h1>");
       
        }

        
        </script>
        
        
        
            <script type="text/javascript">
        function  Product(){
       
         <%
    InsertFactory Fact4=new InsertFactory();
    SqlTableInsert Product=Fact4.GetTable("Product");
    Product.Insert();    
    %>   
       
    window.location = "Product.jsp";
            //document.write("<h1>I am Customer</h1>");
       
        }

        
        </script>
        
        
            <script type="text/javascript">
        function  Stock(){
      
         <%
    InsertFactory Fact5=new InsertFactory();
    SqlTableInsert Stock=Fact5.GetTable("Stock");
    Stock.Insert();    
    %>   
    window.location = "Stock.jsp";
            //document.write("<h1>I am Customer</h1>");
       
        }

        
        </script>
        
           
        
       
</body>
 
</html>
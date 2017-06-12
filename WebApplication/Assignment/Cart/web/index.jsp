<%-- 
    Document   : index
    Created on : Apr 10, 2017, 11:06:38 PM
    Author     : taha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Web Page</title>
<body>

    <p>Please click a button to redirect you to the page.</p>

    <br>

    <form>
        <input type="button" id="idname" value = "Click Please" onclick="goToInfo()"/><br>
    </form>

    <br>



    <script type="text/javascript">
        function goToInfo(){
             window.location = "main.jsp";
        }

        
        </script>
</body>
</html>

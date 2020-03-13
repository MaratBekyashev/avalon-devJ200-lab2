<%-- 
    Document   : index
    Created on : 13.03.2020, 18:48:58
    Author     : JAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <form action="servServlet" method="Get">
                <input type="text" name="add_param_1" size="20"/>  <!-- Поле ввода сообщения -->
                <input type="text" name="add_param_2" size="20"/>  <!-- Поле ввода сообщения -->
                <input type="submit" name="add_button" value="Сложить"/>
                <input type="reset" value="Очистить"/> 
            </form>              

            <form action="servServlet" method="Post">
                <input type="text" name="multi_param_1" size="20"/>  <!-- Поле ввода сообщения -->
                <input type="text" name="multi_param_2" size="20"/>  <!-- Поле ввода сообщения -->
                <input type="submit" name="multy_button" value="Умножить"/>
                <input type="reset"  value="Очистить"/> 
            </form>              

        <% String result = (String)request.getAttribute("result");
        if (result != null)
        out.println("<h2>"+ result +"</h2>");
    
    %>
    </body>
</html>

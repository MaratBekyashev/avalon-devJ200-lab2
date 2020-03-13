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
            <form action="loginServlet" method="Get">
               <table> 
                    <tr>
                      <td>
                       <input type="text" name="login" size="20"/>  <!-- Поле ввода сообщения -->
                      </td>
                    </tr>                
                    <tr>
                      <td>
                        <input type="password" name="pass" size="20"/>  <!-- Поле ввода сообщения -->
                      </td>
                    </tr>                
                    <tr>
                      <td>
                        <input type="submit" value="login"/>  
                      </td>
                    </tr>                
                    <tr>
                      <td>
                        <input type="submit" name="getMsg" value="getMessage"/>  
                      </td>
                    </tr>                
              </table>  
            </form>              


        <% String result = (String)request.getAttribute("result");
        if (result != null)
        out.println("<h2>"+ result +"</h2>");
    
    %>
    </body>
</html>

<%-- 
    Document   : forgot
    Created on : Apr. 6, 2022, 10:44:01 a.m.
    Author     : peony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
         <h1>Forgot Password</h1>
        <h2>Please enter your email address to retrieve your password</h2>
        <form action="forgot" method="post">
            Email Address: <input type="text" name="email" var="email"><br>
           
            <input type="submit" value="Submit">
        </form>
        
       
<!--        <form action="forgot" mathod="post">
            <br> comment 
            <p>If the address you entered is valid, you will receive an email very soon. Please check your email for your password </p>
            
        </form>-->
        
    </body>
</html>

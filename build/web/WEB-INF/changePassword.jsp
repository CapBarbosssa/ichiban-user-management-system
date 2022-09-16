<%-- 
    Document   : forgot
    Created on : 2022-4-6, 11:44:27
    Author     : peony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
    </head>
    <body>
        <h1>Change Password</h1>
        <form action="change" method="post">
            Enter a new password:<br>
            <input type="password" name="password"><br>
            <input type="hidden" name="uuid" value="${uuid}"/>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
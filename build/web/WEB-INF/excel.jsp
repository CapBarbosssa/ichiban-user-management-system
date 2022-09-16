<%-- 
    Document   : excel
    Created on : Apr. 24, 2022, 11:24:16 p.m.
    Author     : peony
--%>

<%@page import="models.Item"%>
<%@page import="models.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excel report</title>
    </head>
    <body>
       <h1>Ichiban Ramen Noodles </h1>
       <h2>User management Report</h2>
      <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
         <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Email</td>
            <td>Active</td>
            <td>Role</td>
         </tr>
         <%
                      List<User> users  = (List<User>)request.getAttribute("userList");
                      response.setContentType("application/vnd.ms-excel");
                      response.setHeader("Content-Disposition", "inline; filename="+ "ichiban ramen user report.xls");
                  
            for(User u: users){
            %>
         <tr>
            <td><%=u.getFirstName()%></td>
            <td><%=u.getLastName()%></td>
            <td><%=u.getEmail()%></td>
            <td><%=u.getActive()%></td>
            <td><%=u.getRole().getRoleId()%></td>
         </tr>
         <% 
            }
            %>
      </table>

      
        <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
         <tr>
            <td>Item Name</td>
            <td>Category Name</td>
            <td>Item Id</td>
            <td>Price</td>
            <td>Owner Email</td>
         </tr>
         <%
                      List<Item> items  = (List<Item>)request.getAttribute("itemList");
                      response.setContentType("application/vnd.ms-excel");
                      response.setHeader("Content-Disposition", "inline; filename="+ "employeereport.xls");
                  
            for(Item i: items){
            %>
         <tr>
            <td><%=i.getItemName()%></td>
            <td><%=i.getCategory().getCategoryName()%></td>
            <td><%=i.getItemId()%></td>
            <td><%=i.getPrice()%></td>
            <td><%=i.getOwner().getEmail()%></td>
         </tr>
         <% 
            }
            %>
      </table>

    </body>
</html>

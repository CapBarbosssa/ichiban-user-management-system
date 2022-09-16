<%-- 
    Document   : item
    Created on : Apr. 16, 2022, 8:28:44 p.m.
    Author     : peony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item List</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
                <link rel="stylesheet" href="css/login.css">
    </head>
      <body>
        <div class="container">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
         <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Ichiban Ramen Noodles</span>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="welcome" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
      </ul>

      <div class="col-md-3 text-end">

        <a href="welcome" class="btn btn-primary">Log out</a>
      </div>
    </header>
            </div>
      
<!--        <h2>Items for ${email}</h2>-->
<!--        <p>
            <a href="login">Log out</a>
             <a href="user?action=edit">Edit Account</a>
        </p>-->
   
        <div class="container">
            <div class="row">
                <div class="col">
                      <h1 class="display-5">Items for: ${email}</h1>
                      <div>  
                          <a href="user?action=edit&email=${email}" class="btn btn-primary">Edit Account</a>
                          <a href="deactive?action=delete&email=${email}" class="btn btn-outline-primary me-2">Deactive Account</a>
                      </div>
                           
<!--                    <h1>User Management System</h1>-->
                    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Item ID</th>
                                <th>Category Name</th>
                                <th>Item name</th>
                                <th>Price</th>
                                <th>Actions</th>
                              
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="iteml" items="${itemList}">
                                <tr>
                                    <td>${iteml.itemId}</td>
                                    <td>${iteml.category.categoryName}</td>
                                    <td>${iteml.itemName}</td>
                                    <td>$ ${iteml.price}</td>
                                    <td>
                                        <a href="item?action=edit&itemId=${iteml.itemId}"">Edit</a>
                                        <a href="item?action=delete&itemId=${iteml.itemId}"">Delete</a>

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <a href="item?action=add" class="btn btn-primary active" aria-current="page">Add New Item</a>
                    <br><!-- comment -->
                    
                </div>
            </div>
        </div>
        
    
            
          
    </body>
</html>

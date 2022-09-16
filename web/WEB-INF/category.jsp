<%-- 
    Document   : category
    Created on : Apr. 17, 2022, 10:28:03 p.m.
    Author     : peony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Item Category</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
       

    </head>
    <body>
    <div class="container">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
       <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
         <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Ichiban Ramen Noodles</span>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="welcome" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="user" class="nav-link px-2 link-dark">User</a></li>
        <li><a href="report" class="nav-link px-2 link-dark">Report</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
      </ul>
       

      <div class="col-md-3 text-end">
        <a href="welcome" class="btn btn-outline-primary me-2">Log out</a>
<!--        <a href="user?action=register" class="btn btn-primary">Sign-up</a>-->
      </div>
        </div>
        
        
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1 class="display-5">Ichiban Ramen Noodles Item Category List</h1>
                    
                    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Category ID</th>
                                <th>Category Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cate1" items="${cateList}">
                                <tr>
                                    <td>${cate1.categoryId}</td>
                                    <td>${cate1.categoryName}</td>
                                    <td>
                                        <a href="category?action=edit">Edit</a>
                                       

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <a href="category?action=add" class="btn btn-primary active" aria-current="page">Add New Category</a>
                    <br><!-- comment -->

                   
                </div>
            </div>
        </div>
        
    </body>
</html>

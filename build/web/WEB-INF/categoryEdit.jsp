<%-- 
    Document   : itemEdit
    Created on : Apr. 16, 2022, 9:28:17 p.m.
    Author     : peony
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Item Edit</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </head>
            <body class="text-center">
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
       <a href="welcome" class="btn btn-outline-primary me-2">Log out</a>
      </div>
    </header>
            </div>
                
    <main class="form-signin">
            
         <form action="category?action=${action}" method="post">
            <div class="container">

        <h1 class="h3 mb-3 fw-normal">${title}</h1>

        <div class="form-floating w-50 container-sm ">
          <input type="text" class="form-control" name="categoryId"  placeholder="Category Id">
          <label for="floatingInput">Category Id</label>
        </div>
        <div class="form-floating w-50 container-sm">
          <input type="text" class="form-control"  name="categoryName" placeholder="Category Name">
          <label for="floatingInput">Category Name</label>
        </div>
         
          <div class="form-floating w-50 container-sm">
              <button class="w-100 btn btn-lg btn-primary " type="submit">Submit</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2021 - 2022</p>
          </div>
            </div>
      </form>
    </main>


<%--    private String email;--%>
<%--    private boolean active;--%>
<%--    private String firstName;--%>
<%--    private String lastName;--%>
<%--    private String password;--%>
<%--    private Role role;--%>
        
<!--        <div class="container">
            <div class="row">
                <div class="col">
                    <h1>${title} Category</h1>
                  
                    <form action="category?action=${action}" method="post">
                        <div>Category ID???<input type="text" name="categoryId" /></div>
                        <div>Category Name???<input type="text" name="categoryName" /></div>
                
                        <button type="submit" >Submit</button>
                    </form>
                    

                </div>
            </div>
        </div>-->
        
    </body>
</html>

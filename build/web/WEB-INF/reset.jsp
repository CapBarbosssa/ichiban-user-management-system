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

            <title>My Notes</title>
               <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


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
<!--        <a href="login" class="btn btn-outline-primary me-2">Login</a>-->
        <a href="user?action=register" class="btn btn-primary">Sign-up</a>
      </div>
    </header>
            </div>

        <main class="form-signin">
            
        <form action="reset" method="post">
            <div class="container">

        <h1 class="h3 mb-3 fw-normal">Reset Password</h1>
        <p> Please enter your email address to retrieve your password</p>

        <div class="form-floating w-50 container-sm ">
          <input type="email" class="form-control" name="email" placeholder="name@example.com">
          <label for="floatingInput">Email address</label>
          <br>
          <div class="form-floating w-50 container-sm">
        <input class="w-100 btn btn-lg btn-primary " type="submit" value="Submit">
        <div >
           ${msg}
        </div>

        <p class="mt-5 mb-3 text-muted">&copy; 2021 - 2022</p>
          </div>
          
          
          
            </div>
      </form>
    </main>
       
       
    
<!--   <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
    </head>
    <body>
        <h1>Reset Password</h1>
        <form action="reset" method="post">
            Please enter your email address to retrieve your password.<br>
            Email Address: <input type="text" name="email"><br>
            <input type="submit" value="Submit">
        </form>
        <p>${msg}</p>
    </body>
</html>-->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>

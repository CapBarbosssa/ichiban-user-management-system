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
        <a href="login?lan=en" class="btn btn-outline-secondary btn-sm">English</a>
        <a href="login?lan=zh" class="btn btn-outline-secondary btn-sm">中文</a>
      </div>
    </header>
            </div>

        <main class="form-signin">
        <form action="login?" method="post">

        <div class="container">

        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

        <div class="form-floating w-50 container-sm ">
          <input type="email" class="form-control" name="email" value="${email}" placeholder="name@example.com">
          <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating w-50 container-sm">
          <input type="password" class="form-control"  name="password" placeholder="Password">
          <label for="floatingPassword">Password</label>
        </div>
          <div class="form-floating w-50 container-sm">
        <input class="w-100 btn btn-lg btn-primary " type="submit" value="Sign in">
        <div >
           ${msg}
       </div>
        <a href="reset">Forgot password?</a>
        <p class="mt-5 mb-3 text-muted">&copy; 2021 - 2022</p>
          </div>
          
          
          
            </div>
      </form>
    </main>
<!--            <h2>Login</h2>
            <form action="login?" method="post">
                email: <input type="text" name="email" value="${email}"><br>
                password: <input type="password" name="password"><br>
                <input type="submit" value="Sign in" class="btn btn-info">
                <p>${msg}</p>
            </form>
             <p>
                <a href="user?action=register">Create an account</a>
            </p>
            <p>
                <a href="forgot">Forgot password? Option1(NOT too secured path)</a>
            </p>

            <p>
                <a href="reset">Forgot password? Option2(Secured path)</a>
            </p>-->
               
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        </body>

    </html>

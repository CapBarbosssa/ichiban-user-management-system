<%-- 
    Document   : user_zh
    Created on : Apr. 23, 2022, 5:49:58 p.m.
    Author     : peony
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        
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
        <li><a href="welcome" class="nav-link px-2 link-secondary">主页</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">公司特色</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">产品价格</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">问答</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">关于本公司</a></li>
      </ul>
       

      <div class="col-md-3 text-end">
        <a href="welcome" class="btn btn-outline-primary me-2">登出</a>
<!--        <a href="user?action=register" class="btn btn-primary">Sign-up</a>-->
      </div>
        </div>
    </header>
        
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1 class="display-5">一级棒拉面用户管理系统</h1>
<!--                     <a href="login">Log out</a>-->
                    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>邮箱</th>
                                <th>名</th>
                                <th>姓</th>
                                <th>用户状态</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user1" items="${userList}">
                                <tr>
                                    <td>${user1.email}</td>
                                    <td>${user1.firstName}</td>
                                    <td>${user1.lastName}</td>
                                    <td>${user1.active ? "Y" : "N"}</td>
                                    <td>
                                        <a href="user?action=edit&email=${user1.email}">修改</a>
                                        <a href="user?action=delete&email=${user1.email}">删除</a>

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                <div class="btn-group">
                  <a href="user?action=add" class="btn btn-primary active" aria-current="page">新建用户</a>
                  <a href="category"  class="btn btn-primary">浏览产品分类</a>
                 
                </div>

                   
                </div>
            </div>
        </div>
        
    </body>
</html>

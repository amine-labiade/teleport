<!doctype html>
<html lang="en">
  <head>
    <title>UI look</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">   
    <link href="<%=request.getContextPath()%>/wwwroot/css/style.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
    <div class="wrapper d-flex">
        <%@include file="components/sidebar.jsp" %>
        <div class="main-wrapper flex-grow-1 d-flex flex-column justify-content-between">
            <div class="main-content flex-grow-1 d-100 " id="main">
                <div>
                    <span class="sidenav-toggle p-5" style="font-size:30px;cursor:pointer;" onclick="openNav()">&#9776</span>
                </div>
                <div class="p-5">
                    <h1 class="text-success">Login</h1>
                </div>
                <div class="w-50 mx-auto">
                    <form action="<%=request.getContextPath()%>/login" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">email</label>
                            <input type="email" class="form-control" name="email"  aria-describedby="emailHelp" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">password</label>
                            <input type="password" class="form-control" name="password"  placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
            <%@include file="components/bottom_bar.jsp"%>
        </div>
    </div>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.5.3/umd/popper.min.js" integrity="sha512-53CQcu9ciJDlqhK7UD8dZZ+TF2PFGZrOngEYM/8qucuQba+a+BXOIRsp9PoMNJI3ZeLMVNIxIfZLbG/CdHI5PA==" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
      <script src="<%=request.getContextPath()%>/wwwroot/js/main.js" type="text/javascript"></script>
  </body>
</html>
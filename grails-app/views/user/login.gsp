<%--
  Created by IntelliJ IDEA.
  User: amila
  Date: 6/17/15
  Time: 11:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>

<body>

<div class="content-body" style="margin-top: 43px;">
    <div class="container">

        <div class="col-lg-4 col-lg-offset-4">
            <div class="wrapper">
                <g:form controller="user" action="doLogin" method="post" class="form-signin">
                    <h3 class="form-signin-heading">SPD </h3>
                    <hr class="colorgraph"><br>
                    <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
                    <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
                    <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>
                </g:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
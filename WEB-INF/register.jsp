<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="">
    <title>Cosmos</title>
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="manifest.json">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/cosmos.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css">
  </head>
  <body class="authentication-body">
    <div class="container-fluid">
      <div class="authentication-header m-b-30">
        <div class="clearfix">
          <div class="pull-left">
            <a class="authentication-logo" href="index.html">
              <img src="<%=request.getContextPath()%>/adminResources/images/logo.png" alt="" height="25">
              <span>Smart Crop Detector</span>
            </a>
          </div>
          <div class="pull-right">
            <a href="/pages-login.html" class="btn btn-outline-info">Login</a>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
          <ul class="authentication-progress m-b-30">
            <li></li>
            <li class="active"></li>
            <li></li>
            <li></li>
          </ul>
          <div class="authentication-content m-b-30">
            <h3 class="m-b-30">Create Your Account</h3>
            <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
            <f:form id="registrationForm" modelAttribute="" action="" method="post" >
      
      		  <div class="form-group">
                <label for="form-control-2">FirstName</label>
                <f:input type="text" class="form-control"  path="firstName" placeholder="Jon" />
              </div>
      
			  <div class="form-group">
                <label for="form-control-2">LastName</label>
                <f:input type="text" class="form-control"  path="lastName" placeholder="Snow" />
              </div>      
       
              <div class="form-group">
                <label for="form-control-1">Email</label>
                <f:input type="email" class="form-control" path="" placeholder="Email" data-error="Please enter a valid email address." required />
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <label for="form-control-2">Password</label>
                <f:input type="password" class="form-control" path="" placeholder="min. 6 characters" />
              </div>

              
              <div class="clearfix">
                <div class="pull-left">
                  By clicking "Next" you agree to Our
                  <br><a href="#" class="text-info">Terms of Service</a> and <a href="#" class="text-info">Privacy Policy</a>
                </div>
                <div class="pull-right">
                  <button type="button" class="btn btn-info btn-labeled">Next
                    <span class="btn-label btn-label-right">
                      <i class="zmdi zmdi-chevron-right p-x-5"></i>
                    </span>
                  </button>
                </div>
              </div>
            </f:form>
          </div>
        </div>
      </div>
      <div class="authentication-footer">
      	<span class="text-muted"><a href="login">Click here</a> to go back to login page</span><br>
        <span class="text-muted">Need help? Contact us patelvenish8@gmail.com</span>
      </div>
    </div>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
  </body>
</html>
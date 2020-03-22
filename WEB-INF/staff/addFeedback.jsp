<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="">
    <title>Smart Crop Detector</title>
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-16x16.png" sizes="16x16">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/cosmos.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css">
  </head>
  <body class="layout layout-header-fixed layout-left-sidebar-fixed">
    <div class="site-overlay"></div>
    
    
    
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="menu.jsp"></jsp:include>
	<div class="site-content">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="m-y-0">Form validation</h3>
          </div>
          <div class="panel-body">
            <p class="text-muted m-b-15">
              We like to hear from you. Let us help to give you better expierence.</p>
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
        
        
        		 <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>        
                <f:form id="registrationForm" action="insertFeedback" method="post" modelAttribute="FeedbackVO" enctype="multipart/form-data" data-toggle="validator">
      
      				<div class="form-group">
                    <label for="form-control-2" class="control-label">Rating</label>
                    <f:input type="text" class="form-control" id="form-control-2" placeholder="Out of 5" path="rating" />
                
                  	</div>
      				
      				<div class="form-group">
                    <label for="form-control-4" class="control-label">Feedback</label>
                    <f:textarea  class="form-control" rows="3" path="feedback" />
                    <div class="help-block with-errors">Write some details about your feedback.</div>
                    </div>
     
      				<f:hidden path="feedbackId"/>
                    <f:hidden path="loginVO.loginId"/>
      				<button type="submit" class="btn btn-primary btn-block">Submit</button>
                </f:form>
      
      		</div>
     	</div>
   	 </div>
   </div>
  </div>
      
    
    
    <jsp:include page="footer.jsp"></jsp:include>
      
      
    
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/tables-datatables.min.js"></script>
  </body>
</html> 	
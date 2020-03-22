<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Photos</title>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="">
    <title>Cosmos</title>
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/adminResources/images/favicon-16x16.png" sizes="16x16">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/cosmos.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/application.min.css">
</head>
<body>

   <jsp:include page="header.jsp"></jsp:include>
   <jsp:include page="menu.jsp"></jsp:include>
    <jsp:include page="footer.jsp"></jsp:include>
    <div id="page-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel">
                                    <!-- Panel heading -->
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Reply Complain</h3>
                                    </div>
                                    <!-- Panel body -->
                                    
                                    
                                    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                                    
                                    
                                    <f:form id="registrationForm" action="insertReply" class="form-horizontal" method="post" modelAttribute="ComplainVO" enctype="multipart/form-data">
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label class="col-xs-3 control-label">Complain Subject</label>
                                                <div class="col-xs-5">
                                                    <f:input type="text" class="form-control" path="complainSubject" placeholder="First name" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-3 control-label">Complain Description</label>
                                                <div class="col-xs-5">
                                                    <f:input type="text" class="form-control" path="complainDescription" placeholder="First name" readonly="readonly"/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-xs-3 control-label">Reply</label>
                                                <div class="col-xs-5">
                                                    <f:input type="text" class="form-control" path="reply" placeholder="First name" />
                                                </div>
                                            </div>
                                            
                                            <f:hidden path="complainDate"/>
                                            <f:hidden path="replyDate"/>
                                            <f:hidden path="complainStatus"/>
                                            <f:hidden path="status"/>
                                            <f:hidden path="loginVO.loginId"/>
                                            <f:hidden path="complainId"/>
                                            <f:hidden path="complainFileName"/>
                                            <f:hidden path="complainFilePath"/>
                                            
										<div class="panel-footer">
                                            <div class="form-group">
                                                <div class="col-xs-9 col-xs-offset-3">
                                                    <button type="submit" class="btn btn-info btn-lg" name="signup" value="Sign up">
                                                    Submit
                                                    </button>
                                                </div>
                                            </div>
										</div>
                                    </f:form>
                                </div>
                                </div>
                            <div class="col-lg-6">
                                          </div>
                        </div>
                    </div>

</body>
</html>
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
    
    
    
    
    <div class="site-main">
      
      
    
    <jsp:include page="menu.jsp"></jsp:include><!-- 
      
      
      
      
 -->      <div class="site-content">
        <div class="panel panel-default panel-table">
          <div class="panel-heading">
            <h3 class="m-t-0 m-b-5">View Complaints</h3>
            
          </div>
          <div class="panel-body">
            <div class="table-responsive">
              <table class="table table-striped table-bordered dataTable" id="table-1">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Complaint Subject</th>
                    <th>Complaint Description</th>
                    <th>Complaint Status</th>
                    <th>Attachment</th>
                    <th>Reply</th>
                    
                  </tr>
                </thead>
                <tbody>
					           	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
                                   	
                                   	<c:forEach items="${complaintList}" var="i" varStatus="j">
                                   		<tr>
                                   			<td>${j.count}</td>
                                   			<td>${i.complainSubject}</td>
                                   			<td>${i.complainDescription}</td>
                                   			<td>${i.complainStatus}</td>
                                   			<td><a href="<%=request.getContextPath()%>/document/complain/${i.complainFileName}" target="_blank">VIEW</a></td>
                                   			<td>${i.reply}</td>
                                   		</tr>
                                   	
                                   	</c:forEach> 
                        
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="site-footer">
        2019 © Smart Plant Detector
      </div>
    </div>
    <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/cosmos.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/application.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/tables-datatables.min.js"></script>
  </body>
</html>
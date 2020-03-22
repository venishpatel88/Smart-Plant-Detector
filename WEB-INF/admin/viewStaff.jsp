<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Users</title>
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
   <div class="site-content">
        <div class="panel panel-default panel-table">
          <div class="panel-heading">
            <h3 class="m-t-0 m-b-5">DataTables</h3>
            <p class="text-muted m-b-0">Highly flexible tool, based upon the foundations of progressive enhancement, and will add advanced interaction controls to any HTML table.</p>
          </div>
          <div class="panel-body">
            <div class="table-responsive">
              <table class="table table-striped table-bordered dataTable" id="table-1">
                <thead>
                  <tr>
                  							<th>No</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Email</th>
                                            <th>Gender</th>
                                            <th>Phone No</th>
                                            <th>Area</th>
                                            <th>Address</th>
                  </tr>
                </thead>
                <tbody>
        							<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
                                   	
                                   	<c:forEach items="${staffList}" var="i" varStatus="j">
                                   		<tr>
                                   			<td>${j.count}</td>
                                   			<td>${i.firstName}</td>
                                   			<td>${i.lastName}</td>
                                   			<td>${i.loginVO.username}</td>
                                   			<td>${i.gender}</td>
                                   			<td>${i.phoneNO}</td>
                                   			<td>${i.areaVO.areaName}</td>
											<td>${i.address}</td>		                                   		
                                   		</tr>
                                   	
                                   	</c:forEach> 
                      
                </tbody>
                <tfoot>
                  <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                    <th>CSS grade</th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
   		</div>
   		    <jsp:include page="footer.jsp"></jsp:include>
   		
</body>
</html>
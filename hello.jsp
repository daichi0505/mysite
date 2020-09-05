<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String email="";

Cookie [] cookies= request.getCookies();

if(cookies !=null){
	for(Cookie cook : cookies){
		if(cook.getName().equals("email")){
			email=cook.getValue();
		break;
		}
	}
}

%>

<!DOCTYPE html>
<html>

<head>
<meta charaset="UTF-8"/>
<%--cdn bootstrap--%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<title>Cookie</title>
</head>



<body >

<div class="jumbotron" style="color:#000 background:#555">
	<h1>Test Page</h1>
	<p>This page is a test page of JSP Method</p>
</div>

<p/>
<div class="container">
	<div class="col-sm-6">
		<form method="POST" action="cookie.jsp" >
		emailaddress:
<p />
		<input type="text" name="email" value="<%=email %>" />
		<form/>
	</div>
</div>
	
		<form method="POST" action="cookie.jsp" class="form-horizontal" >
			<div class="form-group">
			あなたの血液型は？
			<select name="bdtype">
				<option>a</option>
				<option>b</option>
				<option>o</option>
			</select>
			<p />
			<input type="submit" style="color:#555" value="send"/>
			</div>
		</form>
	


<p />
<% 
response.setIntHeader("Refresh" ,600);
out.print(new Date());
 %>

<p />
<p />
<div>
<jsp:include page="include.jsp" />
<c:out value="hello taglibrary!!!" />
<p />
</div>
<%--jquery cdn--%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>

</body>
</html>

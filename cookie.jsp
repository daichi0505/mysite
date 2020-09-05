<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charaset="UTF-8"/>
<title>Cookie</title>
<%--cdn bootstrap--%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>

<body>
<div class="jumbotron">
  <h1 class="display-4">Test Page1</h1>
  <p class="lead">This is a test Page1</p>
  <hr class="my-4">
  <p /p>
  <a class="btn btn-primary btn-lg" href="https://wings.msn.to/" role="button">＜a/＞</a>
</div>

<%
Cookie cook =new Cookie("emailCookies", request.getParameter("email"));
cook.setMaxAge(60*60*60*60);
response.addCookie(cook);
%>

あなたの性格は…
<%
String bdtype=request.getParameter("bdtype");

if(bdtype.equals("a")){
out.println("<h1>aのあなたは二面性があって人には言えないことがある反面、コツコツと努力ができる性格です</h1>");
}else if(bdtype.equals("b")){
out.println("<h1>bのあなたは二面性があって人には言えないことがある反面、コツコツと努力ができる性格です</h1>");
}else{
out.println("<h1>あなたは二面性があって人には言えないことがある反面、コツコツと努力ができる性格です</h1>");
}
%>
<%--jquery cdn--%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
</body>
</html>

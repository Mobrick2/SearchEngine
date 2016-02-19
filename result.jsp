<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div>
       <form class="search" action="/SearchEngine/servlet/Test" method="get">
         <input type="text" size="60" width="5" name="query">
         <button type="submit">Search</button>
       </form>
     </div>
     <hr>
     
     <c:forEach var="page" items="${qrList}">
         <div>
           <a href ='${page.url}' target="_blank">${page.url}</a>
           <br>
           ${page.page_abstract}
           <br><br>
         </div>
         <br>
     </c:forEach>

  </body>
</html>

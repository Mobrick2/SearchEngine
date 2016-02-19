<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	   body{
	       nargin:0px;
	       padding:0px;
	       font-size:12px;
	       overflow:hidden;
	       text-align:center;
	   }
	   #container{
	      width:980px;
	   }
	   #something {
    	position: absolute;
    	height: 200px;
    	width: 600px;
    	margin: -100px 0 0 -200px;
    	top: 30%;
    	left: 45%;
	   }

	</style>
  </head>
  
  <body>
    <div id="container">
      <div id = "something">
         <img src="images/logo2.png" alt="Just do it!" height="70" width="200">
        <form class="search" action="/SearchEngine/servlet/Test" method="post">
         <input type="text" size="60" width="5" name="query" value="Input key words here" onfocus="javascript:if(this.value=='Input key words here')this.value='';">
         <button type="submit">Search</button>
       </form>
      </div>
    </div>
    
    
  </body>
</html>

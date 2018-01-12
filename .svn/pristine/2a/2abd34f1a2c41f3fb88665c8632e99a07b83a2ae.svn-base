<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo.jsp' starting page</title>
    
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
   <div style="height:500px;border: 1px red solid;">
    <c:forEach items="${list}" var="list" varStatus="index">
     <div style="height:300px;width:300px;border: 1px red solid;float:left;margin-left:10px">     
     <img src="${list.winnersPh}" style="height:100px; width:100px; ">
     <p>${list.winnersName}</p>
     </div>  
    </c:forEach>
    <c:forEach items="${prizeList}" var="prizeList" varStatus="index">
    <p>${prizeList.prizeName}</p>
    </c:forEach>
    </div> 
    
  </body>
</html>

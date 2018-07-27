<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
p.example1 { text-align: center;
             margin-top: 50px;
             margin-bottom: 250px;
             font-size: 400%;
             }
p.example2 { text-align: center;
             margin-top: 80px;
             margin-bottom: 80px;
             font-size: 300%;
             }
</style>
</head>
<body>
<div>
	<p class="example1">ログイン画面</p>
</div>

<c:if test="${errMsg != null}" >
  <div class="alert alert-danger" role="alert">${errMsg}</div>
</c:if>

<div>
	<form method="post" action="LoginServlet" id="example">
	 <p class="example2">ログインID <input type="text" name="loginid" form="example"></p>
	 <p class="example2">パスワード <input type="password" name="password" size="20" maxlength="20"></p>
	 <p class="example1" ><input type="submit" value="ログイン"> </p>
	</form>
</div>
</body>
</html>
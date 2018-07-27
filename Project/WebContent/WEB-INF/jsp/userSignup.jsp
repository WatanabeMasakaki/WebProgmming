<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー新規登録</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
p.example5 { text-align: center;
             margin-top: 5px;
             margin-bottom: 20px;
             }
p.example6 { text-align: center;
             margin-top: 30px;
             margin-bottom: 40px;
             }
</style>
</head>
<body>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="LogoutServlet" class="navbar-link logout-link">ログアウト</a></li>
    <li class="breadcrumb-item active" aria-current="page">${user.name}さん</li>
  </ol>
</nav>
<div class="sample">
	<p class="example5" >ユーザー新規登録</p>
</div>

<c:if test="${errMsg != null}" >
  <div class="alert alert-danger" role="alert">${errMsg}</div>
</c:if>

<form method="post" action="UserSignup" id="example">
<div class="container" >
  <div class="row">
    <div class="col-md">
      <h1>ログインID<br></h1>
      <h1>パスワード<br></h1>
      <h1>パスワード(確認)<br></h1>
      <h1>ユーザー名<br></h1>
      <h1>生年月日</h1>
    </div>
    <div class="col-md">
      <h1><input type="text" name="loginid" form="example"><br></h1>
      <h1><input type="text" name="password" form="example"><br></h1>
      <h1><input type="text" name="passwordck" form="example"><br></h1>
      <h1><input type="text" name="username" form="example"><br></h1>
      <h1><input type="text" name="birthdate" form="example"></h1>
    </div>
  </div>
<div class="sample3">
	<p class="example5" >
	<input type="submit" value="　　登録　　">
	</p>
</div>
</form>
<button type="button" class="btn btn-secondary" onclick="history.back()">　戻る　</button>
</body>
</html>
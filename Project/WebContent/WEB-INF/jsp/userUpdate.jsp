<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー情報更新</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
p.example9 { text-align: center;
             margin-top: 5px;
             margin-bottom: 20px;
             }
p.example10 { text-align: center;
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
	<p class="example9" >ユーザー情報更新</p>
</div>

<c:if test="${errMsg != null}" >
  <div class="alert alert-danger" role="alert">${errMsg}</div>
</c:if>

<form method="post" action="UserUpdate" id="example">
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
      <h1>${user.login_id}<br></h1>
      <h1><input type="password" name="password" form="example"><br></h1>
      <h1><input type="password" name="passwordck" form="example"><br></h1>
      <h1><input type="text" name="username" form="example" value ="${user.name}"><br></h1>
      <h1><input type="text" name="birthdate" form="example" value ="${user.birth_date}"></h1>
      <h1><input type="hidden" name="id" form="example" value="${user.id}"><br></h1>
    </div>
  </div>
</div>
<div class="sample3">
	<p class="example9" ><input type="submit" value="　　更新　　"> </p>
</div>
</form>
<button type="button" class="btn btn-secondary" onclick="history.back()">　戻る　</button>
</body>
</html>
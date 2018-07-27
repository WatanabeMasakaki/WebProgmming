<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー削除確認</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
p.example10 { text-align: center;
             margin-top: 5px;
             margin-bottom: 20px;
             }
p.example11 { text-align: center;
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
	<p class="example10" >ユーザー削除確認</p>
</div>
<div class="sample2">
	<p class="example10" >ログインID:${user.login_id}を本当に削除してよろしいでしょうか？</p>
</div>

<div class="container">
  <div class="row">

  <form method="get" action="UserListServlet" id="example">
   <div class="col-sm">
     <p><input type="submit" value="　　キャンセル　　"></p>
    </div>
  </form>

  <form method="post" action="UserDelete" id="example">
   <div class="col-sm">
    <p><input type="hidden" class="btn btn-secondary btn-lg" name="id2" value="${user.id}"></p>
     <p><input type="submit" value="　　OK　　"></p>
    </div>
  </form>

  </div>
</div>
</body>
</html>
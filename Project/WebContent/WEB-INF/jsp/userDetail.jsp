<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%@ page import="controller.UserDetailServlet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー情報詳細参照</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
p.example7 { text-align: center;
             margin-top: 5px;
             margin-bottom: 20px;
             }
p.example8 { text-align: center;
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
	<p class="example7" >ユーザー情報詳細参照</p>
</div>
<div class="container" >
  <div class="row">
    <div class="col-md">
      <h1>ログインID<br></h1>
      <h1>ユーザー名<br></h1>
      <h1>生年月日<br></h1>
      <h1>登録日時<br></h1>
      <h1>更新日時</h1>
    </div>
    <div class="col-md">
      <h1>${user.login_id}<br></h1>
      <h1>${user.name}<br></h1>
      <h1>${user.birth_date}<br></h1>
      <h1>${user.create_date}<br></h1>
      <h1>${user.update_date}</h1>
    </div>
  </div>
</div>
<button type="button" class="btn btn-secondary" onclick="history.back()">　戻る　</button>
</body>
</html>
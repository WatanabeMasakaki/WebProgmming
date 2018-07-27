
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ユーザ一覧画面</title>
    <!-- BootstrapのCSS読み込み -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- オリジナルCSS読み込み -->
    <link href="css/original/common.css" rel="stylesheet">
    <!-- Jqeryの読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <!-- BootstrapのJS読み込み -->
    <script src="js/bootstrap.min.js"></script>
    <!-- レイアウトカスタマイズ用個別CSS -->
    <style type="text/css">
p.example3 { text-align: center;
             margin-top: 50px;
             margin-bottom: 100px;
             font-size: 200%;
             }
    </style>
  </head>

<body>
<header>
      <nav class="navbar navbar-inverse">
      	<div class="container">
      		<div class="navbar-header">
            <a class="navbar-brand" href="userCreate.html">ユーザ管理システム</a>
      		</div>

          <ul class="nav navbar-nav navbar-right">
            <li class="navbar-text">${userInfo.name} さん </li>
  			<li class="dropdown">
  			  <a href="LogoutServlet" class="navbar-link logout-link">ログアウト</a>
            </li>
  		  </ul>
      	</div>
      </nav>
</header>

<button
      type="button" class="btn btn-secondary" onClick="location.href='UserSignup'">新規登録
</button>
<div class="sample">
	<p class="example3" >ユーザー一覧</p>
</div>

<c:if test="${errMsg != null}" >
  <div class="alert alert-danger" role="alert">${errMsg}</div>
</c:if>

<div class="container">
<div class="panel-body">
<div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">検索条件</div>
            </div>
            <div class="panel-body">
              <form method="post" action="UserListServlet" class="form-horizontal">
                <div class="form-group">
                  <label for="code" class="control-label col-sm-2">ログインID</label>
                  <div class="col-sm-6">
                    <input type="text" name="loginid" class="form-control"/>
                  </div>
                </div>
                <div class="form-group">
                  <label for="name" class="control-label col-sm-2">ユーザ名</label>
                  <div class="col-sm-6">
                    <input type="text" name="username" class="form-control"/>
                  </div>
                </div>
                <div class="form-group">
                  <label for="continent" class="control-label col-sm-2">生年月日</label>
                  <div class="row">
                    <div class="col-sm-2">
                      <input type="date" name="datestart" class="form-control" size="30"/>
                    </div>
                    <div class="col-xs-1 text-center">
                      ~
                    </div>
                    <div class="col-sm-2">
                      <input type="date" name="dateend" id="date-end" class="form-control"/>
                    </div>
                </div>
                </div>
              <p class="example3"><input type="submit" value="　　　検索　　　"></p>
              </form>
            </div>
            </div>
            </div>
 </div>
<div class="sample2">
	<form method="post" action="UserListServlet" id="example">

	</form>
</div>
<hr>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ログインID</th>
      <th scope="col">ユーザー名</th>
      <th scope="col">生年月日</th>
      <th scope="col">　　　　　　</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="user" items="${userList}">
    <tr>
      <td>${user.login_id}</td>
      <td>${user.name}</td>
      <td>${user.birth_date}</td>
      <td>
          <input type="button" value="詳細" onClick="location.href='UserDetail?id=${user.id}'">

         <!--ログインした(入力した)ユーザーのログインIDと表示するユーザーのログインIDの比較-->
         <c:if test = '${userInfo.login_id.equals(user.login_id) || userInfo.login_id.equals("admin") }'>
          <input type="button" value="更新" onClick="location.href='UserUpdate?id=${user.id}'">
         </c:if>

         <c:if test = '${userInfo.login_id.equals("admin")}'>
          <input type="button" value="削除" onClick="location.href='UserDelete?id=${user.id}'">
         </c:if>

      </td>
    </tr>
 </c:forEach>
  </tbody>
</table>
</html>
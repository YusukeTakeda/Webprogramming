<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja" dir="ltr">
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
      <link rel="stylesheet" href="style.css">
    <title>ユーザ情報更新</title>
  </head>
  <body>
    <header>
      <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">${user.name}さん</h5>
            <a class="btn btn-outline-primary" href="login.html">ログアウト</a>
    </header>

    <h1 class="text-center">ユーザ情報更新</h1>
    <div class="container">

    <c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
		  ${errMsg}
		</div>
	</c:if>

    <form method="post" action="UpdateServlet" >
        <div class="form-group">
        	<div class="form-group">
            <input type="hidden" name="id" class="form-control" value="${user.id}">
        </div>
            <label>ログインID</label>
            <input type="text" name="loginId" class="form-control" value="${user.loginId}" readonly="readonly">
        </div>
        <div class="form-group">
            <label>パスワード</label>
            <input type="password" name="password" class="form-control" value="">
        </div>
        <div class="form-group">
            <label>パスワード(確認)</label>
            <input type="password" name="passwordCnf" class="form-control" value="">
        </div>
        <div class="form-group">
            <label>ユーザ名</label>
            <input type="text" name="userName" class="form-control" value="${user.name}">
        </div>
        <div class="form-group">
            <label>生年月日</label>
            <input type="date" name= "birthDate" class="form-control" id="birthDate" value="${user.birthDate}">
          </div>
        <div class="checkbox">
            <label>
                <input type="checkbox">remember
            </label>
        </div>
          <button type="submit" class="btn btn-outline-danger">更新</button><br>
        </form>

    <a href="UserListServlet" class="float-left">戻る</a>
  </div>
<!-- for="birthDate" class="col-sm-2 col-form-label" -->
<!-- <div class="col-sm-10"> -->

  </body>
</html>

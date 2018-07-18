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
            <h5 class="my-0 mr-md-auto font-weight-normal">ユーザ名さん</h5>
            <a class="btn btn-outline-primary" href="login.html">ログアウト</a>
    </header>

    <h1 class="text-center">ユーザ情報更新</h1>
    <div class="container">
    <form>
        <div class="form-group">
            <label>ログインID</label>
            <input type="text" name="loginId" class="form-control">
        </div>
        <div class="form-group">
            <label>パスワード</label>
            <input type="password" name="password" class="form-control">
        </div>
        <div class="form-group">
            <label>パスワード(確認)</label>
            <input type="password" name="passwordConf" class="form-control">
        </div>
        <div class="form-group">
            <label>ユーザ名</label>
            <input type="text" name="userName" class="form-control">
        </div>
        <div class="form-group">
            <label>生年月日</label>
            <input type="date" class="form-control" id="birthDate" value="1992-07-06">
          </div>
        <div class="checkbox">
            <label>
                <input type="checkbox">remember
            </label>
        </div>
          <button type="submit" class="btn btn-outline-danger">更新</button><br>

    <a href="userList.html" class="float-left">戻る</a>
  </div>
<!-- for="birthDate" class="col-sm-2 col-form-label" -->
<!-- <div class="col-sm-10"> -->

  </body>
</html>

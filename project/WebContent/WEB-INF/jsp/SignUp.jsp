<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>ユーザ新規登録</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  </head>
  <body>
    <h1 class="text-center">ユーザ新規登録</h1>
    <form action ="SignUpServlet" method="post">
      <div class="container">
      <div class="form-group">
        <label for="formGroupExampleInput">ログインID</label>
        <input type="text" name="loginId" class="form-control" id="formGroupExampleInput" placeholder="ログインID">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">パスワード</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="パスワード">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">パスワード(確認)</label>
        <input type="password" name="passwordCnf" class="form-control" id="exampleInputPassword1" placeholder="パスワード(確認)">
      </div>
      <div class="form-group">
        <label for="formGroupExampleInput2">ユーザ名</label>
        <input type="text" name="userName" class="form-control" id="formGroupExampleInput2" placeholder="ユーザ名">
      </div>
      <div class="form-group">
        <label for="formGroupExampleInput2">生年月日</label>
        <input type="date" name="birthDate" class="form-control" id="formGroupExampleInput2" placeholder="生年月日">
      </div>
     <div class="form-group form-check">
       <input type="checkbox" class="form-check-input" id="exampleCheck1">
       <label class="form-check-label" for="exampleCheck1">Check me out</label>
     </div>
     <button type="submit" class="btn btn-primary">登録</button>
   </form><br>
    <a href="UserListServlet" class="float-left">戻る</a>
  </body>
</html>

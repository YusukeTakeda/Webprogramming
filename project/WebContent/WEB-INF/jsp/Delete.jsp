<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja" dir="ltr">
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>ユーザ削除確認</title>
  </head>
  <body>
    <h1 class="text-center">ユーザ削除確認</h1>
      <div class="container">
        <p>ログインID:${user.loginId}</p>
        <p>を本当に削除してよろしいですか?</p>
         <form action="DeleteServlet" method="post">
         <input type="hidden" name="id" class="form-control" value="${user.id}">
        <a class="btn btn-outline-primary" href="UserListServlet">いいえ</a>
        <button type="submit" class="btn btn-outline-light">はい</button>
         <br><a href="UserListServlet" class="float-left">戻る</a>
         </form>
      </div>
  </body>
</html>

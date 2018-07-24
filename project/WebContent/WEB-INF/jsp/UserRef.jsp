<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja" dir="ltr">
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <title>ユーザ情報詳細参照</title>
  </head>
  <body>
    <header>
      <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">${user.name}さん</h5>
            <a class="btn btn-outline-primary" href="login.html">ログアウト</a>
    </header>
    <h1 class="text-center">ユーザー情報詳細参照</h1>
    <div class="container">
    <ul>
      <li>ログインID:${user.loginId}</li>
      <li>ユーザ名:${user.name}</li>
      <li>生年月日:${user.birthDate}</li>
      <li>登録日時:${user.createDate}</li>
      <li>更新日時:${user.updateDate}</li>
    </ul>
    <a href="UserListServlet" class="float-left">戻る</a>
  </div>


  </body>
</html>

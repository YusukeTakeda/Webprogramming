<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<h1 class="text-center">ログイン画面</h1>

<form>
  <div class="container">
  <div class="form-group">
    <label for="email">ログインID</label>
    <input type="email" class="form-control" id="email" placeholder="ログインID">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">パスワード</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>

  <button type="submit" class="btn btn-primary">ログイン</button>
</form>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja" dir="ltr">
  <head>
    <title>ユーザ一覧</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <meta charset="utf-8">
</head>
<header>
  <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 border-bottom box-shadow">
        <h5 class="my-0 mr-md-auto font-weight-normal">ユーザ名さん</h5>
        <a class="btn btn-outline-primary" href="login.html">ログアウト</a>
        <a class="btn btn-outline-primary" href="SignUp.html">新規登録</a>
</header>
  <body>
    <h1 class="text-center">ユーザ一覧</h1>

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
      <div class="form-group row">

        <label for="birthDate" class="col-sm-2 col-form-label">生年月日</label>

        <div class="row col-sm-10">
          <div class="col-sm-5">
            <input type="date" name="date-start" id="date-start" class="form-control"/>
          </div>

          <div class="col-sm-1 text-center">
            ~
          </div>
          <div class="col-sm-5">
            <input type="date" name="date-end" id="date-end" class="form-control"/>
          </div>
        </div>
      </div>
      <div class="text-right">

      <button type="submit" class="btn btn-primary">検索</button>
    </form>
    <br>


    <div class="panel panel-primary">
  <!-- Table -->
  <div class="table-responsive">
    <table class="table table-striped table-bordered table-hover">
      <thead>
        <tr>
          <th>ログインID</th><th>ユーザ名</th><th>生年月日</th><th> </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>id0001</td><td>田中太郎</td><td>1989年04月26日</td>
          <td>
            <a class="btn btn-primary" href="userRef.html">詳細</a>
            <a class="btn btn-success" href="update.html">更新</a>
            <a class="btn btn-danger" href ="delete.html">削除</a>
          </td>
        </tr>
        <tr>
          <td>id0002</td><td>佐藤二朗</td><td>2001年11月12日</td>
          <td>
            <a class="btn btn-primary" href="userRef.html">詳細</a>
            <a class="btn btn-success" href="update.html">更新</a>
            <a class="btn btn-danger" href ="delete.html">削除</a>
          </td>
        </tr>
        <tr>
          <td>id0003</td><td>佐藤真司</td><td>2000年01月01日</td>
          <td>
            <a class="btn btn-primary" href="userRef.html">詳細</a>
            <a class="btn btn-success" href="update.html">更新</a>
            <a class="btn btn-danger" href ="delete.html">削除</a>
          </td>
        </tr>
      </tbody>
    </table>
  </div><!--/table-responsive-->
</div><!--/panel-->



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>
</html>

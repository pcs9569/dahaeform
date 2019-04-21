<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>다해폼: 하고 싶은 거 다 해!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- bootstrap을 쓰기 위해 필요한 태그 -->
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="./js/myscript.js"></script>
  <link href="./css/mystyle.css" rel="stylesheet" type="text/css">
  <link href="./css/bootstrap.css" rel="stylesheet" type="text/css">
  <link rel="shortcut icon" type="image/x-icon" href="../img/pix_elephant.jpg">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/dahaeform"><strong>DahaeForm</strong></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">공지사항</a></li>
        <li><a href="#band">Q&A</a></li>
        <li><a href="/dahaeform/loginform.do">로그인 • 가입</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>

<div style="margin-top:50px">
<!-- header.jsp 끝 -->

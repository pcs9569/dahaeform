<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>다해폼: 하고 싶은 거 다 해!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- bootstrap을 쓰기 위해 필요한 태그 -->
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="./css/mystyle.css" rel="stylesheet" type="text/css">
  <link href="./css/bootstrap.css" rel="stylesheet" type="text/css">
  <link rel="shortcut icon" type="image/x-icon" href="img/pix_elephant.jpg">
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

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="./img/toystory1.jpg" alt="toystory1.jpg" width="1200" height="700">
        <div class="carousel-caption">
          <input type="button" style="color:black;" value="지금 시작하세요" onclick="alert('로그인 페이지로 이동합니다')">
          <h3>제목</h3>
          <p>내용</p>
        </div>      
      </div>

      <div class="item">
        <img src="./img/toystory2.jpg" alt="toystory2.jpg" width="1200" height="700">
        <div class="carousel-caption">
          <h3>제목</h3>
          <p>내용</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="./img/toystory3.jpg" alt="toystory3.jpg" width="1200" height="700">
        <div class="carousel-caption">
          <h3>제목</h3>
          <p>내용</p>
        </div>      
      </div>
    </div>

    
</div>

<!-- Footer -->
<footer class="text-center">
  <!-- <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br> -->
  <p>Copyright &copy; 2019 DahaeForm <br>All rights reserved.</p>
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>
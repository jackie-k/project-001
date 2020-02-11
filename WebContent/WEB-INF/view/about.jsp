<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>웹페이지 정보</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="../../css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="../../css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="../../css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="../../css/style.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Gaegu|Hi+Melody|Poor+Story|Sunflower:300&display=swap&subset=korean" rel="stylesheet">
</head>

<!--
   //////////////////////////////////////////////////////
   2019 1학년 2학기 개인 프로젝트
   주제 : 서울 맛집 찾기 어플 (챗봇 활용)
   페이지 명: 웹사이트 정보 페이지
   Email: 1920110007@office.kopo.ac.kr
   //////////////////////////////////////////////////////
-->

<body style="background-image:url(../../img/res_img02.jpg); background-size: cover;">
<!--============================= HEADER =============================-->
<jsp:include page="/WEB-INF/view/header.jsp"></jsp:include>
<!--//END HEADER -->
<!--============================= DETAIL =============================-->

<script src="https://static.landbot.io/landbot-widget/landbot-widget-1.0.0.js"></script>
<script>
    var myLandbot = new LandbotPopup({
        index: 'https://landbot.io/u/H-322359-HWGIY1P38E7NBBP1/index.html',
    });
</script>

<section class="section-header bg-1" style="min-height: 600px">
    <div class="container" style="border: solid; box-shadow: 0 .5rem 1rem dimgrey !important; background-color: #252a33; border-radius: .5rem!important; color: #FFFFFF; margin-top: 50px; margin-bottom: 30px;">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="text-center p-5 shadow rounded">
                    <h2 class="mb-3" style="font-family: 'Gaegu'">방문해주셔서 감사합니다.</h2>
                    <h5 class="mb-3" style="font-family: 'Gaegu'">서울 내의 맛집을 검색하기 위한 웹사이트입니다.</h5>
                    <br>
                    <h6 style="font-family: 'Gaegu'">검색을 통해 맛집을 직접 찾아보세요!</h6>
                    <br>
                    <ul class="list-unstyled mb-4">
                        <li>먹고싶은 메뉴가 정해지지 않은 경우</li>
                        <li>챗봇을 통해 다양한 카테고리들 중 선택하여</li>
                        <li>맛집을 추천해드리는 서비스를 제공하고 있습니다.</li>
                        <br>
                        <li>다양한 맛집 정보들은 추후 업데이트 예정입니다.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


<!--//END DETAIL -->
<!--============================= FOOTER =============================-->
<jsp:include page="/WEB-INF/view/footer.jsp"></jsp:include>
<!--//END FOOTER -->





<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="../../js/jquery-3.2.1.min.js"></script>
<script src="../../js/popper.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>

<script>
    $(window).scroll(function() {
        // 100 = The point you would like to fade the nav in.

        if ($(window).scrollTop() > 100) {

            $('.fixed').addClass('is-sticky');

        } else {

            $('.fixed').removeClass('is-sticky');

        }
    });
</script>
</body>

</html>


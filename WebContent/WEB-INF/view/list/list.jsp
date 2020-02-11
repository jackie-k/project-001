<%@ page import="poly.dto.ListDTO" %>
<%@ page import="poly.util.CmmUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="poly.dto.PagingDTO" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    List<ListDTO> lList = (List<ListDTO>) request.getAttribute("lList");
    String ButtonValue = CmmUtil.nvl((String)request.getAttribute("ButtonValue"));
    PagingDTO paging= (PagingDTO)request.getAttribute("paging");
    if(paging == null){
        paging = new PagingDTO();
    }
%>

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
    <!-- Favicons -->
    <link rel="shortcut icon" href="#">
    <!-- Page Title -->
    <title>식당 목록</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="/css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="/css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="/css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/css/style.css">
    <!-- font awsome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <!--lee_css-->
    <link rel="stylesheet" href="/css/lee_css.css">
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Gaegu|Hi+Melody|Poor+Story|Sunflower:300&display=swap&subset=korean" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
</head>

<!--
   //////////////////////////////////////////////////////
   2019 1학년 2학기 개인 프로젝트
   주제 : 서울 맛집 찾기 어플 (챗봇 활용)
   페이지 명: 목록 페이지
   Email: 1920110007@office.kopo.ac.kr
   //////////////////////////////////////////////////////
-->

<body>
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

<section>
    <div style="min-height:900px;">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7 responsive-wrap">
                    <div class="row detail-filter-wrap">
                        <div class="col-md-4 featured-responsive">
                            <div class="detail-filter-text">
                                <p><%=lList.size()%> Results</p>
                            </div>
                        </div>
                        <div class="col-md-8 featured-responsive">
                            <div class="detail-filter">


                                <div class="map-responsive-wrap">
                                    <a class="map-icon" style="margin-top: 0%;" href="#" id="map-icon"><span class="icon-location-pin"></span></a>
                                </div>


                            </div>
                        </div>
                    </div>


                    <div class="row light-bg detail-options-wrap">
                        <%for (int i = 0; i < lList.size(); i++) { %>
                        <div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
                            <div class="featured-place-wrap">

                                <a href="listDetail.do?res_name=<%=lList.get(i).getRes_name()%>">
                                    <img src='/img/<%=lList.get(i).getRes_name()%>.jpg' class="img-fluid" alt="#">
                                    <div class="featured-title-box">
                                        <h6><%=lList.get(i).getRes_name()%>
                                        </h6>
                                        <p class="long-category"><%=lList.get(i).getRes_cat()%>
                                        </p> <span>• </span>
                                        <p><span><%=lList.get(i).getRes_price()%></span></p>
                                        <ul>
                                            <li><span class="icon-location-pin"></span>
                                                <p class="long-text"><%=lList.get(i).getRes_add()%>
                                                </p>
                                            </li>
                                            <li><span class="icon-screen-smartphone"></span>
                                                <p class="long-text"><%=lList.get(i).getRes_tel()%>
                                                </p>
                                            </li>
                                            <li><span class="icon-link"></span>
                                                <p class="long-text"><%=lList.get(i).getRes_time()%>
                                                </p>
                                            </li>
                                        </ul>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <%} %>
                    </div>
    <%--                페이징 여기다가 넣어야지--%>
                    <div id="pNumWraaper" class="pNumWraaper">
                        <%
                            if(paging.isPrev()==true) { %>
                        <a class="pNumStart" href="/certainlist.do?ButtonValue=<%=ButtonValue%>&Pno=<%=paging.getStartPage()-10%>">이전</a>
                        <%}   %>

                        <% for(int a= paging.getStartPage(); a <= paging.getEndPage(); a++){
                            if(paging.getPage()==a) { %>
                        <a class='pNum now'><%=a%></a>
                        <%} else {%>
                        <a class='pNum' href="/certainlist.do?ButtonValue=<%=ButtonValue%>&Pno=<%=a%>"><%=a%></a>
                        <%}}%>
                        <%
                            if(paging.isNext()==true) { %>
                        <a class="pNumEnd" href="/certainlist.do?ButtonValue=<%=ButtonValue%>&Pno=<%=paging.getEndPage()+1%>">다음</a>
                        <%}   %>
                    </div>
                </div>
                <div class="col-md-5 responsive-wrap map-wrap">
                        <div class="map-fix" id="kakao_map"></div>
                        <script type="text/javascript"
                                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0e902f6c5fd9a20ffaee08c78236e188"></script>
                        <script>
                            navigator.geolocation.getCurrentPosition(function (position) {

                                var corlat = position.coords.latitude;
                                var corlon = position.coords.longitude;


                                var container = document.getElementById('kakao_map'); //지도를 담을 영역의 DOM 레퍼런스
                                var options = { //지도를 생성할 때 필요한 기본 옵션
                                    center: new kakao.maps.LatLng(37.5759, 126.9768), //지도의 중심좌표.
                                    level: 7 //지도의 레벨(확대, 축소 정도)
                                };

                                var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

                                var markerPosition = new kakao.maps.LatLng(corlat, corlon); // 마커가 표시될 위치
                                var imageSrc = '/img/currentmarker.png', // 마커이미지의 주소
                                    imageSize = new kakao.maps.Size(25), // 마커이미지의 크기
                                    imageOption = {offset: new kakao.maps.Point(0, 0)}; // 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표 설정

                                var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

                                var marker = new kakao.maps.Marker({
                                    position: markerPosition,
                                    image: markerImage // 마커이미지 설정
                                });

                                // 마커가 지도 위에 표시되도록 설정
                                marker.setMap(map);

                                var iwContent = '<div style="padding: 5px; text-align: center; border-radius: 15px;">현재 위치</div>';

                                // var corcontent = document.createElement('div')
                                // corcontent.appendChild(document.createTextNode('현재위치'));
                                // corcontent.style.margin = '0 auto';
                                // corcontent.style.borderRadius = '2px';
                                // corcontent.style.display = 'block';

                                var infowindow = new kakao.maps.InfoWindow({
                                    content : iwContent
                                })

                                kakao.maps.event.addListener(marker, 'mouseover', function() {
                                    infowindow.open(map, marker);
                                });

                                kakao.maps.event.addListener(marker, 'mouseout', function() {
                                    infowindow.close();
                                });

                                var json_url = '/json/csvjson.json';
                                var cat = '<%=ButtonValue%>';

                                $.getJSON(json_url, function (data, textStatus) {

                                    var restaurant = null;
                                    var latitude = null;
                                    var longtitude = null;
                                    var category = null;

                                    $.each(data.restaurantloc, function () {
                                        restaurant = this.restaurant;
                                        latitude = this.latitude;
                                        longtitude = this.longlitude;
                                        category = this.RES_CAT;

                                        if(category.indexOf(cat) > -1){
                                        var marker = new kakao.maps.Marker({

                                            map: map, // 마커를 표시할 지도
                                            position: new kakao.maps.LatLng(latitude, longtitude) // 마커를 표시할 위치
                                        })
                                            var Content = '<div style="padding=5px;">' +restaurant+ '</div>';

                                            var infowindow = new kakao.maps.InfoWindow({
                                                content : Content
                                            })

                                            kakao.maps.event.addListener(marker, 'mouseover', function() {
                                                infowindow.open(map, marker);
                                            });

                                            kakao.maps.event.addListener(marker, 'mouseout', function() {
                                                infowindow.close();
                                            });
                                        var ourl = 'http://localhost:8080/listDetail.do?res_name=' + restaurant
                                        kakao.maps.event.addListener(marker, 'click', function () {
                                            window.open(ourl, '_self')
                                        });
                                        }
                                    })
                                })
                            })

                        </script>
                    </div>
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
<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

</body>

</html>



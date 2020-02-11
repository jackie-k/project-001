<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="poly.dto.ListDTO" %>
<%
    ListDTO lDTO = (ListDTO) request.getAttribute("lDTO");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title -->
    <title>상세 페이지</title>
    <!-- Core Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="/css/simple-line-icons.css">
    <link rel="stylesheet" href="/css/themify-icons.css">
    <link rel="stylesheet" href="/css/set1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <link rel="stylesheet" href="/css/lee_css.css">
    <link rel="stylesheet" type="text/css" href="css/table.css" media="screen" />
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Gaegu|Hi+Melody|Poor+Story|Sunflower:300&display=swap&subset=korean" rel="stylesheet">
</head>
<!--
   //////////////////////////////////////////////////////
   2019 1학년 2학기 개인 프로젝트
   주제 : 서울 맛집 찾기 어플 (챗봇 활용)
   페이지 명: 식당 상세 정보 페이지
   Email: 1920110007@office.kopo.ac.kr
   //////////////////////////////////////////////////////
-->
<body>
<jsp:include page="/WEB-INF/view/header.jsp"></jsp:include>
<%----%>

<script src="https://static.landbot.io/landbot-widget/landbot-widget-1.0.0.js"></script>
<script>
    var myLandbot = new LandbotPopup({
        index: 'https://landbot.io/u/H-322359-HWGIY1P38E7NBBP1/index.html',
    });
</script>

<section class="d-flex align-items-center" style="min-height: 800px;">
    <div class="container" style="min-height:900px;">
        <div class="row">
            <div class="col-lg-12" style="margin-top: 5%;">
                <div class="rightContent" id="rightContent">
                    <input type="hidden" name="res_seq" value="<%=lDTO.getSeq()%>">
                    <div class="pageTitle kinderInfo clearfix">
                        <p>
                            <a href="/index.do" style="color:#ff3a6d; font-weight: bold;">홈</a>
                            <span>&lt;</span>
                            <a href="/reclist.do"style="color:#ff3a6d; font-weight: bold;">식당 목록</a>
                            <span>&lt;</span>
                            <a href="javascript:fn_move(1);" class="nowPage"style="color:#ff3a6d; font-weight: bold;">상세 페이지</a>
                        </p>
                        <div style="display: flex;">
                            <h2 style="color:#ff3a6d; font-family: Sunflower"><%=lDTO.getRes_name()%></h2>
                            <p style="margin-top: 8px; margin-left: 10px; font-family: Sunflower"><%=lDTO.getRes_cat()%></p>
                        </div>
                    </div>
                    <div>
                        <div>
<%--                            <div class="tapContentTitle clearfix">--%>
<%--                                <h7>상세 내용</h7>--%>
<%--                            </div>--%>

                            <div>
                                <div class="container" style="border: 2px solid #ff3a6d;">
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st" style="text-align: center; background-color: #ff3a6d; color:#ffffff;">매장명</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_name()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st" style="text-align: center; background-color: #ff3a6d; color:#ffffff;">매장주소</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_add()==null?"정보 없음":lDTO.getRes_add()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st"style="text-align: center; background-color: #ff3a6d; color:#ffffff;">전화번호</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_tel()==null?"정보 없음":lDTO.getRes_tel()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st"style="text-align: center; background-color: #ff3a6d; color:#ffffff;">음식종류</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_cat()==null?"정보 없음":lDTO.getRes_cat()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st"style="text-align: center; background-color: #ff3a6d; color:#ffffff;">가격대</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_price()==null?"정보 없음":lDTO.getRes_price()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st" style="text-align: center; background-color: #ff3a6d; color:#ffffff;">주차공간</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_park()==null?"정보 없음":lDTO.getRes_park()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st" style="text-align: center; background-color: #ff3a6d; color:#ffffff;">영업시간</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_time()==null?"정보 없음":lDTO.getRes_time()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st" style="text-align: center; background-color: #ff3a6d; color:#ffffff;">쉬는시간</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_break()==null?"정보 없음":lDTO.getRes_break()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st" style="text-align: center; background-color: #ff3a6d; color:#ffffff;">마지막주문</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_last()==null?"정보 없음":lDTO.getRes_last()%></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 lg-3-st" style="text-align: center; background-color: #ff3a6d; color:#ffffff;">휴일</div>
                                        <div class="col-md-9 lg-9-st"><%=lDTO.getRes_holi()==null?"정보 없음":lDTO.getRes_holi()%></div>
                                    </div>
                                </div>
                                <br>
                            </div>
                        </div>
                    </div>
    <%--                이전 페이지로 돌아가기--%>
                    <div class="pageBtn">
                        <script>
                        function goBack() {
                            window.history.back();
                        }
                        </script>
                        <input type = "button" class = "btn btn-danger" style="display: block; float: right; background-color: #ff3a6d; border-color: #ff3a6d" value = "목록으로 돌아가기" onclick = "goBack()">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--                지도 넣기--%>
    <div id="kakao_map">
    <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0e902f6c5fd9a20ffaee08c78236e188"></script>
    <script>
        navigator.geolocation.getCurrentPosition(function (position) {

            var corlat = position.coords.latitude;
            var corlon = position.coords.longitude;


            var container = document.getElementById('kakao_map'); //지도를 담을 영역의 DOM 레퍼런스
            var options = { //지도를 생성할 때 필요한 기본 옵션
                center: new kakao.maps.LatLng(37.5759, 126.9768), //지도의 중심좌표.
                level: 9 //지도의 레벨(확대, 축소 정도)
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
            var name = '<%=lDTO.getRes_name()%>';

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

                    if(restaurant.indexOf(name) > -1){
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

</section>
<%----%>
<jsp:include page="/WEB-INF/view/footer.jsp"></jsp:include>
<%----%>

<!-- jQuery-2.2.4 js -->

<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>


</body>
</html>
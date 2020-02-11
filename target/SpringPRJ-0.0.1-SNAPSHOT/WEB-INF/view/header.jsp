<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!--============================= HEADER =============================-->
<div class="dark-bg sticky-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" style="color: white; font-family: 'Sunflower'" href="index.do">푸디봇</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-menu"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link" style="color: white;" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    찾아보기
                                    <span class="icon-arrow-down"></span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="http://localhost:8080/searchlist.do?type=%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC&SearchQuery=restaurant">식당</a>
                                    <a class="dropdown-item" href="http://localhost:8080/searchlist.do?type=%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC&SearchQuery=cafe">카페</a>
                                </div>
                            </li>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" style="color: white" href="/about.do">About</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
<!--//END HEADER -->

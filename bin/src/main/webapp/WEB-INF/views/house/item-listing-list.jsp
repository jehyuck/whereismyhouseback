<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <!-- Start Header Area -->
  <%@ include file="/WEB-INF/views/common/header.jsp" %>
  <!-- End Header Area -->
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Ad Listing List - ClassiGrids Classified Ads and Listing Website Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="${root}/assets/images/favicon.svg" />

    <link
      href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet" />

  </head>
  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and
        security.
      </p>
    <![endif]-->

    <div class="preloader">
      <div class="preloader-inner">
        <div class="preloader-icon">
          <span></span>
          <span></span>
        </div>
      </div>
    </div>

    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">Apt Listings</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li><a href="${root}/index">Home</a></li>
              <li>Apt Listings</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <section class="category-page section">
      <div class="row">
        <!-- 검색 창 -->
        <div class="">
          <div class="container">
            <div class="row align-items-center">
              <!-- Start Search Form -->
              <form action="${root}/house/search" id="searchForm">
                <div class="search-form wow" data-wow-delay=".7s">
                  <div class="row mt-2">
                    <div class="col-lg-2 col-md-2 col-12 p-0">
                      <div class="search-input">
                        <label for="sido"><i class="lni lni-map-marker theme-color"></i></label>
                        <select name="sido" id="sido">
                          <option value="none" selected disabled>도/광역시</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12 p-0">
                      <div class="search-input">
                        <label for="gugun"><i class="lni lni-map-marker theme-color"></i></label>
                        <select name="gugun" id="gugun">
                          <option value="none" selected disabled>시/구/군</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12 p-0">
                      <div class="search-input">
                        <label for="dong"><i class="lni lni-map-marker theme-color"></i></label>
                        <select name="dong" id="dong">
                          <option value="none" selected disabled>동</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12 p-0">
                      <div class="search-input">
                        <label for="dong"><i class="lni lni-map-marker theme-color"></i></label>
                        <input type="text" name="aptName" id="aptName">
                      </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12 p-0 search-btn button">
                      <button class="btn" type="submit" form="searchForm">
                        <i class="lni lni-search-alt"></i> Search
                      </button>
                    </div>
                  </div>
                </div>
              </form>
              <!-- End Search Form -->
            </div>
            <div class="row">
              <div class="container">
                <div class="category-grid-list">
                  <div class="col-12">
                    <div class="category-grid-topbar">
                      <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6 col-12">
                          <h3 class="title">${totalListSize} 채의 아파트가 검색되었습니다</h3>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12">
                          <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                              <button
                                class="nav-link"
                                id="nav-grid-tab"
                                data-bs-toggle="tab"
                                data-bs-target="#nav-grid"
                                type="button"
                                role="tab"
                                aria-controls="nav-grid"
                                aria-selected="false"
                              >
                                <i class="lni lni-grid-alt"></i>
                              </button>
                              <button
                                class="nav-link active"
                                id="nav-list-tab"
                                data-bs-toggle="tab"
                                data-bs-target="#nav-list"
                                type="button"
                                role="tab"
                                aria-controls="nav-list"
                                aria-selected="true"
                              >
                                <i class="lni lni-list"></i>
                              </button>
                            </div>
                          </nav>
                        </div>
                      </div>
                    </div>
                    <div class="tab-content" id="nav-tabContent">
                      <div
                        class="tab-pane fade"
                        id="nav-grid"
                        role="tabpanel"
                        aria-labelledby="nav-grid-tab"
                      >
                        <div class="row">
                          <!-- 리스트 반복문 시작 -->
                          <c:forEach items="${houseList}" var="house">
                            <div class="col-lg-4 col-md-6 col-12">
                              <div class="single-item-grid">
                                <div class="image">
                                  <a
                                    href="${root}/house/aptSearch?aptCode=${house.aptCode}&aptName=${house.aptName}&sidoName=${house.sidoName}&gugunName=${house.gugunName}&dongName=${house.dongName}&jibun=${house.jibun}&dealAmount=${house.dealAmount}&lat=${house.lat}&lng=${house.lng}"
                                    ><img src="${root}/assets/images/apart/apart2.jpg" alt="#"
                                  /></a>
                                  <i class="cross-badge lni lni-bolt"></i>
                                </div>
                                <div class="content">
                                  <h3 class="title">
                                    <a
                                      href="${root}/house/aptSearch?aptCode=${house.aptCode}&aptName=${house.aptName}&sidoName=${house.sidoName}&gugunName=${house.gugunName}&dongName=${house.dongName}&jibun=${house.jibun}&dealAmount=${house.dealAmount}&lat=${house.lat}&lng=${house.lng}"
                                      >${house.aptName}</a
                                    >
                                  </h3>
                                  <p class="location">
                                    <a href="javascript:void(0)"
                                      ><i class="lni lni-map-marker"> </i>${house.sidoName}
                                      ${house.gugunName} ${house.dongName} ${house.jibun}</a
                                    >
                                  </p>
                                  <ul class="info">
                                    <li class="price">최근 거래가</li>
                                    <li class="like">
                                      <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                    </li>
                                    <li class="price me-1" style="float: right">
                                      ${house.dealAmount} 만 원
                                    </li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </c:forEach>
                          <!-- 리스트 반복문 종료 -->
                        </div>
                        <div class="row">
                          <div class="col-12">
                            <div class="pagination left">
                              <ul class="pagination-list">
                              <c:set var = "curPgNo" value = "${pgNo}"></c:set>
                              <c:forEach var="pgIdx" begin="1" end="${pgSize + 1}" step="1">
                              	<c:choose>
                              		<c:when test="${curPgNo eq pgIdx}">
                              			<li class="active"><a href="${root}/house/search/?sido=${sidoCode}&gugun=${gugunCode}&dong=${dongCode}&pgNo=${pgIdx}">${pgIdx}</a></li>
                              		</c:when>
                              		<c:otherwise>
                              			<li><a href="${root}/house/search/?sido=${sidoCode}&gugun=${gugunCode}&dong=${dongCode}&pgNo=${pgIdx}">${pgIdx}</a></li>
                              		</c:otherwise>
                              	</c:choose>
                              </c:forEach>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="tab-pane fade show active"
                        id="nav-list"
                        role="tabpanel"
                        aria-labelledby="nav-list-tab"
                      >
                        <div class="row">
                          <!-- 리스트 반복문 시작 -->
                          <c:forEach items="${houseList}" var="house">
                            <div class="col-lg-12 col-md-12 col-12">
                              <div class="single-item-grid">
                                <div class="row align-items-center">
                                  <div class="col-lg-5 col-md-7 col-12">
                                    <div class="image">
                                      <a
                                        href="${root}/house/aptSearch?aptCode=${house.aptCode}&aptName=${house.aptName}&sidoName=${house.sidoName}&gugunName=${house.gugunName}&dongName=${house.dongName}&jibun=${house.jibun}&dealAmount=${house.dealAmount}&lat=${house.lat}&lng=${house.lng}"
                                        ><img src="${root}/assets/images/apart/apart1.jpg" alt="#"
                                      /></a>
                                      <i class="cross-badge lni lni-bolt"></i>
                                    </div>
                                  </div>
                                  <div class="col-lg-7 col-md-5 col-12">
                                    <div class="content">
                                      <h3 class="title">
                                        <a
                                          href="${root}/house/aptSearch?aptCode=${house.aptCode}&aptName=${house.aptName}&sidoName=${house.sidoName}&gugunName=${house.gugunName}&dongName=${house.dongName}&jibun=${house.jibun}&dealAmount=${house.dealAmount}&lat=${house.lat}&lng=${house.lng}"
                                          >${house.aptName}</a
                                        >
                                      </h3>
                                      <p class="location">
                                        <a href="javascript:void(0)"
                                          ><i class="lni lni-map-marker"> </i>${house.sidoName}
                                          ${house.gugunName} ${house.dongName} ${house.jibun}</a
                                        >
                                      </p>
                                      <ul class="info">
                                        <li class="price">최근 거래가</li>
                                        <li class="like">
                                          <a href="javascript:void(0)"
                                            ><i class="lni lni-heart"></i
                                          ></a>
                                        </li>
                                        <li class="price me-1" style="float: right">
                                          ${house.dealAmount} 만 원
                                        </li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </c:forEach>
                          <!-- 리스트 반복문 종료 -->
                        </div>
                        <div class="row">
                          <div class="col-12">
                            <div class="pagination left">
                              <ul class="pagination-list">
                              <c:set var = "curPgNo" value = "${pgNo}"></c:set>
                              
                              <a href="${root}/house/search?sido=${sidoCode}&gugun=${gugunCode}&dong=${dongCode}&aptName=${aptName}&pgNo=${(pgNo-10 > 0 ? pgNo-10 : 1)}">이전</a>
                              
                              <c:forEach var="pgIdx" begin="${(pgNo - (pgNo)%10) < 1 ? 1 : pgNo - (pgNo)%10}" end="${(pgNo - pgNo%10 + 9) > pgSize ? pgSize : (pgNo - pgNo%10 + 9)}" step="1">
                              	<c:choose>
                              		<c:when test="${pgNo eq pgIdx}">
                              			<li class="active"><a href="${root}/house/search?sido=${sidoCode}&gugun=${gugunCode}&dong=${dongCode}&aptName=${aptName}&pgNo=${pgIdx}">${pgIdx}</a></li>
                              		</c:when>
                              		<c:otherwise>
                              			<li><a href="${root}/house/search?sido=${sidoCode}&gugun=${gugunCode}&dong=${dongCode}&aptName=${aptName}&pgNo=${pgIdx}">${pgIdx}</a></li>
                              		</c:otherwise>
                              	</c:choose>
                              </c:forEach>
                              <a href="${root}/house/search?sido=${sidoCode}&gugun=${gugunCode}&dong=${dongCode}&aptName=${aptName}&pgNo=${((pgNo+10 > pgSize ? pgSize : pgNo+10 - pgNo%10) == 0 ? 1 : (pgNo+10 - pgNo%10))}">다음</a>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 검색 창 -->
            <!-- house-info Start-->
          </div>
        </div>
      </div>
    </section>

    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <a href="#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
    </a>

    <script
      data-cfasync="false"
      src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"
    ></script>
    <script src="${root}/assets/js/bootstrap.min.js"></script>
    <script src="${root}/assets/js/wow.min.js"></script>
    <script src="${root}/assets/js/tiny-slider.js"></script>
    <script src="${root}/assets/js/glightbox.min.js"></script>
    <script src="${root}/assets/js/main.js"></script>
    <script src="${root}/assets/js/selectbox-search.js"></script>
  </body>
</html>
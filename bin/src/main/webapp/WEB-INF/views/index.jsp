<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Where is my house</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet" />

    <!-- ========================= CSS here ========================= -->

  </head>

  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and
        security.
      </p>
    <![endif]-->

    <!-- Preloader -->
    <div class="preloader">
      <div class="preloader-inner">
        <div class="preloader-icon">
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- /End Preloader -->

    <!-- Start Header Area -->
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- End Header Area -->

    <!-- Start Hero Area -->
    <section class="hero-area overlay">
      <div class="container">
        <div class="row">
          <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
            <div class="hero-text text-center">
              <!-- Start Hero Text -->
              <div class="section-heading">
                <h2 class="wow fadeInUp" data-wow-delay=".3s">어서와.. 우리 집은 처음이지?</h2>
                <p class="wow fadeInUp" data-wow-delay=".5s">
                  부동산 정보들을 한 번에 검색할 수 있는 사이트
                </p>
              </div>
              <!-- End Search Form -->
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
                </div>
              </div>
              <!-- 검색 창 -->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Hero Area -->


    <!-- Start Footer Area -->
  	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    
    <!--/ End Footer Area -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="${root}/assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/selectbox-search.js"></script>
    <script type="text/javascript">
		console.log("${pageContext.request.contextPath}");
    
    	console.log("${root}");
      //========= Category Slider
      tns({
        container: ".category-slider",
        items: 3,
        slideBy: "page",
        autoplay: false,
        mouseDrag: true,
        gutter: 0,
        nav: false,
        controls: true,
        controlsText: [
          '<i class="lni lni-chevron-left"></i>',
          '<i class="lni lni-chevron-right"></i>',
        ],
        responsive: {
          0: {
            items: 1,
          },
          540: {
            items: 2,
          },
          768: {
            items: 4,
          },
          992: {
            items: 5,
          },
          1170: {
            items: 6,
          },
        },
      });
    </script>
  </body>
</html>

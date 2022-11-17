<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0068)https://demo.graygrids.com/themes/classigrids-demo/item-details.jsp -->
<html class="no-js" lang="zxx">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Where is my house</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="https://demo.graygrids.com/themes/classigrids-demo/assets/images/favicon.svg"
    />

    <link href="./item-details_files/css2" rel="stylesheet" />
    <link href="./item-details_files/css2(1)" rel="stylesheet" />


  </head>

  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and
        security.
      </p>
    <![endif]-->

    <div class="preloader" style="opacity: 0; display: none">
      <div class="preloader-inner">
        <div class="preloader-icon">
          <span></span>
          <span></span>
        </div>
      </div>
    </div>

    <!-- Start Header Area -->
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- End Header Area -->

    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">상세 페이지</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li>
                <a href="${root}/index">Home</a>
              </li>
              <li>상세 페이지</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- 검색 창 -->
    <div class="">
      <div class="container">
        <div class="row align-items-center">
          <!-- Start Search Form -->
          <div class="search-form wow" data-wow-delay=".7s">
            <div class="row justify-content-center">
              <div class="col-lg-4 col-md-4 col-12 p-0">
                <div class="search-input">
                  <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                  <input type="text" name="keyword" id="keyword" placeholder="주소를 입력하세요." />
                </div>
              </div>
              <div class="col-lg-2 col-md-2 col-12 p-0">
                <div class="single-widget condition">
                  <div class="row mt-3">
                    <div class="col">
                      <div class="form-check">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          value=""
                          id="flexCheckDefault1"
                        />
                        <label class="form-check-label" for="flexCheckDefault1"> 월세 </label>
                      </div>
                    </div>
                    <div class="col">
                      <div class="form-check">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          value=""
                          id="flexCheckDefault2"
                        />
                        <label class="form-check-label" for="flexCheckDefault2"> 전세 </label>
                      </div>
                    </div>
                    <div class="col">
                      <div class="form-check">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          value=""
                          id="flexCheckDefault3"
                        />
                        <label class="form-check-label" for="flexCheckDefault3"> 매매 </label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-md-2 col-12 p-0 m-">
                <div class="search-btn button">
                  <button class="btn"><i class="lni lni-search-alt"></i> Search</button>
                </div>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-lg-3 col-md-3 col-12 p-0">
                <div class="search-input">
                  <label for="location"><i class="lni lni-map-marker theme-color"></i></label>
                  <select name="location" id="location">
                    <option value="none" selected disabled>도/광역시</option>
                    <option value="서울특별시">서울시</option>
                    <option value="경기도">경기도</option>
                    <option value="인천광역시">인천광역시</option>
                    <option value="부산광역시">부산광역시</option>
                    <option value="대전광역시">대전광역시</option>
                    <option value="대구광역시">대구광역시</option>
                    <option value="울산광역시">울산광역시</option>
                    <option value="세종특별자치시">세종시</option>
                    <option value="광주광역시">광주광역시</option>
                    <option value="강원도">강원도</option>
                    <option value="충청북도">충청북도</option>
                    <option value="경상북도">경상북도</option>
                    <option value="경상남도">경상남도</option>
                    <option value="전라북도">전라북도</option>
                    <option value="전라남도">전라남도</option>
                    <option value="제주특별자치도">제주도</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-3 col-md-3 col-12 p-0">
                <div class="search-input">
                  <label for="location"><i class="lni lni-map-marker theme-color"></i></label>
                  <select name="location" id="location">
                    <option value="none" selected disabled>시/구/군</option>
                    <option value="11320">도봉구</option>
                    <option value="11380">은평구</option>
                    <option value="11230">동대문구</option>
                    <option value="11590">동작구</option>
                    <option value="11545">금천구</option>
                    <option value="11530">구로구</option>
                    <option value="11110">종로구</option>
                    <option value="11305">강북구</option>
                    <option value="11260">중랑구</option>
                    <option value="11680">강남구</option>
                    <option value="11500">강서구</option>
                    <option value="11140">중구</option>
                    <option value="11740">강동구</option>
                    <option value="11215">광진구</option>
                    <option value="11440">마포구</option>
                    <option value="11650">서초구</option>
                    <option value="11290">성북구</option>
                    <option value="11350">노원구</option>
                    <option value="11710">송파구</option>
                    <option value="11410">서대문구</option>
                    <option value="11470">양천구</option>
                    <option value="11560">영등포구</option>
                    <option value="11620">관악구</option>
                    <option value="11200">성동구</option>
                    <option value="11170">용산구</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-3 col-md-3 col-12 p-0">
                <div class="search-input">
                  <label for="location"><i class="lni lni-map-marker theme-color"></i></label>
                  <select name="location" id="location">
                    <option value="none" selected disabled>동</option>
                    <option value="잠실동">잠실동</option>
                    <option value="신천동">신천동</option>
                    <option value="풍납동">풍납동</option>
                    <option value="송파동">송파동</option>
                    <option value="석촌동">석촌동</option>
                    <option value="삼전동">삼전동</option>
                    <option value="가락동">가락동</option>
                    <option value="문정동">문정동</option>
                    <option value="마천동">마천동</option>
                    <option value="장지동">장지동</option>
                    <option value="방이동">방이동</option>
                    <option value="오금동">오금동</option>
                    <option value="거여동">거여동</option>
                  </select>
                </div>
              </div>
              <!-- 관심 지역 추가(북마크) START -->
              <div class="col-lg-3 col-md-3 col-12 p-0">
                <div class="button">
                  <a href="javascript:void(0)" class="btn"
                    ><i class="lni lni-bookmark"> 관심 추가</i></a
                  >
                </div>
              </div>
              <!-- 관심 지역 추가(북마크) END -->
            </div>
          </div>
          <!-- End Search Form -->
        </div>
      </div>
    </div>
    <!-- 검색 창 -->
    <section class="item-details section">
      <div class="container">
        <div class="top-area">
          <div class="row">
            <div class="col-lg-6 col-md-12 col-12">
              <div class="product-images">
                <main id="gallery">
                  <!-- kakao map start -->
                  <div id="map" style="width: 100%; height: 700px"></div>
                  <script
                    type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86fe11c6c628248e5e1d06dca421c602"
                  ></script>

                  <script>
                    var marker, infowindow;
                    var container = document.getElementById("map");
                    var myLatLng = new kakao.maps.LatLng(37.5012743, 127.039585);
                    var options = {
                      center: myLatLng,
                      level: 3,
                    };

                    var map = new kakao.maps.Map(container, options);

                    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
                    var mapTypeControl = new kakao.maps.MapTypeControl();

                    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
                    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
                    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

                    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
                    var zoomControl = new kakao.maps.ZoomControl();
                    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

                    // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
                    if (navigator.geolocation) {
                      // GeoLocation을 이용해서 접속 위치를 얻어옵니다
                      navigator.geolocation.getCurrentPosition(function (position) {
                        var lat = position.coords.latitude, // 위도
                          lon = position.coords.longitude; // 경도

                        (myLatLng = new kakao.maps.LatLng(lat, lon)), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
                          (message = '<div style="padding:5px;">나여기있어요</div>'); // 인포윈도우에 표시될 내용입니다

                        // 마커와 인포윈도우를 표시합니다
                        displayMarker(myLatLng, message);
                      });
                    } else {
                      // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

                      (myLatLng = new kakao.maps.LatLng(37.5012743, 127.039585)),
                        (message = "geolocation을 사용할수 없어요..");

                      displayMarker(myLatLng, message);
                    }

                    // 지도에 마커와 인포윈도우를 표시하는 함수입니다
                    function displayMarker(myLatLng, message, markerImage) {
                      // 마커를 생성합니다
                      marker = new kakao.maps.Marker({
                        map: map,
                        position: myLatLng,
                        image: markerImage, // 마커이미지 설정
                      });

                      var iwContent = message, // 인포윈도우에 표시할 내용
                        iwRemoveable = true;

                      // 인포윈도우를 생성합니다
                      infowindow = new kakao.maps.InfoWindow({
                        content: iwContent,
                        removable: iwRemoveable,
                      });

                      // 인포윈도우를 마커위에 표시합니다
                      // infowindow.open(map, marker);

                      // 지도 중심좌표를 접속위치로 변경합니다
                      map.setCenter(myLatLng);

                      // 마커에 마우스오버 이벤트를 등록합니다
                      kakao.maps.event.addListener(marker, "mouseover", function () {
                        // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                        infowindow.open(map, marker);
                      });

                      // 마커에 마우스아웃 이벤트를 등록합니다
                      kakao.maps.event.addListener(marker, "mouseout", function () {
                        // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                        infowindow.close();
                      });
                    }
                  </script>
                  <!-- <img src="./item-details_files/image1.jpg" id="current" alt="#"> -->
                  <!-- kakao map end -->
                </main>
              </div>
            </div>
            <div class="col-lg-6 col-md-12 col-12">
              <div class="product-info">
                <h2 class="title">건영1</h2>
                <p class="location">
                  <i class="lni lni-map-marker"></i
                  ><a href="javascript:void(0)">서울시 송파구 문정동</a>
                </p>
                <h3 class="price">89,000</h3>
                <div class="list-info">
                  <h4>Informations</h4>
                  <ul>
                    <li><span>거래금액:</span> 89,000</li>
                    <li><span>전용면적:</span> 84.81</li>
                    <li><span>거래구분:</span> 아파트 매매</li>
                  </ul>
                </div>
                <div class="contact-info">
                  <ul>
                    <li>
                      <a href="tel:+002562352589" class="call">
                        <i class="lni lni-phone-set"></i>
                        +82 02 123 4567
                        <span>연락바랍니다. &amp; Get more info</span>
                      </a>
                    </li>
                    <li>
                      <a href="mailto:example@gmail.com" class="mail">
                        <i class="lni lni-envelope"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <a href="item-details.jsp#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
    </a>

    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/wow.min.js"></script>
    <script src="../../assets/js/tiny-slider.js"></script>
    <script src="../../assets/js/glightbox.min.js"></script>
    <script src="../../assets/js/main.js"></script>
    <script type="text/javascript">
      const current = document.getElementById("current");
      const opacity = 0.6;
      const imgs = document.querySelectorAll(".img");
      imgs.forEach((img) => {
        img.addEventListener("click", (e) => {
          //reset opacity
          imgs.forEach((img) => {
            img.style.opacity = 1;
          });
          current.src = e.target.src;
          //adding class
          //current.classList.add("fade-in");
          //opacity
          e.target.style.opacity = opacity;
        });
      });
    </script>
  </body>
</html>

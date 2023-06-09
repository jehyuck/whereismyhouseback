<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0068)https://demo.graygrids.com/themes/classigrids-demo/item-details.jsp -->
<html class="no-js" lang="zxx">
<!-- Start Header Area -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- End Header Area -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Where is my house</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
	href="https://demo.graygrids.com/themes/classigrids-demo/assets/images/favicon.svg" />

<link rel="stylesheet" href="${root}/assets/css/kakaomap.css" />
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
				<span></span> <span></span>
			</div>
		</div>
	</div>

	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">Bookmarked Area Informations</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a
							href="https://demo.graygrids.com/themes/classigrids-demo/index.jsp">Home</a>
						</li>
						<li>Bookmarked Area Informations</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<section class="item-details section">
		<div class="container">
		<div class="mb-3">
			<h3>${bookmark.sidoName} ${bookmark.gugunName} ${bookmark.dongName}</h3>
		</div>
			<div class="top-area">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-12">
						<div class="product-images">
							<main id="gallery"> <!-- kakao map start -->
							<div class="map_wrap" style="height: 500px">
								<div id="map"
									style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
								<ul id="category">
									<li id="BK9" data-order="0"><span class="category_bg bank"></span>
										은행</li>
									<li id="MT1" data-order="1"><span class="category_bg mart"></span>
										마트</li>
									<li id="PM9" data-order="2"><span
										class="category_bg pharmacy"></span> 약국</li>
									<li id="OL7" data-order="3"><span class="category_bg oil"></span>
										주유소</li>
									<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
										카페</li>
									<li id="CS2" data-order="5"><span
										class="category_bg store"></span> 편의점</li>
								</ul>
							</div>
							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86fe11c6c628248e5e1d06dca421c602&libraries=services"></script>
							<script>
							// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
							var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
							    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
							    markers = [], // 마커를 담을 배열입니다
							    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
							 
							    var lat = 33.450701, lng = 126.570667;
				                  var mapContainer = document.getElementById("map"), // 지도를 표시할 div
				                    mapOption = {
				                      center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
				                      level: 7, // 지도의 확대 레벨
				                    };

							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							var geocoder = new kakao.maps.services.Geocoder();
			                  
			                  var address = `${bookmark.sidoName} ${bookmark.gugunName} ${bookmark.dongName}`;
			                  //var address = "서울특별시 강남구 역삼동"; 
			                  

			               // 주소로 좌표를 검색합니다
			               geocoder.addressSearch(address, function(result, status) {

			                   // 정상적으로 검색이 완료됐으면 
			                    if (status === kakao.maps.services.Status.OK) {
			                  	  lat = result[0].y;
			                  	  lng = result[0].x;

			                       var coords = new kakao.maps.LatLng(lat, lng);

			                       // 결과값으로 받은 위치를 마커로 표시합니다
			                       var marker = new kakao.maps.Marker({
			                           map: map,
			                           position: coords
			                       });

			                       // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			                       map.setCenter(coords);
			                   } 
			               }); 
							// 장소 검색 객체를 생성합니다
							var ps = new kakao.maps.services.Places(map); 

							// 지도에 idle 이벤트를 등록합니다
							kakao.maps.event.addListener(map, 'idle', searchPlaces);

							// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
							contentNode.className = 'placeinfo_wrap';

							// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
							// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
							addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
							addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

							// 커스텀 오버레이 컨텐츠를 설정합니다
							placeOverlay.setContent(contentNode);  

							// 각 카테고리에 클릭 이벤트를 등록합니다
							addCategoryClickEvent();

							// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
							function addEventHandle(target, type, callback) {
							    if (target.addEventListener) {
							        target.addEventListener(type, callback);
							    } else {
							        target.attachEvent('on' + type, callback);
							    }
							}

							// 카테고리 검색을 요청하는 함수입니다
							function searchPlaces() {
							    if (!currCategory) {
							        return;
							    }
							    
							    // 커스텀 오버레이를 숨깁니다 
							    placeOverlay.setMap(null);

							    // 지도에 표시되고 있는 마커를 제거합니다
							    removeMarker();
							    
							    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
							}

							// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
							function placesSearchCB(data, status, pagination) {
							    if (status === kakao.maps.services.Status.OK) {

							        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
							        displayPlaces(data);
							    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
							        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

							    } else if (status === kakao.maps.services.Status.ERROR) {
							        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
							        
							    }
							}

							// 지도에 마커를 표출하는 함수입니다
							function displayPlaces(places) {

							    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
							    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
							    var order = document.getElementById(currCategory).getAttribute('data-order');

							    

							    for ( var i=0; i<places.length; i++ ) {

							            // 마커를 생성하고 지도에 표시합니다
							            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

							            // 마커와 검색결과 항목을 클릭 했을 때
							            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
							            (function(marker, place) {
							                kakao.maps.event.addListener(marker, 'click', function() {
							                    displayPlaceInfo(place);
							                });
							            })(marker, places[i]);
							    }
							}

							// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
							function addMarker(position, order) {
							    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
							        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
							        imgOptions =  {
							            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
							            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
							            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
							        },
							        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
							            marker = new kakao.maps.Marker({
							            position: position, // 마커의 위치
							            image: markerImage 
							        });

							    marker.setMap(map); // 지도 위에 마커를 표출합니다
							    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

							    return marker;
							}

							// 지도 위에 표시되고 있는 마커를 모두 제거합니다
							function removeMarker() {
							    for ( var i = 0; i < markers.length; i++ ) {
							        markers[i].setMap(null);
							    }   
							    markers = [];
							}

							// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
							function displayPlaceInfo (place) {
							    var content = '<div class="placeinfo">' +
							                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

							    if (place.road_address_name) {
							        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
							                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
							    }  else {
							        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
							    }                
							   
							    content += '    <span class="tel">' + place.phone + '</span>' + 
							                '</div>' + 
							                '<div class="after"></div>';

							    contentNode.innerHTML = content;
							    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
							    placeOverlay.setMap(map);  
							}


							// 각 카테고리에 클릭 이벤트를 등록합니다
							function addCategoryClickEvent() {
							    var category = document.getElementById('category'),
							        children = category.children;

							    for (var i=0; i<children.length; i++) {
							        children[i].onclick = onClickCategory;
							    }
							}

							// 카테고리를 클릭했을 때 호출되는 함수입니다
							function onClickCategory() {
							    var id = this.id,
							        className = this.className;

							    placeOverlay.setMap(null);

							    if (className === 'on') {
							        currCategory = '';
							        changeCategoryClass();
							        removeMarker();
							    } else {
							        currCategory = id;
							        changeCategoryClass(this);
							        searchPlaces();
							    }
							}

							// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
							function changeCategoryClass(el) {
							    var category = document.getElementById('category'),
							        children = category.children,
							        i;

							    for ( i=0; i<children.length; i++ ) {
							        children[i].className = '';
							    }

							    if (el) {
							        el.className = 'on';
							    } 
							} 


                    
                  </script> <!-- <img src="./item-details_files/image1.jpg" id="current" alt="#"> -->
							<!-- kakao map end --> </main>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Start Footer Area -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<!--/ End Footer Area -->

	<a href="item-details.jsp#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<script src="${root}/assets/js/bootstrap.min.js"></script>
	<script src="${root}/assets/js/wow.min.js"></script>
	<script src="${root}/assets/js/tiny-slider.js"></script>
	<script src="${root}/assets/js/glightbox.min.js"></script>
	<script src="${root}/assets/js/main.js"></script>
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

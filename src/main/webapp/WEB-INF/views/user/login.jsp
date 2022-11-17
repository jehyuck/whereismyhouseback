<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0061)https://demo.graygrids.com/themes/classigrids-demo/login.jsp -->
<html class="no-js" lang="zxx">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Login</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="https://demo.graygrids.com/themes/classigrids-demo/assets/images/favicon.svg"
    />

    <link
      href="./Login - ClassiGrids Classified Ads and Listing Website Template_files/css2"
      rel="stylesheet"
    />
    <link
      href="./Login - ClassiGrids Classified Ads and Listing Website Template_files/css2(1)"
      rel="stylesheet"
    />

	
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

    <!-- 메인 섹션 START -->
    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">로그인</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li><a href="${root}/index">Home</a></li>
              <li>Login</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <section class="login section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
            <div class="form-head">
               <!-- 아이디 기억하기 start -->
		        <c:set var='checked' value=""/>
				<c:set var='id' value=""/>
				<c:if test="${!empty cookie.id}">
					<c:set var='checked' value="checked='checked'"/>
					<c:set var='id' value="value='${cookie.id.value}'"></c:set>
				</c:if>
               <!-- 아이디 기억하기 end -->
              <h4 class="title">로그인</h4>
              <form action="${root}/user/login" method="post" id="loginForm">
                <div class="form-group">
			      <label for="id">아이디</label>
			      <input type="text" class="form-control" name='id' id=id ${id} placeholder="아이디 입력"/>
                </div>
                <div class="form-group">
				  <label for="password">비밀번호</label>
	      		  <input type="password"	name='pass'  class="form-control" id="password" placeholder="비밀번호 입력">
                </div>
                <div class="check-and-pass">
                  <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6 col-12">
                      <div class="form-check">
                        <input
                          name = "idsave"
                          value = "true"
                          ${checked}
                          type="checkbox"
                          class="form-check-input width-auto"
                          id="idsave"
                        />
                        <label class="form-check-label">아이디 저장</label>
                      </div>
                      
                    </div>
                    <div class="col-lg-6 col-md-6 col-12">
                      <a href="${root}/user/find" class="lost-pass">비밀번호 찾기</a>
                    </div>
                  </div>
                </div>
                <div class="button">
                  <button type="submit" class="btn" id="login">로그인</button>
                </div>
                <div class="alt-option">
                  <span>Or</span>
                </div>
                <div class="socila-login">
                  <ul>
                    <li>
                      <a href="javascript:void(0)" class="facebook"
                        ><i class="lni lni-facebook-original"></i>Login With Facebook</a
                      >
                    </li>
                    <li>
                      <a href="javascript:void(0)" class="google"
                        ><i class="lni lni-google"></i>Login With Google Plus</a
                      >
                    </li>
                  </ul>
                </div>
                <p class="outer-link">
                  계정이 없으신가요?
                  <a href="${root}/user/regist">회원가입</a>
                </p>
              </form>

				<!-- 실제 서버로 전송되는 form -->
				<form action="${root}/user/login" method="post" id="hiddenForm">
					<fieldset>
						<input type="hidden" name="id" />
						<input type="hidden" name="password" />
					</fieldset>
				</form>

            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 메인 섹션 END -->

    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <a href="login.jsp#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
    </a>

	<!-- RSA 적용 -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- <script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/rsa.js"></script> -->
	<script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/jsbn.js"></script>
	<script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/prng4.js"></script>
	<script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/rng.js"></script>
	
	<!-- <script>
		var $email = $("#hiddenForm input[name='id']");
		var $password = $("#hiddenForm input[name='password']");
	
		// Server로부터 받은 공개키 입력
		var rsa = new RSAKey();
		rsa.setPublic("${modulus}", "${exponent}");
	
		$("#loginForm").submit(function(e) {
			// 실제 유저 입력 form은 event 취소
			// javascript가 작동되지 않는 환경에서는 유저 입력 form이 submit 됨
			// -> Server 측에서 검증되므로 로그인 불가
			e.preventDefault();
	
			// 아이디/비밀번호 암호화 후 hidden form으로 submit
			var email = $(this).find("#id").val();
			var password = $(this).find("#password").val();
			$email.val(rsa.encrypt(email)); // 아이디 암호화
			$password.val(rsa.encrypt(password)); // 비밀번호 암호화
	
			console.log(email);
			console.log(password);
			
			$("#hiddenForm").submit();
		});
	
	</script> -->
  </body>
</html>


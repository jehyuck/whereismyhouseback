<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0068)https://demo.graygrids.com/themes/classigrids-demo/registration.jsp -->
<html class="no-js" lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Where is my house</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
	href="https://demo.graygrids.com/themes/classigrids-demo/assets/images/favicon.svg" />

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

	<!-- Start Header Area -->
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<!-- End Header Area -->


	<!-- 메인 시작 -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">회원가입</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="${root}/index">Home</a></li>
						<li>Registration</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<section class="login registration section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
					<div class="form-head">
						<h4 class="title">회원가입</h4>
						<form action="${root}/user/regist" method="post" id="formRegist">
							<div class="socila-login">
								<ul>
									<li><a href="javascript:void(0)" class="facebook"><i
											class="lni lni-facebook-original"></i>Import From Facebook</a></li>
									<li><a href="javascript:void(0)" class="google"><i
											class="lni lni-google"></i>Import From Google Plus</a></li>
								</ul>
							</div>
							<div class="alt-option">
								<span>Or</span>
							</div>
							<div class="form-group">
								<label> 아이디</label> <input name="id" type="text" id="id" />
							</div>
							<div id="idcheck-result"></div>
							<div class="form-group">
								<label>비밀번호</label> <input name="pass" type="password"
									id="password" />
							</div>
							<div class="form-group">
								<label>이름</label> <input name="name" type="text" id="name" />
							</div>
							<div class="form-group">
								<label>주소</label> <input name="address" type="text" id="address" />
							</div>
							<div class="form-group">
								<label>전화번호</label> <input name="phone" type="text" id="phone" />
							</div>
							<div class="check-and-pass">
								<div class="row align-items-center">
									<div class="col-12">
										<div class="form-check">
											<input type="checkbox" class="form-check-input width-auto"
												id="exampleCheck1" /> <label
												class="form-check-label">약관
												동의 <a href="javascript:void(0)">Terms and Conditions</a>
											</label>
										</div>
									</div>
								</div>
							</div>
							<div class="button">
								<button type="submit" class="btn" id="btn-join">회원 가입</button>
							</div>
							<p class="outer-link">
								이미 계정이 있으신가요? <a href="${root}/user/login">로그인</a>
							</p>
						</form>

						<form action="${root}/user/regist" method="post" id="hiddenForm">
							<fieldset>
								<input type="hidden" name="id" />
								<input type="hidden" name="pass" />
								<input type="hidden" name="name" />
								<input type="hidden" name="address" />
								<input type="hidden" name="phone" />
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 메인 끝 -->

	<!-- Start Footer Area -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<!--/ End Footer Area -->

	<a
		href="https://demo.graygrids.com/themes/classigrids-demo/registration.jsp#"
		class="scroll-top btn-hover"> <i class="lni lni-chevron-up"></i>
	</a>

	
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- <script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/rsa.js"></script> -->
	<script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/jsbn.js"></script>
	<script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/prng4.js"></script>
	<script type="text/javascript" src="http://www-cs-students.stanford.edu/~tjw/jsbn/rng.js"></script>

	<script>
	 let isUseId = false;
     document.querySelector("#id").addEventListener("keyup", function () {
        let userid = this.value;
        let resultDiv = document.querySelector("#idcheck-result");
        if(userid.length < 5 || userid.length > 16) {
            resultDiv.setAttribute("class", "mb-3 text-dark");
            resultDiv.textContent = "아이디는 6자 이상 16자 이하 입니다.";
            isUseId = false;
        } else {
           fetch("${root}/user/idCheck?userid=" + userid)
           .then(response => response.text())
           .then(data => {
               console.log(data);
                if(data == 0) {
                  resultDiv.setAttribute("class", "mb-3 text-primary");
                  resultDiv.textContent = userid + "는 사용할 수 있습니다.";
                  isUseId = true;
                } else {
                  resultDiv.setAttribute("class", "mb-3 text-danger");
                    resultDiv.textContent = userid + "는 사용할 수 없습니다.";
                    isUseId = false;
                }
           });
    }
 });

   var $email = $("#hiddenForm input[name='id']");
   var $password = $("#hiddenForm input[name='pass']");
   var $name = $("#hiddenForm input[name='name']");
   var $address = $("#hiddenForm input[name='address']");
   var $phone = $("#hiddenForm input[name='phone']");
   
   //var rsa = new RSAKey();
   //rsa.setPublic("${modulus}", "${exponent}");

   $("#formRegist").submit(function(e) {
//     document.querySelector("#btn-join").addEventListener("click", function () {
           if (!document.querySelector("#name").value) {
             alert("이름 입력!!");
             return false;
           } else if (!document.querySelector("#id").value) {
             alert("아이디 입력!!");
             return false;
           } else if (!document.querySelector("#password").value) {
             alert("비밀번호 입력!!");
             return false;
           } else if (!isUseId) {
             alert("아이디 확인!!");
             return false;
           } else {
               // 실제 유저 입력 form은 event 취소
               // javascript가 작동되지 않는 환경에서는 유저 입력 form이 submit 됨
               // -> Server 측에서 검증되므로 로그인 불가
               e.preventDefault();

               // 아이디/비밀번호 암호화 후 hidden form으로 submit
               //var email = $(this).find("#id").val();
               //var password = $(this).find("#password").val();
               $email.val($(this).find("#id").val()); // 아이디 암호화
               $password.val($(this).find("#password").val()); // 비밀번호 암호화
               $name.val($(this).find("#name").val());
               $address.val($(this).find("#address").val());
               $phone.val($(this).find("#phone").val());


               $("#hiddenForm").submit();

//             let form = document.querySelector("#formRegist");
//             form.setAttribute("action", "${root}/regist.user");
//             form.setAttribute("method", "post");
//             form.submit();
       }
     });
    </script>
    
</body>
</html>

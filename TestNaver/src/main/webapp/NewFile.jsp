<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2{
		font-size: 40px;
		border-radius: 5px;
		color: green;
		text-align: center;
		padding: 15px 0;
	}
	.form1{
		padding: 15px 20px;
		border-radius: 10px;
		margin: auto;
		width: 40%;
	}
	.textbox{
		overflow:scroll;
		width:100%;
		height:100px;
		border: 1px solid grey;
	}
	.wrap-footer{
		padding: 15px 20px;
		border-radius: 10px;
		margin: auto;
		width: 40%;
	}
	result_main
</style>
<script>
	function SignUp(){
		if(document.getElementById("using_guide").checked === true 
				&& document.getElementById("info_guide").checked === true){
		document.getElementById("wrap").style.display = "none";
		document.getElementById("result").style.display = "block";
		}else{
			//alert("네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.");
			document.getElementById("warning").setAttribute("style", "display: block; color:red;");
		}
	}
	function All_check(){
		if(document.getElementById("all_agree").checked === true){
			document.getElementById("using_guide").checked = true;
			document.getElementById("info_guide").checked = true;
			document.getElementById("which_guide").checked = true;
			document.getElementById("pr_guide").checked = true;
		}else{
			document.getElementById("using_guide").checked = false;
			document.getElementById("info_guide").checked = false;
			document.getElementById("which_guide").checked = false;
			document.getElementById("pr_guide").checked = false;
		}
	}
	
	//id부터 input요소 들의 정규식 user_id
	function input_id(){
		if (!/^[a-z0-9-_\.]{5,20}$/.test(document.user.user_id.value)) {
            alert('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
            return false;
        } else {
            alert("id가 정상적으로 입력되었습니다.");
            return true;
        }
	}
	
	//비밀번호 user_pw
	function input_pw(){
		if (!/^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,16}$/.test(document.user.user_pw.value)) {
            alert('8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.');
            return false;
        } else {
            alert("pw가 정상적으로 입력되었습니다.");
            return true;
        }
	}
	
	//비밀번호 재확인 user_okpw
	
	//이름 name
	//한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)
	
	//생년월일
	//birth_year
	
	//birth_day
	
	//본인확인 이메일 user_email (선택)
	//이메일 주소를 다시 확인해주세요.
	function input_email(){
		if (!/^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/.test(document.user.user_email.value)) {
            alert('이메일 주소를 다시 확인해주세요.');
            return false;
        } else {
            alert("이메일가 정상적으로 입력되었습니다.");
            return true;
        }
	}
	
	//휴대전화 phone_num2
	function input_phone(){
		if (!/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/.test(document.user.user_id.value)) {
            alert('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
            return false;
        } else {
            alert("휴대폰 번호가 정상적으로 입력되었습니다.");
            return true;
        }
	}
	
	//인증번호 number
	function input_number(){
		if (!/^[0-9]{6}$/.test(document.user.user_id.value)) {
            alert('번호가 다릅니다.');
            return false;
        } else {
            alert("인증번호가 정상적으로 입력되었습니다.");
            return true;
        }
	}
</script>
</head>
<body>
	<form class="form1" name="user">
	<div id="wrap">
		<div id = "lang">
			<select>
				<option>한국어</option>
				<option>English</option>
			</select>
		</div>
		<div id="wrap-header">
			<h2>NAVER</h2>
		</div>
		<div id="wrap-content">
			<div id="wrap-check">
				<div>
					<input id="all_agree" type="checkbox" onclick="All_check()">네이버 모두 동의합니다.	
				</div>
				<div>
					<input id="using_guide" type="checkbox" >네이버 이용약관 동의<span>(필수)</span>
					<div class = "textbox">
							여러분을 환영합니다.<br>
							네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 
							네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 
							아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							<br><br>
							네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 
							잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
							<br><br>
							다양한 네이버 서비스를 즐겨보세요.<br>
							네이버는 www.naver.com을 비롯한 네이버 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 
							다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
							여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 네이버 서비스를 자유롭게 이용하실 수 있으며, 
							개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, 네이버 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.
					</div>
				</div>
				<div>
					<input id="info_guide" type="checkbox">개인정보 수집 및 이용 동의<span>(필수)</span>
					<button type="button" id="kids_guide" onclick = "window.open('https://nid.naver.com/user2/V2Join?m=kidGuide')">어린이용 안내</button>
					<div class = "textbox">
						개인정보보호법에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 
						동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
						<br><br>
						1. 수집하는 개인정보<br>
						이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 
						캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
						<br><br>
						회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
					</div>
				</div>
				<div>
					<input id="which_guide" type="checkbox">위치기반서비스 이용약관 동의<span>(선택)</span>
					<div class = "textbox">
							위치기반서비스 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 
							포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.
							<br><br>
							제 1 조 (목적)<br>
							이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치기반서비스와 관련하여 회사와 개인위치정보주체와의 권리, 
							의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
					</div>
				</div>
				<div>
					<input id="pr_guide" type="checkbox">프로모션 정보 수신 동의<span>(선택)</span>
					<p>동의합니다.</p>
					<!-- 빨간색 글자로 표시 -->
					<div id="warning">네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.</div>
				</div>
			</div>
			<div class="agree_button">
				<button  type="button" onclick = "window.open('https://www.naver.com/')">취소</button>
				<button  type="button" onclick = "SignUp()">확인</button>
			</div>
			<p id="check">회사, 동아리 등 단체에서 사용할 ID가 필요하세요?<a>단체 회원 가입</a></p>
		</div>
	</div>
	<div id = "result">
		<div id="result_header">
			<h2>NAVER</h2>
		</div>
		<div id="result_main">
			<div id="join_info">
				<div id="user_id">
					아이디<br>
					<input name = "user_id" type="text" onfocusout = "input_id()">
					<span>@naver.com</span><br>
				</div>
				<div id="user_pw">
					비밀번호<br>
					<input name = "user_pw" type="password" onfocusout = "input_pw()">
					
					<br>
					비밀번호 재확인<br>
					<input name="user_okpw" type="password" onfocusout = "input_idok()">
					
					<br>
				</div>
			</div>
			<br>
			<div id="user_info">
				이름<br>
				<input name="name" type="text" onfocusout = "input_name()"><br>
				생년월일<br>
				<!-- 1923이하라면 빨간 글씨로 정말이세요? 출력-->
				<input name = "birth_year" type="number" placeholder="년(4자)" >
				<select name = "birth_month" id="select_month">
				<!-- 1/31 2/29 3/31 4/30...이상을 입력하면 생년월일을 다시 확인하라고 출력 -->
				<!-- 경고표시 최상위 일>년 -->
					<option selected disabled>월</option>
					<option>1</option>
					<option>2<option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
				</select>
				<input name = "birth_day" placeholder="일" >
				성별<br>
				<select>
					<option>남자
					<option>여자
					<option>선택 안함
				</select>
				<div>
					본인 확인 이메일<span>(선택)</span><br>
					<input name="user_email" type="email" onfocusout = "input_email()">
				</div><br>
			</div>
			<div id = "phone">
				휴대전화<br>
				<select name = "phone_num1" id="select_phone">
					<option selected>대한민국 +82</option>
					<option>미국/캐나다 +1</option>
				</select><br>
				<input name = "phone_num2" placeholder="전화번호 입력" onfocusout = "input_phone()">
				<button type="button">인증번호 받기</button>
				<input name="number" type="text" placeholder="인증번호 입력하세요." onfocusout = "input_number()">
			</div>
			<br>
			<div id = "result">
				<button type="button">가입하기</button>
			</div>
		</div>
	</div>
	<div>
		<ul>
			<li>이용약관
			<li>개인정보처리방침
			<li>책임의 한계와 법적고지
			<li>회원정보 고객센터
		</ul>
		<ul>
			<li>NAVER
			<li>Copyright NAVER Corp. All Rights Reserved.
		</ul>
	</div>
	</form>
	
	<script>
		document.getElementById("result").style.display = "none";
		document.getElementById("warning").style.display = "none";
	</script>
</body>
</html>
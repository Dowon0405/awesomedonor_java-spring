<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko-kr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!--Bootstrap-->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/kfonts2.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
    @font-face { 
	font-family: 'S-CoreDream-5Medium'; 
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff'); 
	font-weight: 100; 
	font-style: normal; 
	}

   body {
   		background-image: url("${pageContext.request.contextPath}/resources/img/배경.jpg");
   		font-family: 'S-CoreDream-5Medium'; 
		}
   </style>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/headerStyle2.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/myPageMenuStyle.css" />"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->


    <title>기관 개인정보 열람</title>

    </script>
    
  </head>
<body style="height: 100%; margin: 0; padding: 0;">
 <div class="container">

   <jsp:include page="../header2.jsp"></jsp:include>
 
   <div class="row">
   <jsp:include page="../receiverMyPageMenu.jsp"></jsp:include>
   <div class = col-1></div>
    <div class="col-8">
		<div id="upborder" style=" margin: 30px 0px 0px 0px; width: 550px; height: 20px; border-radius: 5px 5px 0px 0px; background-color:#B4A8A1;"></div>
    	<div id="designBorder" style=" margin: 0px 0px 40px 0px; border-radius: 0px 0px 5px 5px; width: 550px; background-color: #DBD7D0; height: 740px; border: 4px solid #B4A8A1; ">  
    		<div id="tablebox" style="width: 500px; height: 690px; margin: 25px 10px 10px 25px; text-align: left; color:#736663;">
    			<form action = "./updatePrivateData_Process">
	    			<div class = "row" style="text-align:center;">
	    				<div class = "col-1"></div>
	    				<div class = "col-10"><strong><h5 >개인정보</h5></strong></div>
	    				
	    				<div class = "col-1"></div>
	    			</div>
	    			<br>
	    			<div class = "row">
	    				<div class = col-1></div>
	    				<div class = col-6>
	    				<div class = row>
	    					<div class = col-4>기관명</div>
	    					<div class = col-8>
	    						<div class="form-control" id="amount" placeholder="" disabled>
	    							${dto.member_Receiver_name }
	    						</div>
	    					</div>
	    					
	    				</div>	
	    				</div>
	    				<div class = col-4>
	    				<div class = row>
	    					<div class = col-6>기관분야</div>
	    					<div class = col-6>
	    						<div class="form-control" id="amount" placeholder="" disabled>
	    							${dto.member_Receiver_Category }
	    						</div>
	    					</div>
	    				</div>
	    				</div>
	    				<div class = col-1></div>
	    			</div>
	    			
	    			<div class = "row">
						<div class = col-1></div>
	    				<div class = col-3>기관식별번호 </div>
	    				<div class = col-7> 
	    					<div class="form-control" id="amount" placeholder="" disabled>
	    					${dto.member_Receiver_identifyNumber }
	    					</div>
	    				</div>
	    				<div class = col-1></div>
	    			</div>
	    			<br>
	    			<div class = "row">
						<div class = col-1></div>
	    				<div class = col-2>아이디 </div>
	    				<div class = col-8> 
	    					<div class="form-control" id="amount" placeholder="" disabled>
	    					${dto.member_Receiver_idEmail }
	    					</div>
	    				</div>
	    				<div class = col-1></div>
	    			</div>
	    			<div class = form-group>
	    			<div class = "row">
						<div class = col-1></div>
	    				<div class = col-2>변경 비밀번호 </div>
	    				<div class = col-8> 
	    					<input name = Member_Receiver_pw type = password class="form-control" id="amount" placeholder="">
	    					
	    				</div>
	    				<div class = col-1></div>
	    			</div>
	    			</div>
	    			
	    			<div class = form-group>
	    			<div class = "row">
						<div class = col-1></div>
	    				<div class = col-2>전화번호 </div>
	    				<div class = col-8> 
	    					<input name = Member_Receiver_phoneNumber class="form-control" id="amount" placeholder="${dto.member_Receiver_phoneNumber }">
	    					
	    				</div>
	    				<div class = col-1></div>
	    			</div>
	    			</div>
	    			<br>
	    			<div class = "row">
						<div class = col-1></div>
	    				<div class = col-2>주소 </div>
	    				<div class = col-8> 
	    					<div class="form-control" id="amount" placeholder="" disabled>
	    					${dto.member_Receiver_AdCategory }
	    					</div>
	    				</div>
	    				<div class = col-1></div>
	    			</div>
	    			<div class = "row">
	    				<div class = col-3></div>
	    				<div class = col-8>
	    					<div class="form-control" id="amount" placeholder="" disabled>
	    					${dto.member_Receiver_adDetail }
	    					</div>
	    				</div>
	    				<div class = col-1></div>
	    			</div>
	    			<br>
	    			<div class = form-group>
		    			<div class = "row">
							<div class = col-1></div>
		    				<div class = col-2>홈페이지 </div>
		    				<div class = col-8> 
		    					<input name = Member_Receiver_websiteUrl class="form-control" id="amount" placeholder= "${dto.member_Receiver_websiteUrl }">
		    				
		    				</div>
		    				<div class = col-1></div>
		    			</div>
	    			</div>
	    			<div class = form-group>
		    			<div class="row">
		    				<div class="col-1"></div>
		                    <label for="content" class="col-2 col-form-label">기관에 대한 짧은 소개</label>
		                    <div class="col-8" >
		                    	<input type = hidden name = Member_Receiver_idx value = "${dto.member_Receiver_idx }">
		                        <textarea name = Member_Receiver_introduction class="form-control" id="content" rows="4" placeholder="${dto.member_Receiver_introduction }"></textarea>
		                    </div>
		                    <div class = col-1></div>
		                </div>
		            </div>
					<br>
					
	                <div class = row>
						<div class = col-10></div>
						<div class = col-2><input type = submit class="btn-success" value = "수정"></div>
					</div>
				</form>		
    			</div>
    			</div>
    		</div>
    		<div class = col-1></div>
    	</div>
    <footer id="footer" style="position: fixed; bottom: 1%; left: 37%; text-align: center; font-size: 11px; color: #A6A6AC;"> TEL:02-561-1911 / FAX:02-538-2613 </br>

	© Copyright 2019 CHOONGANG INSTITUTE, All Rights Reserved. </br> </br>
	<a href="https://www.facebook.com/"><img src="${pageContext.request.contextPath}/resources/img/facebook.png" style="height: 20px; width: 20px;"></a>
	<a href="https://www.instagram.com/"><img src="${pageContext.request.contextPath}/resources/img/insta.png" style="height: 20px; width: 20px;"></a>
	<a href="https://twitter.com/"><img src="${pageContext.request.contextPath}/resources/img/twitter.png" style="height: 20px; width: 20px;"></a>
	</footer>
    </div>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="/css/recruit/recruit.css" type="text/css" rel="stylesheet">
	<title>채용공고｜11</title>
	
</head>

<body>
<div class="container">
<div class="row">

<div class="whiteBox"  style=" width:1140px; height: 170px; border-radius: 4px;" >
	<img src="http://img.jobkorea.kr/images/logo/200/w/h/whwpwhwp_200.gif" alt="이미지를 찾을 수 없습니다." width="1138px" height="170px" style="border-radius: 4px;"></img><br>
		<div style="position: relative; top: -50px; left: 30px; height: 105px; width: 105px;border-radius: 4px; border: 1px solid #AAAAAA;">
	        <img src="http://img.jobkorea.kr/images/logo/200/w/h/whwpwhwp_200.gif"  height="103" width="103" style="border-radius: 4px; alt="이미지를 찾을 수 없습니다."/><br> 
	    </div>	
    </div>
</div>  
</div>
<div class="whiteBox"  style="margin-top:1px ; width:1140px; height: 150px">
	<div style="margin-left: 155px; margin-top: 10px" > 
		<label for="corporationNm" style="font-size: 200%" > ${corporationInfo.corp_name} </label> 
			<div style="float: right; margin-right: 10px; ">
				<button id="report&follw" name="report&follw"  style="border: 0px;font-size: 50%;background-color: #FFFFFF;">• • •</button>
			</div>
			<br>
		<label for="addr1">${corporationInfo.addr1 }</label> 
	</div>
	<div style="margin-top: 10px; margin-left: 30px;">
		<label> ${corporationInfo.corp_profile } </label>
		<br>  
		<button value="웹사이트 가기 ↗" name="corp_url" onclick="window.open('http://www.naver.com')" style="border: 1px solid #3CA0FF; background-color: #FFFFFF;font-weight: bolder;color:blue;margin-top: 10px;">웹사이트 가기↗</button> <br>
	</div>
</div>


</body>
</html>


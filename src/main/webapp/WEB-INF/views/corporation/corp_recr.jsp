<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 채용 탭 -->

<div id="pc_find" class="recr_All_div">

	<div class="recr_head">
		<h4 class="recr_head_title"><i class="fas fa-user"></i> 회사 채용공고</h4>
		<!-- <button id="btnslidelt" class="btn btn-default">&lt;</button>
		<button id="btnSlidegt" class="btn btn-default">&gt;</button> -->
	</div>
	
		<c:forEach items="${ recruitList }" var="list">
			<div class="recr_div">
			
				
				<c:choose>
					<c:when test="${ fn:contains( corporationInfo.logo_path, 'http') }">
						<a href="/recr_detail?crecruit_code=${ list.recruit_code }"><img src="${ corporationInfo.logo_path }"></a>
					</c:when>
					<c:otherwise>
						<a href="/recr_detail?recruit_code=${ list.recruit_code }"><img src="${ cp }/view/imageView?mem_id=${ corporationInfo.corp_id }&division=pf"></a>
					</c:otherwise>	
				</c:choose>
				
				<div class="recr_title">${list.recruit_title}</div>
				<div class="recr_corp_name">${ corporationInfo.corp_name}</div>
			</div>
		</c:forEach>

</div>

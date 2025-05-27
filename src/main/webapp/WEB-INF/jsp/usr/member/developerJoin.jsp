<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<div class="flex justify-center w-screen h-screen items-center overflow-hidden gap-2.5 px-[9px] py-[7px] bg-white ">
	<div
		class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 h-[611px] w-[510px] overflow-hidden gap-7 py-[7px] rounded-[10px] bg-[#aedff7] border border-black"
		style="box-shadow: 4px 4px 4px 1px rgba(0, 0, 0, 0.25);">
		<div class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 relative overflow-hidden">
			<img src="/images/로고.png" class="flex-grow-0 flex-shrink-0 w-[109px] h-[76px] object-cover" />
			<p class="flex-grow-0 flex-shrink-0 w-[510px] h-[75px] text-5xl text-center text-black">회원가입</p>
		</div>
		<div
			class="flex flex-col justify-start items-start flex-grow-0 flex-shrink-0 relative overflow-hidden gap-[19px] p-2.5">
			<img src="카카오톡,-네이버-가입.png" class="flex-grow-0 flex-shrink-0 w-80 h-[62px] object-none" />
			<img src="카카오톡,-네이버-가입-2.png" class="flex-grow-0 flex-shrink-0 w-80 h-[62px] object-none" />
		</div>
		<div class="flex justify-center items-center self-stretch flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5">
			<svg width="177" height="2" viewBox="0 0 177 2" fill="none" xmlns="http://www.w3.org/2000/svg"
				class="flex-grow-0 flex-shrink-0" preserveAspectRatio="none">
        <path d="M0.5 1H176.5" stroke="black" stroke-opacity="0.5"></path>
      </svg>
			<p class="flex-grow-0 flex-shrink-0 text-xl text-center text-black/50">또는</p>
			<svg width="177" height="2" viewBox="0 0 177 2" fill="none" xmlns="http://www.w3.org/2000/svg"
				class="flex-grow-0 flex-shrink-0" preserveAspectRatio="none">
        <path d="M0.5 1H176.5" stroke="black" stroke-opacity="0.5"></path>
      </svg>
		</div>
		<div
			class="flex flex-col flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5 rounded-[5px] bg-[#18a0fb]">
			<a class="flex items-center justify-center  w-80 h-12 text-2xl text-white" href="join">ID / PW 회원가입</a>
		</div>
	</div>
</div>

<%@ include file="../common/foot.jspf"%>
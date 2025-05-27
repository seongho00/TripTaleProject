<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<div
	class="flex justify-center items-center w-screen h-screen overflow-hidden gap-2.5 px-[9px] py-[7px] bg-white border border-[#0f0000]">
	<div
		class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 h-[611px] w-[510px] relative overflow-hidden gap-[18px] px-[41px] py-[29px] rounded-[10px] bg-[#aedff7] border border-black"
		style="box-shadow: 4px 4px 4px 0 rgba(0, 0, 0, 0.25);">
		<div
			class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 w-[398px] relative overflow-hidden px-[60px]">
			<img src="로고.png" class="flex-grow-0 flex-shrink-0 w-[109px] h-[76px] object-cover" />
			<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 h-[67px] relative overflow-hidden gap-[31px]">
				<p class="self-stretch flex-grow-0 flex-shrink-0 w-[322px] h-[67px] text-3xl text-center text-black">아이디/비밀번호 찾기</p>
			</div>
		</div>
		<div
			class="flex justify-center items-center self-stretch flex-grow-0 flex-shrink-0 h-[33px] relative overflow-hidden gap-[31px]">

			<p
				class="flex justify-center items-center flex-col flex-grow-0 flex-shrink-0 w-[140px] h-[33px] text-xl text-center text-black">
				아이디 찾기
				<svg width="120" height="1" viewBox="0 0 100 1" fill="none" xmlns="http://www.w3.org/2000/svg"
					class="flex-grow-0 flex-shrink-0" preserveAspectRatio="none">
        <line y1="0.5" x2="121" y2="0.5" stroke="black"></line>
      </svg>
			</p>
			<p class="self-stretch flex-grow-0 flex-shrink-0 w-[140px] h-[33px] opacity-50 text-xl text-center text-black/80">
				비밀번호 찾기</p>
		</div>
		<div class="flex-grow-0 flex-shrink-0 w-[373px] h-[95px] relative overflow-hidden">
			<p class="w-[78px] h-5 absolute left-[17px] top-[7px] text-lg text-left text-black">이름</p>
			<div class="w-[341px] h-[46px] absolute left-[17px] top-[38px] bg-[#f4f5f5] border border-[#757678]"></div>
			<div class="w-[289px] h-[46px] absolute left-[69px] top-[38px] bg-[#f4f5f5] border border-[#757678]"></div>
			<p class="flex justify-start items-center w-[235px] h-[46px] absolute left-[95px] top-[39px] text-lg text-[#757678]">이름</p>
			<form action="">
				<input type="text" name="address" size="40">
			</form>

			<br>
			<img class="w-[35px] h-[35px] absolute left-[25px] top-[43px] opacity-50" src="image-7.png" />
		</div>
		<div class=" flex-grow-0 flex-shrink-0 w-[364px] h-[85px] relative overflow-hidden">
			<p class="w-[78px] h-5 absolute left-[13px] top-0 text-lg text-left text-black">이메일</p>
			<div class="w-[341px] h-[46px] absolute left-[13px] top-[31px] bg-[#f4f5f5] border border-[#757678]"></div>
			<div class="w-[289px] h-[46px] absolute left-[65px] top-[31px] bg-[#f4f5f5] border border-[#757678]"></div>
			<p class="flex justify-start items-center w-[235px] h-[46px] absolute left-[91px] top-8 text-lg text-[#757678]">이메일</p>
			<img src="image-8.png" class="w-[35px] h-[35px] absolute left-[21px] top-9 opacity-50 object-cover" />
		</div>
		<div
			class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-12 w-[276px] relative overflow-hidden rounded-[5px] bg-[#18a0fb]">
			<p class="flex-grow-0 flex-shrink-0 text-2xl text-center text-white">아이디 찾기</p>
		</div>
	</div>
</div>

<%@ include file="../common/foot.jspf"%>
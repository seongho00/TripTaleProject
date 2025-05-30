<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>


<div
	class="flex flex-col justify-start items-center w-screen h-screen overflow-hidden gap-2.5 bg-white border border-[#0f0000]">
	<div
		class="flex justify-between items-center self-stretch flex-grow-0 flex-shrink-0 relative overflow-hidden px-2.5 bg-[#aedff7] border border-black">
		<div
			class="flex justify-start items-center flex-grow relative overflow-hidden gap-2.5">
			<img src="/images/로고.png"
				class="flex-grow-0 flex-shrink-0 w-[121px] h-[121px] object-cover" />
		</div>

		<div
			class="flex justify-center items-center self-stretch  flex-shrink-0 w-[684px] h-[121px] text-[40px] text-black">
			어떤 지역으로 여행하고 싶으신가요?</div>
		<div
			class="self-stretch flex-grow  h-[121px] relative overflow-hidden"></div>
	</div>

	<div
		class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 h-[778px] relative overflow-hidden p-2.5 border-2 border-[#7ac4d7]">
		<div
			class="flex justify-between items-center flex-grow-0 flex-shrink-0 w-[309px] h-[41px] relative px-2.5 py-[7px] rounded-[15px] bg-white border border-black">
			<input
				class="flex justify-center items-center flex-grow-0 flex-shrink-0 text-xl text-black/40"
				type="text" name="reigonName" placeholder="지역명을 입력하세요"
				autocomplete="off" />
			<svg width="22" height="23" viewBox="0 0 22 23" fill="none"
				xmlns="http://www.w3.org/2000/svg"
				class="flex-grow-0 flex-shrink-0 w-[21px] h-[21.5px]"
				preserveAspectRatio="none">
        <circle cx="9" cy="9" r="8.5"
					transform="matrix(-1 0 0 1 18.5 0.25)" stroke="black"></circle>
        <path d="M15.5 15.75L21.5 21.75" stroke="black"
					stroke-linecap="round"></path>
      </svg>
		</div>

	</div>
</div>
<%@ include file="../common/foot.jspf"%>
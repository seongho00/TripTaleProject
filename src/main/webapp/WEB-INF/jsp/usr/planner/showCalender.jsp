<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>


<div
	class="flex flex-col justify-start items-center w-screen h-screen overflow-hidden gap-2.5 bg-white border border-[#0f0000]">
	<div
		class="flex justify-center items-center self-stretch flex-grow-0 flex-shrink-0 h-[138px] overflow-hidden gap-2.5 px-[293px] py-[41px] bg-[#aedff7] border border-black">
		<div
			class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[1008px] h-[138px] relative gap-2.5 border-0 border-[#f00]">
			<img src="/images/로고.png"
				class="flex-grow-0 flex-shrink-0 w-[138px] h-[138px] object-cover" />
			<div
				class="flex justify-center items-center self-stretch flex-grow relative overflow-hidden gap-2.5 p-2.5">
				<p
					class="self-stretch flex-grow w-[127.33px] h-[118px] text-xl font-medium text-center text-black">
					숙박</p>
				<p
					class="self-stretch flex-grow w-[127.33px] h-[118px] text-xl font-medium text-center text-black">
					맛집</p>
				<p
					class="self-stretch flex-grow w-[127.33px] h-[118px] text-xl font-medium text-center text-black">
					명소</p>
			</div>
			<div
				class="flex justify-center items-center self-stretch flex-grow-0 flex-shrink-0 w-[428px] relative">
				<p
					class="flex-grow w-[159px] h-14 text-xl font-medium text-center text-black">내
					여행</p>
				<p
					class="flex-grow w-[159px] h-14 text-xl font-medium text-center text-black">계획
					작성</p>
				<img src="/images/프로필-아이콘.png"
					class="flex-grow-0 flex-shrink-0 w-[110px] h-[110px] object-cover" />
			</div>
		</div>
	</div>
	<div
		class="flex flex-col justify-center items-center self-stretch flex-grow relative overflow-hidden gap-2.5 p-2.5">
		<div
			class="flex justify-center items-center flex-grow-0 flex-shrink-0 h-[49px] relative overflow-hidden gap-2.5 px-[66px] py-0.5">
			<p class="flex-grow-0 flex-shrink-0 text-3xl text-center text-black">일정
				확인</p>
		</div>
		<img src="image-14.png"
			class="flex-grow-0 flex-shrink-0 w-[996px] h-[675px] object-cover border-2 border-[#7ac4d7]" />
	</div>
</div>

<%@ include file="../common/foot.jspf"%>
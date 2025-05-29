<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<script>
	/* 	const params = {};
	 params.id = parseInt('${param.id}');
	 params.memberId = parseInt('${loginedMemberId}'); */

	var activeId = $
	{
		activeId
	};
	var activePw = $
	{
		activePw
	};
</script>

<script>
	$(document).ready(function() {
		function init() {
			if (activeId) {
				$('#idButton').addClass('btn-outline');
			} else if (activePw) {
				$('#pwButton').addClass('btn-outline');
			}
		}
		init();
	});

	function findButtonToggle() {
		$('#idButton').toggleClass('btn-outline');
		$('#pwButton').toggleClass('btn-outline');
	}
</script>

<div
	class="flex justify-center items-center w-screen h-screen overflow-hidden gap-2.5 px-[9px] py-[7px] bg-white border border-[#0f0000]">
	<div
		class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 h-[611px] w-[510px] relative overflow-hidden gap-[18px] px-[41px] py-[29px] rounded-[10px] bg-[#aedff7] border border-black"
		style="box-shadow: 4px 4px 4px 0 rgba(0, 0, 0, 0.25);">
		<div
			class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 w-[398px] relative overflow-hidden px-[60px]">
			<a href="../home/main">
				<img src="/images/로고.png" class="flex-grow-0 flex-shrink-0 w-[109px] h-[76px] object-cover" />
			</a>
			<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 h-[67px] relative overflow-hidden gap-[31px]">
				<p class="self-stretch flex-grow-0 flex-shrink-0 w-[322px] h-[67px] text-3xl text-center text-black">아이디/비밀번호 찾기</p>
			</div>
		</div>
		<div
			class="flex justify-center items-center self-stretch flex-grow-0 flex-shrink-0 h-[33px] relative overflow-hidden gap-[10px]">

			<a onClick="findButtonToggle()" id="idButton"
				class="flex justify-center items-center flex-col flex-grow-0 flex-shrink-0 w-[150px] h-[33px] text-xl text-center text-black cursor-pointer">
				아이디 찾기
				<svg width="120" height="1" viewBox="0 0 100 1" fill="none" xmlns="http://www.w3.org/2000/svg"
					class="flex-grow-0 flex-shrink-0" preserveAspectRatio="none">
        <line y1="0.5" x2="121" y2="0.5" stroke="black"></line>
      </svg>
			</a>
			<a onClick="findButtonToggle()" id="pwButton"
				class="x self-stretch flex-grow-0 flex-shrink-0 w-[150px] h-[33px] opacity-50 text-xl text-center text-black/80 cursor-pointer">
				비밀번호 찾기</a>
		</div>
		<div class="flex-grow-0 flex-shrink-0 w-[373px] h-[95px] relative overflow-hidden">
			<p class="w-[78px] h-5 absolute left-[17px] top-[7px] text-lg text-left text-black">이름</p>
			<div class="w-[341px] h-[46px] absolute left-[17px] top-[38px] bg-[#f4f5f5] border border-[#757678]"></div>
			<input class="pl-5 w-[289px] h-[46px] absolute left-[69px] top-[38px] bg-[#f4f5f5] border border-[#757678] text-lg"
				type="text" name="name" placeholder="이름" autocomplete="off"></input>

			<br>
			<img class="w-[35px] h-[35px] absolute left-[25px] top-[43px] opacity-50" src="/images/사람.png" />
		</div>
		<div class=" flex-grow-0 flex-shrink-0 w-[364px] h-[95px] relative overflow-hidden">
			<p class="w-[78px] h-5 absolute left-[13px] top-0 text-lg text-left text-black">이메일</p>
			<div class="w-[341px] h-[46px] absolute left-[13px] top-[31px] bg-[#f4f5f5] border border-[#757678]"></div>
			<input class="pl-5 w-[289px] h-[46px] absolute left-[65px] top-[31px] bg-[#f4f5f5] border border-[#757678] text-lg"
				type="text" name="name" placeholder="이메일" autocomplete="off"></input>

			<img src="/images/이메일.png" class="w-[35px] h-[35px] absolute left-[21px] top-9 opacity-50 object-cover" />
		</div>
		<div
			class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-12 w-[276px] relative overflow-hidden rounded-[5px] bg-[#18a0fb]">
			<a class="flex-grow-0 flex-shrink-0 text-2xl text-center text-white" href="#">아이디 찾기</a>
		</div>
	</div>
</div>

<%@ include file="../common/foot.jspf"%>
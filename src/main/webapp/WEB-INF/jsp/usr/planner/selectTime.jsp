<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>

<div
	class="flex flex-col justify-start items-center w-screen h-screen overflow-hidden gap-2.5 bg-white border border-[#0f0000]">
	<div
		class="flex absolute justify-end items-center self-stretch flex-grow relative overflow-hidden gap-3 pr-2.5">
		<div
			class="flex flex-col justify-between items-start self-stretch flex-grow-0 flex-shrink-0 w-[497px] relative overflow-hidden pl-px pt-px pb-2.5 border border-black">
			<div
				class="self-stretch flex-grow-0 flex-shrink-0 h-[121px] relative overflow-hidden bg-[#aedff7] border border-black">
				<img src="/images/로고.png"
					class="w-[77px] h-[53px] absolute left-[-1px] top-[-1px] object-cover" />
				<div
					class="flex justify-center items-end absolute left-[78px] top-[47px] overflow-hidden px-11 py-[13px]">
					<p
						class="flex-grow-0 flex-shrink-0 w-[51px] h-[38px] text-xl font-medium text-center text-black">
						서울</p>
					<p
						class="flex-grow-0 flex-shrink-0 w-[201px] h-6 text-[15px] font-medium text-center text-black">
						2024.05.24 ~ 2024.05.25</p>
				</div>
				<p
					class="w-[141px] h-[52px] absolute left-[177.5px] top-2.5 text-3xl font-medium text-center text-black">
					여행 이름</p>
			</div>
			<div
				class="self-stretch flex-grow-0 flex-shrink-0 h-[759px] relative overflow-hidden">
				<p
					class="w-[184px] h-[51px] absolute left-[146.5px] top-0 text-3xl font-medium text-center text-black">
					시간 선택</p>
				<div
					class="flex flex-col justify-start items-start w-[407px] absolute left-[35px] top-[95px] gap-3">
					<div
						class="flex justify-start items-center self-stretch flex-grow-0 flex-shrink-0 overflow-hidden gap-2.5 border border-black">
						<div
							class="flex flex-col justify-center items-center self-stretch flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5">
							<p
								class="flex-grow-0 flex-shrink-0 text-xs font-medium text-center text-black">
								1일차</p>
							<p
								class="flex-grow-0 flex-shrink-0 w-[61px] h-[23px] text-[15px] font-medium text-center text-black">
								5/24</p>
						</div>
						<div
							class="flex flex-col justify-between items-center self-stretch flex-grow overflow-hidden py-2.5">
							<div
								class="flex justify-between items-center flex-grow-0 flex-shrink-0 w-[227px] relative overflow-hidden">
								<p
									class="flex-grow-0 flex-shrink-0 w-[78px] h-[18px] text-[10px] font-medium text-center text-black">
									출발 시간</p>
								<p
									class="flex-grow-0 flex-shrink-0 w-[73px] h-[17px] text-[10px] font-medium text-center text-black">
									종료 시간</p>
							</div>
							<div
								class="flex justify-start items-center flex-grow-0 flex-shrink-0 w-[283px] relative overflow-hidden gap-2.5 p-2.5">
								<img src="/images/시계 이미지.png "
									class="flex-grow-0 flex-shrink-0 w-3.5 h-3.5 object-cover" />
								<p
									class="flex-grow-0 flex-shrink-0 w-[87px] h-[17px] text-[15px] font-medium text-center text-black">
									10: 00 AM</p>
								<p
									class="flex-grow-0 flex-shrink-0 w-[21px] h-[13px] text-[15px] font-medium text-center text-black">
									~</p>
								<img src="/images/시계 이미지.png"
									class="flex-grow-0 flex-shrink-0 w-3.5 h-3.5 object-cover" />
								<p
									class="flex-grow-0 flex-shrink-0 w-[87px] h-[17px] text-[15px] font-medium text-center text-black">
									10: 00 PM</p>
							</div>
						</div>
					</div>
					<div
						class="flex justify-start items-center self-stretch flex-grow-0 flex-shrink-0 overflow-hidden gap-2.5 border border-black">
						<div
							class="flex flex-col justify-center items-center self-stretch flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5">
							<p
								class="flex-grow-0 flex-shrink-0 text-xs font-medium text-center text-black">
								2일차</p>
							<p
								class="flex-grow-0 flex-shrink-0 w-[61px] h-[23px] text-[15px] font-medium text-center text-black">
								5/25</p>
						</div>
						<div
							class="flex flex-col justify-between items-center self-stretch flex-grow overflow-hidden py-2.5">
							<div
								class="flex justify-between items-center flex-grow-0 flex-shrink-0 w-[227px] relative overflow-hidden">
								<p
									class="flex-grow-0 flex-shrink-0 w-[78px] h-[18px] text-[10px] font-medium text-center text-black">
									출발 시간</p>
								<p
									class="flex-grow-0 flex-shrink-0 w-[73px] h-[17px] text-[10px] font-medium text-center text-black">
									종료 시간</p>
							</div>
							<div
								class="flex justify-start items-center flex-grow-0 flex-shrink-0 w-[283px] relative overflow-hidden gap-2.5 p-2.5">
								<img src="/images/시계 이미지.png"
									class="flex-grow-0 flex-shrink-0 w-3.5 h-3.5 object-cover" />
								<p
									class="flex-grow-0 flex-shrink-0 w-[87px] h-[17px] text-[15px] font-medium text-center text-black">
									10: 00 AM</p>
								<p
									class="flex-grow-0 flex-shrink-0 w-[21px] h-[13px] text-[15px] font-medium text-center text-black">
									~</p>
								<img src="/images/시계 이미지.png"
									class="flex-grow-0 flex-shrink-0 w-3.5 h-3.5 object-cover" />
								<p
									class="flex-grow-0 flex-shrink-0 w-[87px] h-[17px] text-[15px] font-medium text-center text-black">
									10: 00 PM</p>
							</div>
						</div>
					</div>
					<div
						class="flex justify-start items-center self-stretch flex-grow-0 flex-shrink-0 overflow-hidden gap-2.5 border border-black">
						<div
							class="flex flex-col justify-center items-center self-stretch flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5">
							<p
								class="flex-grow-0 flex-shrink-0 text-xs font-medium text-center text-black">
								3일차</p>
							<p
								class="flex-grow-0 flex-shrink-0 w-[61px] h-[23px] text-[15px] font-medium text-center text-black">
								5/26</p>
						</div>
						<div
							class="flex flex-col justify-between items-center self-stretch flex-grow overflow-hidden py-2.5">
							<div
								class="flex justify-between items-center flex-grow-0 flex-shrink-0 w-[227px] relative overflow-hidden">
								<p
									class="flex-grow-0 flex-shrink-0 w-[78px] h-[18px] text-[10px] font-medium text-center text-black">
									출발 시간</p>
								<p
									class="flex-grow-0 flex-shrink-0 w-[73px] h-[17px] text-[10px] font-medium text-center text-black">
									종료 시간</p>
							</div>
							<div
								class="flex justify-start items-center flex-grow-0 flex-shrink-0 w-[283px] relative overflow-hidden gap-2.5 p-2.5">
								<img src="image-20.png"
									class="flex-grow-0 flex-shrink-0 w-3.5 h-3.5 object-cover" />
								<p
									class="flex-grow-0 flex-shrink-0 w-[87px] h-[17px] text-[15px] font-medium text-center text-black">
									10: 00 AM</p>
								<p
									class="flex-grow-0 flex-shrink-0 w-[21px] h-[13px] text-[15px] font-medium text-center text-black">
									~</p>
								<img src="image-20.png"
									class="flex-grow-0 flex-shrink-0 w-3.5 h-3.5 object-cover" />
								<p
									class="flex-grow-0 flex-shrink-0 w-[87px] h-[17px] text-[15px] font-medium text-center text-black">
									10: 00 PM</p>
							</div>
						</div>
					</div>
					<div
						class="flex justify-center items-end self-stretch flex-grow-0 flex-shrink-0 h-[99px] overflow-hidden gap-2.5 pl-[72px] pr-[85px] py-[19px]">
						<div
							class="flex justify-start items-start flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5 p-2.5 rounded-[10px] bg-black">
							<p
								class="flex-grow-0 flex-shrink-0 w-[205px] h-[41px] text-xl font-medium text-center text-white">
								시간 설정 완료</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<img src="지도-이미지.png"
			class="self-stretch flex-grow-0 flex-shrink-0 w-[1180px] object-cover" />
	</div>
</div>


<%@ include file="../common/foot.jspf"%>
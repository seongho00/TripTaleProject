<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>

<div
	class="planner_calender flex flex-col justify-center items-center w-screen h-screen overflow-hidden gap-2.5 bg-[#020000]/[0.43] border border-[#0f0000]">
	<div
		class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 w-[839px] relative overflow-hidden gap-2.5 px-[29px] rounded-[10px] bg-white border-2 border-black">
		<p class="flex-grow-0 flex-shrink-0 w-[467px] h-[86px] text-[32px] text-center text-black">여행 일정 선택 하기</p>
		<p class="flex-grow-0 flex-shrink-0 w-[185px] h-[22px] text-[15px] text-center text-black">유의사항</p>
		<div
			class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 w-[839px] relative overflow-hidden px-[165px]">
			<div class="flex justify-start items-center flex-grow-0 flex-shrink-0 overflow-hidden">
				<div
					class="flex flex-col justify-start items-start flex-grow-0 flex-shrink-0 w-[306px] overflow-hidden gap-[22px] p-6 rounded-lg bg-white"
					style="box-shadow: 2px 16px 19px 0 rgba(0, 0, 0, 0.09);">
					<div class="flex justify-between items-start self-stretch flex-grow-0 flex-shrink-0 h-4 relative overflow-hidden">
						<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"
							class="flex-grow-0 flex-shrink-0 w-4 h-4 relative" preserveAspectRatio="none">
              <path d="M10.1831 4.175L6.35811 8L10.1831 11.825L8.99977 13L3.99977 8L8.99977 3L10.1831 4.175Z"
								fill="#B5BEC6"></path>
            </svg>
						<p class="flex-grow-0 flex-shrink-0 w-[110px] text-sm text-center text-[#4a5660]">2025년 5월</p>
						<div class="flex-grow-0 flex-shrink-0 w-4 h-4 relative overflow-hidden"></div>
					</div>
					<div class="flex justify-start items-start self-stretch flex-grow-0 flex-shrink-0 h-5 gap-2">
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">SAN</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">MON</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">TUE</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">WED</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">THU</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">FRI</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">SAT</p>
						</div>
					</div>
					<div class="flex flex-col justify-start items-start self-stretch flex-grow-0 flex-shrink-0 gap-2">
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">1</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">2</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">3</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">4</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">5</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">6</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">7</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">8</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">9</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">10
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">11
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">12
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">13
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">14
								</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">15
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">16
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">17
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">18
								</p>
							</div>
							<div class="flex flex-col justify-start items-start flex-grow-0 flex-shrink-0">
								<div
									class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5 rounded-[29px] bg-[#f04d23]">
									<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-white">19</p>
								</div>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">20
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">21
								</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">22
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">23
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">24
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">25
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">26
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">27
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">28
								</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">29
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">30
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">31
								</p>
							</div>
						</div>
					</div>
				</div>
				<div
					class="flex flex-col justify-start items-start flex-grow-0 flex-shrink-0 overflow-hidden gap-[22px] p-6 rounded-lg bg-white"
					style="box-shadow: 2px 16px 19px 0 rgba(0, 0, 0, 0.09);">
					<div class="flex justify-between items-start self-stretch flex-grow-0 flex-shrink-0 relative overflow-hidden">
						<div class="flex-grow-0 flex-shrink-0 w-4 h-4 relative overflow-hidden"></div>
						<p class="flex-grow-0 flex-shrink-0 w-[110px] text-sm text-center text-[#4a5660]">2025년 6월</p>
						<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"
							class="flex-grow-0 flex-shrink-0 w-4 h-4 relative" preserveAspectRatio="none">
              <path d="M5 11.825L8.825 8L5 4.175L6.18333 3L11.1833 8L6.18333 13L5 11.825Z" fill="#B5BEC6"></path>
            </svg>
					</div>
					<div class="flex justify-start items-start self-stretch flex-grow-0 flex-shrink-0 gap-2">
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">SAN</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">MON</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">TUE</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">WED</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">THU</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">FRI</p>
						</div>
						<div class="flex justify-center items-center flex-grow-0 flex-shrink-0 w-[30px] h-5 relative gap-2.5">
							<p class="flex-grow-0 flex-shrink-0 text-[10px] text-center uppercase text-[#b5bec6]">SAT</p>
						</div>
					</div>
					<div class="flex flex-col justify-start items-start self-stretch flex-grow-0 flex-shrink-0 gap-2">
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">1</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">2</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">3</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">4</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">5</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">6</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">7</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">8</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">9</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">10
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">11
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">12
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">13
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">14
								</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">15
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">16
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">17
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">18
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">19
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">20
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">21
								</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">22
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">23
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">24
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">25
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">26
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">27
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">28
								</p>
							</div>
						</div>
						<div class="flex justify-start items-start flex-grow-0 flex-shrink-0 gap-2">
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">29
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">30
								</p>
							</div>
							<div
								class="flex flex-col justify-center items-center flex-grow-0 flex-shrink-0 h-[30px] w-[30px] relative gap-2.5">
								<p class="flex-grow-0 flex-shrink-0 w-5 h-[15px] text-base text-center text-[#4a5660]">31
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="self-stretch flex-grow-0 flex-shrink-0 h-[41px] relative overflow-hidden">
				<div
					class="flex justify-center items-center w-[59px] absolute left-[450.5px] top-1.5 overflow-hidden gap-2.5 rounded-[10px] bg-black">
					<p class="flex-grow-0 flex-shrink-0 text-xl text-center text-white">확인</p>
				</div>
			</div>
		</div>
	</div>
</div>


<%@ include file="../common/foot.jspf"%>
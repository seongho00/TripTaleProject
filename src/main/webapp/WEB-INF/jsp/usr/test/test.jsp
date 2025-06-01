<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
/* 달력 넓이 조절 */
#calendar {
	max-width: 1100px;
	height: 800px;
	margin: 0 auto;
}

/* 오늘인 날짜 표시 css */
.fc-daygrid-day.fc-day-today {
	box-shadow: 0 0 0 2px red inset; /* 내부 빨간 테두리 */
	border-radius: 4px;
}

.floating-btn-wrapper {
	position: fixed;
	bottom: 30px;
	right: 30px;
	z-index: 9999;
}

/* 오른쪽 아래 버튼 */
.floating-btn-wrapper {
	position: fixed;
	bottom: 30px;
	right: 30px;
	z-index: 9999;
}

.floating-btn {
	display: flex;
	align-items: center;
	justify-content: center; /* 처음엔 중앙 정렬 */
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 50%; /* 원형 */
	width: 50px;
	height: 50px;
	font-size: 20px;
	cursor: pointer;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	overflow: hidden;
	transition: all 0.3s ease;
	position: relative;
	padding: 0; /* 내부 여백 제거 */
}

.btn-icon {
	display: block;
	font-size: 24px;
	transition: opacity 0.2s ease;
	font-size: 24px;
}

.btn-text {
	display: none;
	margin-left: 10px;
	opacity: 0;
	white-space: nowrap;
	transform: translateX(10px);
	font-size: 16px;
	transition: opacity 0.3s ease, transform 0.3s ease;
	visibility: hidden;
	margin-left: 10px; /* 처음엔 공간 차지도 막음 */
}

/* 🔄 Hover 시 동작 */
.floating-btn:hover {
	width: 110px;
	border-radius: 25px;
	justify-content: flex-start;
	padding-left: 15px;
	background-color: #0056b3;
}

.floating-btn:hover .btn-icon {
	display: none;
}

.floating-btn:hover .btn-text {
	display: block;
	opacity: 1;
	transform: translateX(0);
	visibility: visible;
}
</style>

<script>
	document.addEventListener('DOMContentLoaded', function() {

		var calendarEl = document.getElementById('calendar');

		let headerToolbar = {
			left : 'prevYear,prev,next,nextYear today',
			center : 'title',
			right : 'dayGridMonth,dayGridWeek,timeGridDay,listWeek'
		};

		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			events : '/fullCalendar/showScheduleList', // DB랑 연결해줄 컨트롤러 uri 작성
			locale : 'ko', // ✅ 한국어 로케일
			firstDay : 1, // 월요일부터 시작
			headerToolbar : headerToolbar, // 헤더 툴 바 코드
			nowIndicator : true,
			editable : true, // ✅ 드래그로 옮기기 가능

			/* // ✅ 커스텀 버튼 정의
			customButtons : {
				addEventBtn : {
					text : '일정 추가',
					click : function() {
						calendar.addEvent({
							title : '새로운 일정',
							start : new Date().toISOString().slice(0, 10)
						});
						alert('일정이 추가되었습니다.');
					}
				}
			}, */

			// 일정 수정 코드
			eventDrop : function(info) {
				$.ajax({
					url : '/fullCalendar/updateSchedule',
					method : 'POST',
					contentType : 'application/json',
					data : JSON.stringify({
						id : info.event.id,
						start : info.event.startStr,
						end : info.event.endStr
					}),
					success : function() {
						console.log('일정이 성공적으로 변경되었습니다.');
					},
					error : function() {
						alert('일정 이동에 실패했습니다.');
						info.revert(); // ← 실패 시 원래 위치로 되돌림
					}
				});
			}
		});

		calendar.render();
		
		// ✅ 버튼 클릭 시 일정 추가 
		document.getElementById('addEventBtn').addEventListener('click', function (e) {
			  const go = confirm('일정을 추가하시겠습니까?');

			  if (!go) {
			    // 사용자가 취소를 누른 경우
			    e.preventDefault();  // 버튼 기본 동작 차단
			    return false;
			  }

			  // 사용자가 확인을 누른 경우 → 페이지 이동
			  window.location.href = '../planner/region';
			});
		
	
	});
</script>
</head>
<body>


	<div id='calendar'></div>


	<div class="floating-btn-wrapper">
		<button id="addEventBtn" class="floating-btn">
			<span class="btn-icon">
				<i class="fas fa-plus"></i>
			</span>
			<span class="btn-text">일정추가</span>
		</button>
	</div>


</body>
</html>
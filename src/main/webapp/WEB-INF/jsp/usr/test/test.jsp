<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
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

			locale : 'ko', // ✅ 한국어 로케일
			firstDay : 1, // 월요일부터 시작
			headerToolbar : headerToolbar, // 헤더 툴 바 코드
			nowIndicator : true,
			editable : true, // ✅ 드래그로 옮기기 가능

			// DB랑 연결해줄 컨트롤러 uri 작성
			events : function(fetchInfo, successCallback, failureCallback) {
				const memberId = ${memberId};
				$.ajax({
					url : '/fullCalendar/showScheduleList',
					type : 'POST',
					data : {
						memberId : memberId
					},
					success : function(response) {
						successCallback(response);
					},
					error : function() {
						failureCallback();
					}
				});
			},

			// 일정 수정 코드
			eventDrop : function(info) {
				const memberId = ${memberId};
				const newStart = info.event.startStr.split('T')[0];
				const newEnd = info.event.endStr.split('T')[0];
				const eventId = info.event.id; // 바꿀려는 일정 id
				const confirmChange = confirm("[" + newStart + "~" + newEnd
						+ "]으로 일정을 변경하시겠습니까?");

				if (!confirmChange) {
					info.revert(); // 사용자가 취소한 경우 → 원래 위치로 복귀
					return;
				}

				$.ajax({
					url : '/fullCalendar/updateSchedule',
					method : 'POST',
					data : {
						id : eventId,
						memberId : memberId,
						startDate : info.event.startStr,
						endDate : info.event.endStr
					},
					success : function() {
						alert('일정이 성공적으로 변경되었습니다.');
					},
					error : function() {
						alert('일정 이동에 실패했습니다.');
						info.revert(); // 실패 시 복구
					}
				});
			}
		});

		calendar.render();

		// ✅ 버튼 클릭 시 일정 추가 
		document.getElementById('addEventBtn').addEventListener('click',
				function(e) {
					const go = confirm('일정을 추가하시겠습니까?');

					if (!go) {
						// 사용자가 취소를 누른 경우
						e.preventDefault(); // 버튼 기본 동작 차단
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
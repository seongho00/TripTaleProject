<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
#calendar {
	max-width: 1100px;
	height: 800px;
	margin: 0 auto;
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
			headerToolbar : headerToolbar,
			editable : true, // ✅ 드래그로 옮기기 가능
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

	});
</script>
</head>
<body>




	<div id='calendar'></div>

</body>
</html>
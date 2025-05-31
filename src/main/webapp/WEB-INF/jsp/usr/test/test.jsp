<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<style>
.flatpickr-day.inRange {
	background: #AEDFF7; /* 파란 계열 배경 */
	color: black; /* 글자색 */
	border-color: #AEDFF7;
}

/* 시작일과 종료일 강조 */
.flatpickr-day.startRange, .flatpickr-day.endRange {
	background: #007BFF; /* 진한 파랑 배경 */
	color: white;
	border-radius: 50%; /* 원형으로 강조 */
}
/* 호버 시에도 inRange 색 유지 */
.flatpickr-day.inRange:hover {
	background: #90cdf4;
	color: black;
}

/* 오늘 날짜 (선택되지 않았을 때): 빨간 테두리 동그라미 */
.flatpickr-day.today:not(.selected) {
	border: 2px solid red !important; /* 🔴 빨간 테두리 */
	border-radius: 50% !important; /* 동그라미 */
	background: transparent !important; /* 배경색은 기본 유지 */
	color: inherit; /* 기본 글자색 유지 */
	box-sizing: border-box; /* 테두리 포함 정렬 */
}
/* Flatpickr 내부 달력 컨테이너 스타일 조작 */
.flatpickr-innerContainer {
	position: relative;
}

/* 달력 사이 구분선 */
.flatpickr-innerContainer::before {
	content: "";
	position: absolute;
	top: 0;
	bottom: 0;
	left: 50%;
	width: 1px;
	background-color: #ccc;
	z-index: 10;
}
</style>
<title>Insert title here</title>

</head>
<body>

	<input type="text" id="datepicker"
		style="position: absolute; left: -9999px;">
	<script>
		flatpickr("#datepicker", {
			dateFormat : "Y-m-d", // 출력 포맷
			mode : "range",
			inline : true,
			locale : "ko", // 한국어 사용 시
			showMonths : 2,
			onChange : function(selectedDates, dateStr, instance) {
				if (selectedDates.length === 2) {
					const startDate = selectedDates[0];
					const endDate = selectedDates[1];

					// 여기서 원하는 동작 수행
					console.log("시작일:", startDate);
					console.log("종료일:", endDate);
				}
			},
			
		});
	</script>
</body>
</html>
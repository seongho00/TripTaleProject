<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>


<form action="../test/timePickerResult" method="get">
	<input type="hidden" name="selectHour" id="selectedHourInput" />
	<input type="hidden" name="selectMinute" id="selectedMinuteInput" />
	<div id="timepicker"></div>

	<button type="submit">시간 전송</button>
</form>

<link rel="stylesheet" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css" />
<script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.min.js"></script>


<script>
	let instance;

	$(function() {
		// ✅ DOM 요소 직접 전달
		instance = new tui.TimePicker(document.getElementById('timepicker'), {
			inputType : 'spinbox',
			format : 'HH:mm',
			timeStep : 10,
			showMeridiem : false
		});

		$('form').on('submit', function() {
			const hours = String(instance.hour).padStart(2, '0');
			const minutes = String(instance.minute).padStart(2, '0');

			$('#selectedHourInput').val(hours);
			$('#selectedMinuteInput').val(minutes);
		});
	});
</script>


<%@ include file="../common/foot.jspf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script>
	let historyBack = '${historyBack} == true';
	let replace = '${historyBack} == true';
	let replaceLocation = '${replaceLocation}';
	let msg = '${msg}'.trim();

	if (msg.length > 0) {
		alert(msg);
	}
	if (historyBack) {

		history.back();
	}
	if (replace) {
		replace(replaceLocation);
	}
</script>


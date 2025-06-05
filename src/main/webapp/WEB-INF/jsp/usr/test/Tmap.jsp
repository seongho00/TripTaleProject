<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="관광사진" />
<%@ include file="../common/head.jspf"%>



<script type="text/javascript">
  function getAddressFromCoords(lat, lon) {
    const url = "https://apis.openapi.sk.com/tmap/geo/reversegeocoding?version=1&lat="+ lat +"&lon="+ lon +"&coordType=WGS84GEO&addressType=A10";

    fetch(url, {
      headers: {
        "appKey": "JtTmUgD4yw9LrbRlREh2B8dYadiOogkRQNM0SdBj"
      }
    })
      .then(res => res.json())
      .then(data => {
        if (data.addressInfo) {
        	console.log(data);
          console.log("주소:", data.addressInfo.fullAddress);
        } else {
          console.warn("주소 정보를 가져올 수 없습니다.");
        }
      })
      .catch(err => {
        console.error("API 호출 오류:", err);
      });
  }

  // 사용 예시:
  getAddressFromCoords(37.5071013134, 127.0494329104);
</script>


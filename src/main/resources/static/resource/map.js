window.onload = function() {
	kakao.maps.load(function() {
		const mapContainer = document.getElementById('map');
		const map = new kakao.maps.Map(mapContainer, {
			center: new kakao.maps.LatLng(35.8, 127.8),
			level: 12
		});

		map.setZoomable(false);

		const colors = [
			'#f94144', '#f3722c', '#f8961e', '#f9c74f',
			'#90be6d', '#43aa8b', '#577590', '#277da1',
			'#4d908e', '#b5838d', '#6a4c93', '#f28482',
			'#84a59d', '#f6bd60', '#cdb4db', '#9a8c98', '#2a9d8f'
		];

		const fallbackNames = [
			"서울특별시", "부산광역시", "대구광역시", "인천광역시", "광주광역시",
			"대전광역시", "울산광역시", "세종특별자치시", "경기도", "강원도",
			"충청북도", "충청남도", "전라북도", "전라남도", "경상북도",
			"경상남도", "제주특별자치도"
		];

		fetch('/sd_cleaned.geojson.json')
			.then(res => res.json())
			.then(geojson => {
				geojson.features.forEach((feature, index) => {
					const name = feature.properties?.name || fallbackNames[index] || `미지정${index}`;
					const color = colors[index % colors.length];

					const coords = feature.geometry?.coordinates;
					const type = feature.geometry?.type;
					const polygons = [];

					if (!coords || !Array.isArray(coords)) return;

					if (type === "Polygon") {
						coords.forEach(ring => {
							const path = ring
								.map(coord => new kakao.maps.LatLng(coord[1], coord[0]))
								.filter(p => p);
							if (path.length) polygons.push(path);
						});
					} else if (type === "MultiPolygon") {
						coords.forEach(multi => {
							multi.forEach(ring => {
								const path = ring
									.map(coord => new kakao.maps.LatLng(coord[1], coord[0]))
									.filter(p => p);
								if (path.length) polygons.push(path);
							});
						});
					}

					if (!polygons.length) return;

					const polygon = new kakao.maps.Polygon({
						map,
						path: polygons,
						strokeWeight: 2,
						strokeColor: '#333',
						strokeOpacity: 0.8,
						fillColor: color,
						fillOpacity: 1
					});

					const latlngs = polygons.flat();
					if (!latlngs.length) return;

					const sumLat = latlngs.reduce((sum, latlng) => sum + latlng.getLat(), 0);
					const sumLng = latlngs.reduce((sum, latlng) => sum + latlng.getLng(), 0);
					const avgLat = sumLat / latlngs.length;
					const avgLng = sumLng / latlngs.length;

					let adjustedCenter = new kakao.maps.LatLng(avgLat, avgLng);

					if (name === "경기도") {
						adjustedCenter = new kakao.maps.LatLng(avgLat - 0.3, avgLng + 0.1);
					} else if (name === "경상남도") {
						adjustedCenter = new kakao.maps.LatLng(avgLat + 0.3, avgLng);
					} else if (name === "경상북도") {
						adjustedCenter = new kakao.maps.LatLng(avgLat + 0.1, avgLng - 0.2);
					} else if (name === "전라북도") {
						adjustedCenter = new kakao.maps.LatLng(avgLat, avgLng + 0.2);
					} else if (name === "충청북도") {
						adjustedCenter = new kakao.maps.LatLng(avgLat, avgLng - 0.2);
					}

					const label = new kakao.maps.CustomOverlay({
						position: adjustedCenter,
						content: `<div class="label">${name}</div>`,
						xAnchor: 0.5,
						yAnchor: 0.5
					});

					label.setMap(null); // 기본은 숨김

					// ✅ 마우스 오버
					kakao.maps.event.addListener(polygon, 'mouseover', function() {
						polygon.setOptions({
							fillColor: '#ffd166',
							fillOpacity: 0.8
						});
						label.setMap(map);
					});

					// ✅ 마우스 아웃
					kakao.maps.event.addListener(polygon, 'mouseout', function() {
						polygon.setOptions({
							fillColor: color,
							fillOpacity: 1
						});
						label.setMap(null);
					});

					// ✅ 클릭
					kakao.maps.event.addListener(polygon, 'click', function() {
						alert(`👉 ${name} 클릭됨`);
						// 필요 시 다른 동작 실행 가능
					});
				});
			})
			.catch(err => console.error("🚨 GeoJSON 로드 실패:", err));
	});
};

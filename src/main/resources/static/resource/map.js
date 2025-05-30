window.onload = function() {
	// ✅ Kakao Maps API가 제대로 로딩되었는지 확인
	if (!window.kakao || !kakao.maps || typeof kakao.maps.LatLngBounds !== 'function') {
		console.error("❌ Kakao 지도 API가 아직 로드되지 않았습니다. script 순서를 확인하세요.");
		return;
	}
	
	

	
	const mapContainer = document.getElementById('map');
	const map = new kakao.maps.Map(mapContainer, {
		center: new kakao.maps.LatLng(35.8, 127.8),
		level: 12
	});

	const colors = [
		'#f94144', '#f3722c', '#f8961e', '#f9c74f',
		'#90be6d', '#43aa8b', '#577590', '#277da1',
		'#4d908e', '#b5838d', '#6a4c93', '#f28482',
		'#84a59d', '#f6bd60', '#cdb4db', '#9a8c98', '#2a9d8f'
	];

	fetch('/sd.geojson.json')
		.then(res => res.json())
		.then(geojson => {
			geojson.features.forEach((feature, index) => {
				const name = feature.properties.name || feature.properties.SIG_KOR_NM || feature.properties.CTP_KOR_NM || `미지정${index}`;
				const color = colors[index % colors.length];

				// ✅ geometry와 coordinates 유효성 확인
				if (
					!feature.geometry ||
					!feature.geometry.coordinates ||
					!Array.isArray(feature.geometry.coordinates) ||
					feature.geometry.coordinates.length === 0
				) {
					console.warn(`❌ ${name} : geometry 또는 좌표 없음 → 건너뜀`);
					return;
				}

				const coords = feature.geometry.coordinates;
				const type = feature.geometry.type;
				const polygons = [];

				try {
					if (type === "Polygon") {
						coords.forEach(ring => {
							const path = ring.map(coord => new kakao.maps.LatLng(coord[1], coord[0]));
							polygons.push(path);
						});
					} else if (type === "MultiPolygon") {
						coords.forEach(polygon => {
							polygon.forEach(ring => {
								const path = ring.map(coord => new kakao.maps.LatLng(coord[1], coord[0]));
								polygons.push(path);
							});
						});
					} else {
						console.warn(`❌ ${name} : 알 수 없는 geometry type(${type}) → 건너뜀`);
						return;
					}
				} catch (e) {
					console.warn(`❌ ${name} : 좌표 파싱 오류 → 건너뜀`, e);
					return;
				}

				// ✅ 좌표 변환 실패 시 건너뜀
				if (polygons.length === 0) {
					console.warn(`⚠️ ${name} : 유효한 path 없음 → 건너뜀`);
					return;
				}

				// ✅ Polygon 생성
				const polygon = new kakao.maps.Polygon({
					map: map,
					path: polygons,
					strokeWeight: 2,
					strokeColor: '#333',
					strokeOpacity: 0.8,
					fillColor: color,
					fillOpacity: 0.5
				});

				// ✅ bounds 계산
				const bounds = new kakao.maps.LatLngBounds();
				let hasPoints = false;

				polygons.forEach(path => {
					if (Array.isArray(path)) {
						path.forEach(latlng => {
							if (latlng instanceof kakao.maps.LatLng) {
								hasPoints = true;
								bounds.extend(latlng);
							}
						});
					}
				});

				if (!hasPoints) {
					console.warn(`⚠️ ${name} : bounds 비어 있음 → 라벨 생략`);
					return;
				}

				// ✅ center 계산 후 라벨 표시
				const center = bounds.getCenter();
				const label = new kakao.maps.CustomOverlay({
					position: center,
					content: `<div class="label">${name}</div>`,
					yAnchor: 0.5
				});
				label.setMap(map);
			});
		})
		.catch(err => {
			console.error("🚨 JSON 로드 또는 파싱 실패:", err);
		});
};

window.onload = function() {
	// Kakao 지도 API가 완전히 로드된 후 실행
	kakao.maps.load(function() {
		console.log("✅ Kakao Maps API 로드 완료");

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
			.then(res => {
				if (!res.ok) throw new Error(`HTTP 오류: ${res.status}`);
				return res.json();
			})
			.then(geojson => {
				geojson.features.forEach((feature, index) => {
					const name = feature.properties?.name || feature.properties?.SIG_KOR_NM || feature.properties?.CTP_KOR_NM || `미지정${index}`;
					const color = colors[index % colors.length];

					if (!feature.geometry || !Array.isArray(feature.geometry.coordinates)) {
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

					if (polygons.length === 0) {
						console.warn(`⚠️ ${name} : 유효한 path 없음 → 건너뜀`);
						return;
					}

					const polygon = new kakao.maps.Polygon({
						map: map,
						path: polygons,
						strokeWeight: 2,
						strokeColor: '#333',
						strokeOpacity: 0.8,
						fillColor: color,
						fillOpacity: 0.5
					});

					const bounds = new kakao.maps.LatLngBounds();
					let hasPoints = false;

					polygons.forEach(path => {
						path.forEach(latlng => {
							if (latlng instanceof kakao.maps.LatLng) {
								bounds.extend(latlng);
								hasPoints = true;
							}
						});
					});

					if (!hasPoints || typeof bounds.getCenter !== 'function') {
						console.warn(`⚠️ ${name} : bounds 유효하지 않음 → 라벨 생략`);
						return;
					}

					const center = bounds.getCenter();
					console.log(`[DEBUG] ${name} bounds:`, bounds);
					console.log(`[DEBUG] getCenter:`, typeof bounds.getCenter, bounds.getCenter);
					const label = new kakao.maps.CustomOverlay({
						position: center,
						content: `<div class="label">${name}</div>`,
						yAnchor: 0.5
					});
					label.setMap(map);
				});
			})
			.catch(err => {
				console.error("🚨 GeoJSON 로드 실패:", err);
			});
	});
};

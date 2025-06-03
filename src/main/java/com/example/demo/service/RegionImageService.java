package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.RegionImageRepository;
import com.example.demo.vo.RegionImage;

@Service
public class RegionImageService {
	@Autowired
	private RegionImageRepository regionImageRepository;

	public RegionImageService(RegionImageRepository regionImageRepository) {
		this.regionImageRepository = regionImageRepository;
	}

	public List<RegionImage> getRegionImage() {

		return regionImageRepository.getRegionImage();
	}

}

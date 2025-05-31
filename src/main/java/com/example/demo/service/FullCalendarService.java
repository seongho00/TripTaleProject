package com.example.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ArticleRepository;
import com.example.demo.repository.FullCalendarRepository;

@Service
public class FullCalendarService {

	@Autowired
	private FullCalendarRepository fullCalendarRepository;

	public List<Map<String, Object>> getschedualeList() {
		return fullCalendarRepository.getschedualeList();

	}

}

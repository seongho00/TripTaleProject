package com.example.demo.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FullCalendarRepository {

	List<Map<String, Object>> getschedualeList();

}

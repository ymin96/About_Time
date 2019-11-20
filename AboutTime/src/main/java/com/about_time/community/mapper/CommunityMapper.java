package com.about_time.community.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.about_time.community.vo.University;

@Mapper
@Repository
public interface CommunityMapper {
	public List<University> getAllUniversity();
	public List<String> getAllLocation();
	public List<String> getTitleByLocation(String location);
}

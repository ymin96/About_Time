package com.about_time.community.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.about_time.community.vo.Board;
import com.about_time.community.vo.University;

@Mapper
@Repository
public interface CommunityMapper {
	public List<University> getAllUniversity();
	public List<String> getAllLocation();
	public List<String> getTitleByLocation(String location);
	public List<String> searchTitle(@Param("title")String title, @Param("location")String location);
	public List<Board> selectBestBoard(@Param("university")String university, @Param("category")String category);
	public List<Board> selectDailyBoards(String university);
}

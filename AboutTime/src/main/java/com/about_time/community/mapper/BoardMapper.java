package com.about_time.community.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.about_time.community.vo.Board;

@Mapper
@Repository
public interface BoardMapper {
	public void insertBoard(Board board);
	public List<Board> selectBoardList(String university);
	public List<Board> selectBoardListByCategory(@Param("university")String university, @Param("category")String category);
	public Board selectBoard(Map<String,Object> map);
	public void deleteBoard(Map<String,Object> map);
	public void updateBoard(Map<String,Object> map);
	public int getBoardCount(Map<String,Object> map);
	public void increasementBoardView(int num);
	public List<Board> searchBoard(@Param("university")String university,@Param("searchType") String searchType,@Param("searchKey") String searchKey);
}

package com.about_time.community.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.about_time.community.vo.Board;

@Mapper
@Repository
public interface BoardMapper {
	public void insertBoard(Board board);
}

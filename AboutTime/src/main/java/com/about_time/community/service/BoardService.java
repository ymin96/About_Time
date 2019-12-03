package com.about_time.community.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.community.mapper.BoardMapper;
import com.about_time.community.vo.Board;

@Service
public class BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	public void insertBoard(Board board) {
		boardMapper.insertBoard(board);
	}
}

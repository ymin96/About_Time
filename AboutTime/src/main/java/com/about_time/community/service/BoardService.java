package com.about_time.community.service;

import java.util.ArrayList;
import java.util.List;

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
	
	public ArrayList<Board> selectBoardList(String university){
		ArrayList<Board> boardList = (ArrayList<Board>) boardMapper.selectBoardList(university);
		return boardList;
	}
	
	public ArrayList<Board> selectBoardList(String university, String category){
		ArrayList<Board> boardList = (ArrayList<Board>) boardMapper.selectBoardListByCategory(university, category);
		return boardList;
	}
}

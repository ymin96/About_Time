package com.about_time.community.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.about_time.community.mapper.BoardMapper;
import com.about_time.community.util.UploadFileUtils;
import com.about_time.community.vo.Board;
import com.about_time.community.vo.UploadFile;

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
	
	public Board selectBoard(String university, int num) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("university", university);
		map.put("num", num);
		return boardMapper.selectBoard(map);
	}
	
	public void deleteBoard(String university, int num) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("university", university);
		map.put("num", num);
		boardMapper.deleteBoard(map);
	}
	
	public void updateBoard(Map<String,Object> map) {
		boardMapper.updateBoard(map);
	}
}

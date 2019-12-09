package com.about_time.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.community.mapper.CommentMapper;
import com.about_time.community.vo.Comment;

@Service
public class CommentService {
	
	@Autowired
	CommentMapper commentMapper;
	
	public void insertComment(Comment comment) {
		commentMapper.insertComment(comment);
	}
	
	public void insertRecomment(Comment comment) {
		commentMapper.insertRecomment(comment);
	}
	
	public List<Comment> selectCommentList(int board_num){
		return commentMapper.selectCommentList(board_num);
	}
}

package com.about_time.community.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.about_time.community.vo.Comment;

@Mapper
@Repository
public interface CommentMapper {
	public void insertComment(Comment comment);
	public void insertRecomment(Comment comment);
	public List<Comment> selectCommentList(int board_num);
}

package com.about_time.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.about_time.member.vo.Member;

@Mapper
@Repository
public interface MemberMapper {
	public List<Member> getAll() throws Exception;
}

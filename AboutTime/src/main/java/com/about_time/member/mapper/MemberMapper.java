package com.about_time.member.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.about_time.member.vo.Member;
import com.about_time.member.vo.MemberRole;

@Mapper
@Repository
public interface MemberMapper {
	public List<Member> getAll() throws Exception;
	public Member findMemberByUid(String uid) throws Exception;
	public List<MemberRole> findMemberRoleByUid(String uid) throws Exception;
	public void insertMember(Member member) throws Exception;
	public void insertMemberRole(MemberRole memberRole) throws Exception;
	public int existsByUid(String uid);
	public int existsByUname(String uname);
	public int isAccord(Map<String,String> map);
	public void updateMemberInfo(Map<String,String> map);
	public String getEncodeUpw(String uid);
	public void updateMemberUpw(Map<String,String> map);
	public String getUnameByUid(String uid);
}

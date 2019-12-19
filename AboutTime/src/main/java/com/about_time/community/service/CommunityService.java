package com.about_time.community.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.community.mapper.CommunityMapper;
import com.about_time.community.vo.Board;
import com.about_time.community.vo.University;

@Service
public class CommunityService {

	@Autowired
	CommunityMapper communityMapper;
	
	//모든 대학교 리스트 get
	public Map<String, List<String>> getAllUniversity() {
		List<String> locations = communityMapper.getAllLocation();
		Map<String, List<String>> universityMap = new HashMap<String, List<String>>();

		for (int i = 0; i < locations.size(); i++) {
			List<String> titles = communityMapper.getTitleByLocation(locations.get(i));
			universityMap.put(locations.get(i), titles);
		}

		return universityMap;
	}
	
	//학교 이름으로 해당 대학 정보 get
	public Map<String, List<String>> getUniversityByTitle(String title){
		List<String> locations = communityMapper.getAllLocation();
		Map<String, List<String>> universityMap = new HashMap<String, List<String>>();
		
		for(int i=0 ;i<locations.size();i++) {
			List<String> titles = communityMapper.searchTitle(title, locations.get(i));
			universityMap.put(locations.get(i), titles);
		}
		return universityMap;
	}
	
	//학교에서 각 카테고리별 조회수 best5 조회
	public Map<String, List<Board>> selectBestBoards(String university){
		Map<String,List<Board>> bestBoards = new HashMap<String, List<Board>>();
		bestBoards.put("info", communityMapper.selectBestBoard(university, "정보"));
		bestBoards.put("humor", communityMapper.selectBestBoard(university, "유머"));
		bestBoards.put("other", communityMapper.selectBestBoard(university, "잡담"));
		bestBoards.put("quest", communityMapper.selectBestBoard(university, "질문"));
		return bestBoards;
	}
}

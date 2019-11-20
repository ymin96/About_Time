package com.about_time.community.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.community.mapper.CommunityMapper;
import com.about_time.community.vo.OrganizedUniversity;
import com.about_time.community.vo.University;

@Service
public class CommunityService {

	@Autowired
	CommunityMapper communityMapper;

	public Map<String, List<String>> getAllUniversity() {
		List<String> locations = communityMapper.getAllLocation();
		Map<String, List<String>> universityMap = new HashMap<String, List<String>>();

		for (int i = 0; i < locations.size(); i++) {
			List<String> titles = communityMapper.getTitleByLocation(locations.get(i));
			universityMap.put(locations.get(i), titles);
		}

		return universityMap;
	}
}

package com.about_time.community.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class OrganizedUniversity {
	private String location;
	private List<String> title;
	
	public OrganizedUniversity() {
		this.title = new ArrayList<String>();
	}
}

package com.about_time.carte.vo;

import java.util.List;

import lombok.Data;

@Data
public class University {
	private String title;
	private List<Carte> carteList;
}

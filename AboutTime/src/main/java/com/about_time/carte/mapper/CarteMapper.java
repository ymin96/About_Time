package com.about_time.carte.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.about_time.carte.vo.Carte;

@Mapper
@Repository
public interface CarteMapper {
	public List<Carte> getCarte(String title);
}

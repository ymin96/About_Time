package com.about_time.common.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.about_time.community.vo.UploadFile;

@Mapper
public interface FileMapper {
	public void insertImage(UploadFile file);
	public UploadFile selectByName(String saveFileName);
	public UploadFile selectById(int fileId);
}

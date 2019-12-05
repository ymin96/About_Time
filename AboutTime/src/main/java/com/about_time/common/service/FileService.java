package com.about_time.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.common.mapper.FileMapper;
import com.about_time.community.vo.UploadFile;

@Service
public class FileService {

	@Autowired
	FileMapper fileMapper;
	
	public UploadFile saveImage(UploadFile file) {
		fileMapper.insertImage(file);
		return fileMapper.selectByName(file.getSaveFileName());	
	}
	
	public UploadFile loadImage(int fileId) {
		return fileMapper.selectById(fileId);
	}
}

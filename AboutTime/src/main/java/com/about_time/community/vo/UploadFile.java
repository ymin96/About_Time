package com.about_time.community.vo;

import java.util.Date;

import lombok.Data;

@Data
public class UploadFile {
	int id;
	String fileName;
	String saveFileName;
	String filePath;
	String contentType;
	long size;
	Date regDate;
}

package com.about_time;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class AboutTimeApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(AboutTimeApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(AboutTimeApplication.class);
	}

	@Bean(name = "uploadPath")
	public String uploadPath() {
	    return "C:/Users/Ymin/Pictures/AboutTime";
	}
}

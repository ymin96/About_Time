package com.about_time.community.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.about_time.community.service.BoardService;
import com.about_time.community.service.CommunityService;
import com.about_time.community.vo.Board;

@Controller
public class BoardController {
	
	@Autowired
	CommunityService communityService;
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/community/{title}/list", method = RequestMethod.GET)
	public String boardList_get(@PathVariable("title")String title, Model model) {
		model.addAttribute("title", title);
		return "boardList";
	}
	
	@RequestMapping(value = "/community/{title}/edit", method = RequestMethod.GET)
	public String boardEdit_get(@PathVariable("title")String title, Model model, HttpServletRequest request) {
		model.addAttribute("title",title);
		model.addAttribute("prev", request.getHeader("Referer"));
		return "boardEdit";
	}
	
	@RequestMapping(value = "/community/{title}/edit", method = RequestMethod.POST)
	public @ResponseBody void boardEdit_post(@RequestBody Board board, @PathVariable("title") String title, Principal principal) {
		board.setUniversity(title);
		board.setWriter(principal.getName());
		boardService.insertBoard(board);
	}
}

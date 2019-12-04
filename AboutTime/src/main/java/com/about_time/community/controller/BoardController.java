package com.about_time.community.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.about_time.common.Pagination;
import com.about_time.community.service.BoardService;
import com.about_time.community.service.CommunityService;
import com.about_time.community.vo.Board;
import com.about_time.member.service.MemberService;

@Controller
public class BoardController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	CommunityService communityService;

	@Autowired
	BoardService boardService;
	
	//게시글 리스트 페이지
	@RequestMapping(value = "/community/{university}/list", method = RequestMethod.GET)
	public String boardList_get(@PathVariable("university") String university, Model model,
			@RequestParam(required = false, defaultValue = "all", value = "cate") String category,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range) {
		model.addAttribute("university", university);
		ArrayList<Board> boardList = new ArrayList<Board>();
		//분류에 따라 다르게 select
		switch (category) {
		case "all":
			boardList = boardService.selectBoardList(university);
			break;
		case "info":
			boardList = boardService.selectBoardList(university,"정보");
			break;
		case "other":
			boardList = boardService.selectBoardList(university,"잡담");
			break;
		case "humor":
			boardList = boardService.selectBoardList(university,"유머");
			break;
		case "quest":
			boardList = boardService.selectBoardList(university,"질문");
			break;
		}
		
		//페이지 네이션
		int listCnt = boardList.size();
		Pagination pagination = new Pagination();
		pagination.setListSize(20);	//한 페이지당 보여질 리스트의 개수
		pagination.setRangeSize(5);	//한 페이지당 보여질 페이지의 개수
		pagination.pageInfo(page, range, listCnt);
		model.addAttribute("pagination", pagination);
		
		List<Board> boards = new ArrayList<Board>();
		for (int i = 0; i < pagination.getListSize(); i++) {
			if (i + pagination.getStartList() < boardList.size())
				boards.add(boardList.get(i + pagination.getStartList()));
			else
				break;
		}
		model.addAttribute("boardList", boards);
		return "boardList";
	}
	
	//게시글 입력 페이지
	@RequestMapping(value = "/community/{university}/edit", method = RequestMethod.GET)
	public String boardEdit_get(@PathVariable("university") String university, Model model, HttpServletRequest request) {
		model.addAttribute("university", university);
		model.addAttribute("prev", request.getHeader("Referer"));
		return "boardEdit";
	}

	@RequestMapping(value = "/community/{university}/edit", method = RequestMethod.POST)
	public @ResponseBody void boardEdit_post(@RequestBody Board board, @PathVariable("university") String university,
			Principal principal) {
		board.setUniversity(university);
		String uid = principal.getName();
		board.setWriter(memberService.getUnameByUid(uid));
		boardService.insertBoard(board);
	}
}

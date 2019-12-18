package com.about_time.community.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.tiles.autotag.core.runtime.annotation.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.about_time.common.Pagination;
import com.about_time.community.service.BoardService;
import com.about_time.community.service.CommentService;
import com.about_time.community.service.CommunityService;
import com.about_time.community.service.ImageService;
import com.about_time.community.util.MediaUtils;
import com.about_time.community.vo.Board;
import com.about_time.community.vo.Comment;
import com.about_time.community.vo.UploadFile;
import com.about_time.member.service.MemberService;

@Controller
public class BoardController {

	private int listSize = 20;
	private int rangeSize = 5;

	@Autowired
	MemberService memberService;

	@Autowired
	CommunityService communityService;

	@Autowired
	BoardService boardService;

	@Autowired
	ImageService imageService;

	@Autowired
	CommentService commentService;

	// 게시글 리스트 페이지
	@RequestMapping(value = "/community/{university}/list", method = RequestMethod.GET)
	public String boardList_get(@PathVariable("university") String university, Model model,
			@RequestParam(required = false, defaultValue = "all", value = "cate") String category,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false) String searchType, @RequestParam(required = false) String searchKey) {
		model.addAttribute("university", university);
		ArrayList<Board> boardList = new ArrayList<Board>();
		
		//검색으로 접근했다면 검색값을 기준으로 list get
		if (searchType != null) {
			boardList = boardService.searchBoard(university, searchType, searchKey);
		} else {
			// 분류에 따라 다르게 select
			switch (category) {
			case "all":
				boardList = boardService.selectBoardList(university);
				break;
			case "info":
				boardList = boardService.selectBoardList(university, "정보");
				break;
			case "other":
				boardList = boardService.selectBoardList(university, "잡담");
				break;
			case "humor":
				boardList = boardService.selectBoardList(university, "유머");
				break;
			case "quest":
				boardList = boardService.selectBoardList(university, "질문");
				break;
			}
		}

		// 페이지 네이션
		int listCnt = boardList.size();
		Pagination pagination = new Pagination();
		pagination.setListSize(listSize); // 한 페이지당 보여질 리스트의 개수
		pagination.setRangeSize(rangeSize); // 한 페이지당 보여질 페이지의 개수
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

	// 게시글 입력 페이지
	@RequestMapping(value = "/community/{university}/edit", method = RequestMethod.GET)
	public String boardEdit_get(@PathVariable("university") String university, Model model,
			HttpServletRequest request) {
		model.addAttribute("university", university);
		model.addAttribute("prev", request.getHeader("Referer"));
		return "boardEdit";
	}

	// 게시글 등록
	@RequestMapping(value = "/community/{university}/edit", method = RequestMethod.POST)
	public @ResponseBody void boardEdit_post(@RequestBody Board board, @PathVariable("university") String university,
			Principal principal) {
		board.setUniversity(university);
		String uid = principal.getName();
		board.setWriter(memberService.getUnameByUid(uid));
		board.setUid(uid);
		boardService.insertBoard(board);
	}

	// 이미지 등록
	@RequestMapping(value = "/image", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<?> handleFileUpload(@RequestParam("file") MultipartFile file) {
		try {
			UploadFile uploadFile = imageService.store(file);
			return ResponseEntity.ok().body("/image/" + uploadFile.getId());
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.badRequest().build();
		}
	}

	// 이미지 디스크에서 추출
	@RequestMapping(value = "/image/{fileId}", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<?> saveFile(@PathVariable("fileId") int fileId) {
		try {
			UploadFile uploadedFile = imageService.load(fileId);
			HttpHeaders headers = new HttpHeaders();

			Resource resource = imageService.loadAsResource(uploadedFile.getSaveFileName());
			String fileName = uploadedFile.getFileName();
			headers.add(HttpHeaders.CONTENT_DISPOSITION,
					"attachment;filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");

			if (MediaUtils.containsImageMediaType(uploadedFile.getContentType())) {
				headers.setContentType(MediaType.valueOf(uploadedFile.getContentType()));
			} else {
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			}

			return ResponseEntity.ok().headers(headers).body(resource);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.badRequest().build();
		}
	}

	// 게시물 확인
	@RequestMapping(value = "/community/{university}/read/{num}", method = RequestMethod.GET)
	public String getBoard(@PathVariable("num") int num, @PathVariable("university") String university, Model model,
			Principal principal, HttpServletRequest request) {
		Board board = boardService.selectBoard(university, num);
		// 조회수 증가
		boardService.increasementBoardView(num);
		model.addAttribute("board", board);
		model.addAttribute("university", university);

		// 게시글 목록 구하기
		int boardCount = boardService.getBoardCount(university, num);
		int list_size = (int) Math.ceil((double) boardCount / listSize);
		int range_size = (int) Math.ceil((double) list_size / rangeSize);
		String url = "/community/" + university + "/list?page=" + list_size + "&range=" + range_size;
		model.addAttribute("prev", url);
		// 사용자가 로그인 한 상태라면 ID를 보내줌
		if (principal != null)
			model.addAttribute("userID", principal.getName());
		return "boardView";
	}

	// 댓글 확인
	@RequestMapping(value = "/community/board/comment/{num}", method = RequestMethod.GET)
	public @ResponseBody List<Comment> getComment(@PathVariable("num") int num) {
		// 지정된 게시물의 댓글 목록 가져오기
		List<Comment> commentList = commentService.selectCommentList(num);

		return commentList;
	}

	// 댓글 등록
	@RequestMapping(value = "/community/board/comment", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> insertComment(@RequestBody Map<String, Object> param,
			Principal principal) {
		Map<String, Object> map = new HashMap<String, Object>();

		// 로그인이 안되있다면 바로 return
		if (principal == null) {
			map.put("check", "false");
			return map;
		} else
			map.put("check", "true");

		String contents = (String) param.get("contents");
		int board_num = Integer.parseInt((String) param.get("num"));
		String writer = memberService.getUnameByUid(principal.getName());
		// 댓글 객체 생성
		Comment comment = new Comment();
		comment.setBoard_num(board_num);
		comment.setContents(contents);
		comment.setWriter(writer);

		// 댓글 DB에 저장
		commentService.insertComment(comment);

		// 지정된 게시물의 댓글 목록 가져오기
		List<Comment> commentList = commentService.selectCommentList(board_num);
		map.put("commentList", commentList);
		return map;
	}

	// 대댓글 등록
	@RequestMapping(value = "/community/board/recomment", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> insertRecomment(@RequestBody Map<String, Object> param,
			Principal principal) {
		Map<String, Object> map = new HashMap<String, Object>();

		// 로그인이 안되있다면 바로 return
		if (principal == null) {
			map.put("check", "false");
			return map;
		} else
			map.put("check", "true");

		String contents = (String) param.get("contents");
		int board_num = Integer.parseInt((String) param.get("num"));
		String writer = memberService.getUnameByUid(principal.getName());
		int grp = (int) param.get("grp");
		String target = (String) param.get("target");
		// 댓글 객체 생성
		Comment comment = new Comment();
		comment.setBoard_num(board_num);
		comment.setContents(contents);
		comment.setWriter(writer);
		comment.setGrp(grp);
		comment.setTarget(target);
		// 댓글 DB에 저장
		commentService.insertRecomment(comment);

		// 지정된 게시물의 댓글 목록 가져오기
		List<Comment> commentList = commentService.selectCommentList(board_num);
		map.put("commentList", commentList);
		return map;
	}

	// 게시글 삭제
	@RequestMapping(value = "/community/{university}/delete/{num}", method = RequestMethod.GET)
	public String deleteBoard(Model model, @PathVariable("university") String university, @PathVariable("num") int num,
			Principal principal) {
		Board board = boardService.selectBoard(university, num);
		// 게시글의 작성자와 로그인 사용자가 다르거나 로그인 한 상태가 아니라면 권한 제한 페이지로 이동
		if (principal == null || !board.getUid().equals(principal.getName()))
			return "authorityError";
		// DB에서 게시글 삭제
		boardService.deleteBoard(university, num);

		try {
			university = URLEncoder.encode(university, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/community/" + university + "/list";
	}

	// 게시글 수정 페이지
	@RequestMapping(value = "/community/{university}/update/{num}", method = RequestMethod.GET)
	public String updateBoard_get(Model model, @PathVariable("university") String university,
			@PathVariable("num") int num, Principal principal, HttpServletRequest request) {
		Board board = boardService.selectBoard(university, num);
		// 게시글의 작성자와 로그인 사용자가 다르거나 로그인 한 상태가 아니라면 권한 제한 페이지로 이동
		if (principal == null || !board.getUid().equals(principal.getName()))
			return "authorityError";

		model.addAttribute("board", board);
		model.addAttribute("prev", request.getHeader("Referer"));
		return "boardUpdate";
	}

	// 게시글 수정 처리
	@RequestMapping(value = "/community/{university}/update/{num}", method = RequestMethod.POST)
	public @ResponseBody void updateBoard_post(@RequestBody Board board, @PathVariable("university") String university,
			@PathVariable("num") int num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("title", board.getTitle());
		map.put("category", board.getCategory());
		map.put("contents", board.getContents());
		map.put("num", num);
		map.put("university", university);

		boardService.updateBoard(map);
	}
}

package com.spring.prz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.comment.service.CommentService;
import com.spring.biz.comment.vo.CommentVO;

@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Autowired
	CommentService commentService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<CommentVO> getCommentList(Model model) throws Exception{
		
		/*
		 * List<CommentVO> list = commentService.commentList(vo);
		 * model.addAttribute("commentList",list);
		 */
		 // commentService.selectList(vo);
		return null;
	}
	
	@RequestMapping("/insert")
	@ResponseBody
	private int commentServiceInsert(@RequestParam int seq, @RequestParam String content) throws Exception {
		
		CommentVO vo = new CommentVO();
		vo.setSeq(seq);
		vo.setContent(content);
		vo.setMasterid("test");
		
		return 0; // commentService.insert(vo);
	}
	
	@RequestMapping("delete/{imageSeq}")
	@ResponseBody
	private int commentServiceDelete(@PathVariable int cno) throws Exception{
		
		return 0; // commentService.delete(cno);
	}
}
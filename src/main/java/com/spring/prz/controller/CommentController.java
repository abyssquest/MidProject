package com.spring.prz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.comment.service.CommentService;
import com.spring.biz.comment.vo.CommentVO;

@Controller
public class CommentController {
	@Autowired
	CommentService service;
	
	@RequestMapping("insertComment.do")
	public String insertComment(Model model, CommentVO vo) {
		service.insert(vo);
		List<CommentVO> list = service.selectList(vo);
		model.addAttribute("commentList",list);
		return "comment/getCommentList";
	}
	
	@RequestMapping("getCommentList.do")
	public String selectCommentList(Model model, CommentVO vo) {
		List<CommentVO> list = service.selectList(vo);
		model.addAttribute("commentList",list);
		return "comment/getCommentList";
	}
	
	@RequestMapping("updateComment.do")
	public String updateComment(Model model, CommentVO vo) {
		service.update(vo);
		CommentVO dbVO = service.selectOne(vo);
		model.addAttribute("comment", dbVO);
		return "comment/getComment";
	}
	
	@RequestMapping("deleteComment.do")
	public void deleteComment(CommentVO vo) {
		service.delete(vo);
	}
}
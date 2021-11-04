package com.spring.biz.comment.service;

import java.util.List;

import com.spring.biz.comment.vo.CommentVO;

public interface CommentService {
	public void insert(CommentVO vo);
	public List<CommentVO> selectList(CommentVO vo);
	public CommentVO selectOne(CommentVO vo);
	public void update(CommentVO vo);
	public void delete(CommentVO vo);
}
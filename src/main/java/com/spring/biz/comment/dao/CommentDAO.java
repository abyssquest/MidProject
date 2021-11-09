package com.spring.biz.comment.dao;

import java.util.List;

import com.spring.biz.comment.vo.CommentVO;

public interface CommentDAO {
	public void insert(CommentVO vo);
	public List<CommentVO> selectList(CommentVO vo);
	public CommentVO selectOne(CommentVO vo);
	public void update(CommentVO vo);
	public void updatePw(CommentVO vo);
	public void delete(CommentVO vo);
}
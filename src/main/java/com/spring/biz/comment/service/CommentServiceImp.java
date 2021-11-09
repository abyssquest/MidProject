package com.spring.biz.comment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.comment.dao.CommentDAO;
import com.spring.biz.comment.vo.CommentVO;

@Service
public class CommentServiceImp implements CommentService{
	@Autowired
	CommentDAO dao;

	@Override
	public void insert(CommentVO vo) {
		dao.insert(vo);
	}

	@Override
	public List<CommentVO> selectList(CommentVO vo) {
		return dao.selectList(vo);
	}

	@Override
	public CommentVO selectOne(CommentVO vo) {
		return dao.selectOne(vo);
	}

	@Override
	public void update(CommentVO vo) {
		dao.update(vo);
	}
	
	@Override
	public void updatePw(CommentVO vo) {
		dao.updatePw(vo);
	}

	@Override
	public void delete(CommentVO vo) {
		dao.delete(vo);
	}
}
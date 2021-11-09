package com.spring.biz.comment.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.comment.vo.CommentVO;

@Service
public class CommentDAOImp implements CommentDAO{
	@Autowired
	private SqlSessionTemplate sql;

	@Override
	public void insert(CommentVO vo) {
		sql.insert("CommentDAO.insert",vo);
	}

	@Override
	public List<CommentVO> selectList(CommentVO vo) {
		return sql.selectList("CommentDAO.selectList",vo);
	}

	@Override
	public CommentVO selectOne(CommentVO vo) {
		return sql.selectOne("CommentDAO.selectOne",vo);
	}
	
	@Override
	public void update(CommentVO vo) {
		sql.update("CommentDAO.update",vo);
	}
	
	@Override
	public void updatePw(CommentVO vo) {
		sql.update("CommentDAO.updatePw",vo);
	}

	@Override
	public void delete(CommentVO vo) {
		sql.delete("CommentDAO.delete",vo);
	}
}
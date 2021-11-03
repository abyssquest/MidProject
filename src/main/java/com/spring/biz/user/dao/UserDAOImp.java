package com.spring.biz.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.user.vo.UserVO;

@Service
public class UserDAOImp implements UserDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public void insert(UserVO vo) {
		//System.out.println("확인 - dao.insert");
		sql.insert("UserDAO.insert", vo);
	}
	
	@Override
	public List<UserVO> selectList(UserVO vo) {
		//System.out.println("확인 - dao.selectList");
		return sql.selectList("UserDAO.selectList", vo);
	}

	@Override
	public UserVO selectOne(UserVO vo) {
		//System.out.println("확인 - dao.selectOne");
		return sql.selectOne("UserDAO.selectOne", vo);
	}

	@Override
	public void update(UserVO vo) {
		System.out.println("확인 - dao.update");
		sql.update("UserDAO.update", vo);
	}

	@Override
	public void delete(UserVO vo) {
		System.out.println("확인 - dao.delete");
		sql.delete("UserDAO.delete", vo);
	}
}
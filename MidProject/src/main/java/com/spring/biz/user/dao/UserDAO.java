package com.spring.biz.user.dao;

import java.util.List;

import com.spring.biz.user.vo.UserVO;

public interface UserDAO {
	public void insert(UserVO vo);
	public List<UserVO> selectList(UserVO vo);
	public UserVO selectOne(UserVO vo);
	public void update(UserVO vo);
	public void updatePw(UserVO vo);
	public void delete(UserVO vo);
}
package com.spring.biz.user.service;

import java.util.List;

import com.spring.biz.user.vo.UserVO;

public interface UserService {
	public void insert(UserVO vo);
	public List<UserVO> selectList(UserVO vo);
	public UserVO selectOne(UserVO vo);
	public void update(UserVO vo);
	public void delete(UserVO vo);
}
package com.spring.biz.user.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.biz.user.vo.UserVO;

@Service
public class UserDAOImp implements UserDAO {
	//@Autowired
	//private SqlSessionTemplate sql;
	
	@Override
	public void insert(UserVO vo) /* throws Exception */ {
		System.out.println("확인 - dao.insert");
		//sql.insert("ImageDAO.insert", vo);
	}
	
	@Override
	public List<UserVO> selectList(UserVO vo) /* throws Exception */ {
		System.out.println("확인 - dao.selectList");
		return null; // sql.selectList("ImageDAO.selectList", vo);
	}

	@Override
	public UserVO selectOne(UserVO vo) {
		System.out.println("확인 - dao.selectOne");
		return null; // sql.selectOne("ImageDAO.selectOne", vo);
	}

	@Override
	public void update(UserVO vo) {
		System.out.println("확인 - dao.update");
		// sql.update("ImageDAO.update", vo);
	}

	@Override
	public void delete(UserVO vo) {
		System.out.println("확인 - dao.delete");
		// sql.delete("ImageDAO.delete", vo);
	}
}
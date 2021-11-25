package com.spring.biz.pet.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.pet.vo.PetVO;

@Service
public class PetDAOImp implements PetDAO {
	@Autowired
	private SqlSessionTemplate sql;

	@Override
	public void insert(PetVO vo) {
		sql.insert("PetDAO.insert", vo);
	}

	@Override
	public List<PetVO> selectList(PetVO vo) {
		return sql.selectList("PetDAO.selectList", vo);
	}

	@Override
	public PetVO selectOne(PetVO vo) {
		return sql.selectOne("PetDAO.selectOne", vo);
	}

	@Override
	public void update(PetVO vo) {
		sql.update("PetDAO.update", vo);
	}

	@Override
	public void delete(PetVO vo) {
		sql.delete("PetDAO.delete", vo);
	}
}
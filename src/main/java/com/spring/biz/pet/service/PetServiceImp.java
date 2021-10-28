package com.spring.biz.pet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.pet.dao.PetDAO;
import com.spring.biz.pet.vo.PetVO;

@Service
public class PetServiceImp implements PetService {
	@Autowired
	PetDAO dao;
	
	@Override
	public void insert(PetVO vo) {
		System.out.println("확인 - service.insert");
		dao.insert(vo);
	}

	@Override
	public List<PetVO> selectList(PetVO vo) {
		System.out.println("확인 - service.selectList");
		return dao.selectList(vo);
	}

	@Override
	public PetVO selectOne(PetVO vo) {
		System.out.println("확인 - service.selectOne");
		return dao.selectOne(vo);
	}

	@Override
	public void update(PetVO vo) {
		System.out.println("확인 - service.update");
		dao.update(vo);
	}

	@Override
	public void delete(PetVO vo) {
		System.out.println("확인 - service.delete");
		dao.delete(vo);
	}
}
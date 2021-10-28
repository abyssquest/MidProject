package com.spring.biz.pet.service;

import java.util.List;

import com.spring.biz.pet.vo.PetVO;

public interface PetService {
	public void insert(PetVO vo);
	public List<PetVO> selectList(PetVO vo);
	public PetVO selectOne(PetVO vo);
	public void update(PetVO vo);
	public void delete(PetVO vo);
}
package com.spring.biz.pet.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.biz.pet.vo.PetVO;

@Service
public class PetDAOImp implements PetDAO {
	//@Autowired
	//private SqlSessionTemplate sql;
	
	@Override
	public void insert(PetVO vo) /* throws Exception */ {
		System.out.println("확인 - dao.insert");
		//sql.insert("ImageDAO.insert", vo);
	}
	
	@Override
	public List<PetVO> selectList(PetVO vo) /* throws Exception */ {
		System.out.println("확인 - dao.selectList");
		return null; // sql.selectList("ImageDAO.selectList", vo);
	}

	@Override
	public PetVO selectOne(PetVO vo) {
		System.out.println("확인 - dao.selectOne");
		return null; // sql.selectOne("ImageDAO.selectOne", vo);
	}

	@Override
	public void update(PetVO vo) {
		System.out.println("확인 - dao.update");
		// sql.update("ImageDAO.update", vo);
	}

	@Override
	public void delete(PetVO vo) {
		System.out.println("확인 - dao.delete");
		// sql.delete("ImageDAO.delete", vo);
	}
}
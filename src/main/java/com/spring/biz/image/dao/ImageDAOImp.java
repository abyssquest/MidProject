package com.spring.biz.image.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.biz.image.vo.ImageVO;

@Service
public class ImageDAOImp implements ImageDAO {
	//@Autowired
	//private SqlSessionTemplate sql;
	
	@Override
	public void insert(ImageVO vo) /* throws Exception */ {
		System.out.println("확인 - dao.insert");
		//sql.insert("ImageDAO.insert", vo);
	}
	
	@Override
	public List<ImageVO> selectList(ImageVO vo) /* throws Exception */ {
		System.out.println("확인 - dao.selectList");
		return null; // sql.selectList("ImageDAO.selectList", vo);
	}

	@Override
	public ImageVO selectOne(ImageVO vo) {
		System.out.println("확인 - dao.selectOne");
		return null; // sql.selectOne("ImageDAO.selectOne", vo);
	}

	@Override
	public void update(ImageVO vo) {
		System.out.println("확인 - dao.update");
		// sql.update("ImageDAO.update", vo);
	}

	@Override
	public void delete(ImageVO vo) {
		System.out.println("확인 - dao.delete");
		// sql.delete("ImageDAO.delete", vo);
	}
}
package com.spring.biz.image.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.image.vo.ImageVO;

@Service
public class ImageDAOImp implements ImageDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public void insert(ImageVO vo) {
		System.out.println("확인 - dao.insert");
		sql.insert("ImageDAO.insert", vo);
	}
	
	@Override
	public List<ImageVO> selectList(ImageVO vo) {
		System.out.println("확인 - dao.selectList");
		return sql.selectList("ImageDAO.selectList", vo);
	}

	@Override
	public ImageVO selectOne(ImageVO vo) {
		System.out.println("확인 - dao.selectOne");
		return sql.selectOne("ImageDAO.selectOne", vo);
	}

	@Override
	public void delete(ImageVO vo) {
		System.out.println("확인 - dao.delete");
		sql.delete("ImageDAO.delete", vo);
	}
}
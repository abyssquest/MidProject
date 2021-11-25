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
		sql.insert("ImageDAO.insert", vo);
	}

	@Override
	public List<ImageVO> selectList(ImageVO vo) {
		return sql.selectList("ImageDAO.selectList", vo);
	}

	@Override
	public ImageVO selectOne(ImageVO vo) {
		return sql.selectOne("ImageDAO.selectOne", vo);
	}

	@Override
	public void delete(ImageVO vo) {
		sql.delete("ImageDAO.delete", vo);
	}
}
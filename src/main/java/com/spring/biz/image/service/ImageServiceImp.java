package com.spring.biz.image.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.image.dao.ImageDAO;
import com.spring.biz.image.vo.ImageVO;

@Service
public class ImageServiceImp implements ImageService {
	@Autowired
	ImageDAO dao;

	@Override
	public void insert(ImageVO vo) {
		dao.insert(vo);
	}

	@Override
	public List<ImageVO> selectList(ImageVO vo) {
		return dao.selectList(vo);
	}

	@Override
	public ImageVO selectOne(ImageVO vo) {
		return dao.selectOne(vo);
	}

	@Override
	public void delete(ImageVO vo) {
		dao.delete(vo);
	}
}
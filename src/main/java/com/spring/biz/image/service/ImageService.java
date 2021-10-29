package com.spring.biz.image.service;

import java.util.List;

import com.spring.biz.image.vo.ImageVO;

public interface ImageService {
	public void insert(ImageVO vo);
	public List<ImageVO> selectList(ImageVO vo);
	public ImageVO selectOne(ImageVO vo);
	public void delete(ImageVO vo);
}
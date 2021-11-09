package com.spring.biz.image.dao;

import java.util.List;

import com.spring.biz.image.vo.ImageVO;

public interface ImageDAO {
	public void insert(ImageVO vo);
	public List<ImageVO> selectList(ImageVO vo);
	public ImageVO selectOne(ImageVO vo);
	public void delete(ImageVO vo);
}
public List<ImageVO> getBoardList(int page, int limit){
	
	String sql =
			"select * from "+
			"(select rownum rnum,boardNum,boardName,boardSubject,"+
			"boardContent,boardFile,boardReplyRef,boardReplyLev,"+
			"boardReplySeq,boardReadcount,boardDate from "+
			"(select * from mvcboard order by boardReplyRef desc,boardReplySeq asc))"+
			"where rnum>=? and rnum<=?";
	
	List<ImageVO> list = new ArrayList<ImageVO>();
	
	int startrow = (page-1)*10+1; //읽기 시작할 row 번호.
	int endrow = startrow+limit-1; //읽을 마지막 row 번호.
}
package com.spring.biz.pet.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetDAO {
	@Autowired private SqlSessionTemplate sql;
}
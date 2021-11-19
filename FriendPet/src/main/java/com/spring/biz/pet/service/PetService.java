package com.spring.biz.pet.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.biz.pet.dao.PetDAO;

public class PetService {
	@Autowired PetDAO dao;
	
}

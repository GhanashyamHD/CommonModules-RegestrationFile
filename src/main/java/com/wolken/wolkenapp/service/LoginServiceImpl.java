package com.wolken.wolkenapp.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.wolken.wolkenapp.dao.LoginDAO;
import com.wolken.wolkenapp.dto.LoginDTO;
import com.wolken.wolkenapp.entity.LoginEntity;

@Component
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginDTO dto;
	@Autowired
	LoginDAO dao;
	@Autowired
	LoginEntity entity = new LoginEntity();
	Logger logger = Logger.getLogger(LoginServiceImpl.class);

	@Override
	public String validateandLogin(LoginDTO dto) {
		// TODO Auto-generated method stub
		LoginEntity entity1 = new LoginEntity();
		entity1 = dao.getByUserName(dto.getUserName());
		if (entity1 != null) {
			logger.info(dto.getUserName());
			if (dto.getUserName().equals(entity1.getUserName())) {
				logger.info(entity1.getUserName());
				if (dto.getPassword().equals(entity1.getPassword())) {
					 logger.info(entity1.getPassword());
					return dto.getUserName();
				} else {
					return "Password is wrong";
				}

			} else {
				return "User name not found";
			}

		}
		return "User Name does not exits";

	}

}

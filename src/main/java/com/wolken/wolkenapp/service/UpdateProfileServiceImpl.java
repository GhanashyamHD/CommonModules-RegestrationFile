package com.wolken.wolkenapp.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.wolken.wolkenapp.dao.LoginDAO;
import com.wolken.wolkenapp.dto.LoginDTO;
import com.wolken.wolkenapp.dto.UpdateDTO;
import com.wolken.wolkenapp.entity.CreateAccountEntity;

@Component
public class UpdateProfileServiceImpl implements UpdateProfileService {
   @Autowired
   LoginDAO dao ;
   Logger logger = Logger.getLogger(UpdateProfileServiceImpl.class);

	
	@Override
	public CreateAccountEntity validateAndGetByEmail(String emailId) {
		// TODO Auto-generated method stub
		CreateAccountEntity  entity = new CreateAccountEntity();
		logger.info("inside update service");
		if(emailId != null) {
			logger.info("inside if of update servie");
		return	dao.getByEmail(emailId);
		}
		
		else {
			logger.info("Enter email id");
		}
		return null;
	}


	@Override
	public String validateandUpdate(UpdateDTO dto) {
		// TODO Auto-generated method stub
		int res = (int) dao.updateByEmail(dto);
		if(res >= 1) {
			return "updated details";
		}
		else {
			return "Update failed";
		}
		
	}

}

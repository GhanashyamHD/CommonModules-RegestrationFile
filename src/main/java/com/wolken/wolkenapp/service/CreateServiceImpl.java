package com.wolken.wolkenapp.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.wolken.wolkenapp.custom.ContactNoException;
import com.wolken.wolkenapp.custom.DOBException;
import com.wolken.wolkenapp.custom.EmailException;
import com.wolken.wolkenapp.custom.GenderException;
import com.wolken.wolkenapp.custom.PasswordException;
import com.wolken.wolkenapp.custom.UserNameException;
import com.wolken.wolkenapp.dao.CreateAccountDAO;
import com.wolken.wolkenapp.dto.CreateAccountDTO;
import com.wolken.wolkenapp.entity.CreateAccountEntity;

@Service
public class CreateServiceImpl implements CreateAccountService{
	@Autowired
	CreateAccountDAO dao;
	CreateAccountDTO dto;
   CreateAccountEntity entity = new CreateAccountEntity();
   Logger logger = Logger.getLogger(CreateServiceImpl.class);
   
	@Override
	public String validateandRegister(CreateAccountDTO dto) throws ContactNoException , UserNameException,EmailException,DOBException,GenderException,PasswordException   {
	//	 TODO Auto-generated method stub
			
        String notice = null;
        try {
        	if(dto != null) {
        		if(dto.getUserName().length() < 3 && dto.getUserName().length() > 18) {
        			throw new UserNameException();
        		}
        		if(dto.getEmailId().length() < 5 && dto.getEmailId().length() > 56) {
        			throw new EmailException();
        		}
        		if(dto.getContactNo().length() <11 ) {
        			throw new ContactNoException();
        		}
        		if(dto.getDob() == null) {
        			throw new DOBException();
        		}
        		if(dto.getGender() == null) {
        			throw new GenderException();
        		}
        		if(dto.getPassword().length() <6 && dto.getPassword().length() > 20) {
        			throw new PasswordException();
        		}
        		else {
        			CreateAccountEntity entity1= new CreateAccountEntity();
        	        entity1 =  dao.getbyUserName(dto.getUserName());
        	        if(entity1 != null) {
        	        	logger.warn("UserName already Exists");
        	        	notice = "UserName already exists";
        	        }
        	        else {
        	        	entity.setUserName(dto.getUserName());
						logger.info("setting email");
						entity.setEmailId(dto.getEmailId());
						logger.info("setting contact");
						entity.setContactNo(dto.getContactNo());
						logger.info("setting dob");
						entity.setDob(dto.getDob());
						logger.info("setting gender");
						entity.setGender(dto.getGender());
						logger.info("setting pass");
						entity.setPassword(dto.getPassword());
						logger.info("confirm pass");
						entity.setConfirmPassword(dto.getConfirmPassword());
						return dao.registerAccount(entity);
        	        }
        			
        		}
        	}
        	else {
        		logger.warn("object passed is null");
        		notice = "Failed";
        		
        	}
        }
        catch (UserNameException | EmailException | ContactNoException | DOBException | GenderException | PasswordException  e) {
			// TODO: handle exception
        	logger.error("Error message");
        	logger.info(e.toString());
		} 
		
        return notice;
        
	}
}	


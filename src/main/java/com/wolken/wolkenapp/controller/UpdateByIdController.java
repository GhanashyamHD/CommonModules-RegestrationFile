package com.wolken.wolkenapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wolken.wolkenapp.dto.UpdateDTO;
import com.wolken.wolkenapp.entity.CreateAccountEntity;
import com.wolken.wolkenapp.service.UpdateProfileService;

@Component
@RequestMapping("/")
public class UpdateByIdController {
	Logger logger = Logger.getLogger(UpdateByIdController.class);
	@Autowired
	UpdateProfileService service;
	
	
	
	@RequestMapping("/email.ghd")
	public String getController(HttpServletRequest request) {
		logger.info("inside email controller");
		String emailId = (String) request.getParameter("emailId");
		logger.info("getting emailid");
	   CreateAccountEntity entity= service.validateAndGetByEmail(emailId);
	   logger.info("getting entity");
	   request.setAttribute("entity", entity);
	   logger.info(entity);
	  
	logger.info(entity.getContactNo());   
	logger.info( entity.getGender());  
	 logger.info(entity.getDob());  
	 		return "update.jsp";
	 	
		 
	 }
	@RequestMapping("/update.ghd")
	public String updateController(UpdateDTO dto, HttpServletRequest request) {
		logger.info("inside update controller");
		String msg = service.validateandUpdate(dto);
		logger.info(msg);

		request.setAttribute("msg", msg);
		logger.info("inside update controller setattribute");
		

		return "home.jsp";
		
		
	}
		
		
	}
	
	



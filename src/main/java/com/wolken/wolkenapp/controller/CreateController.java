package com.wolken.wolkenapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wolken.wolkenapp.dao.CreateAccountDAO;
import com.wolken.wolkenapp.dto.CreateAccountDTO;
import com.wolken.wolkenapp.service.CreateAccountService;



@Controller
@RequestMapping("/")
public class CreateController {
	Logger logger = Logger.getLogger(CreateController.class);
	
	@Autowired
     CreateAccountDAO dao;
	@Autowired
	CreateAccountService service;
	
	@RequestMapping("/account.ghd")
	public String accountController(@ModelAttribute CreateAccountDTO dto ,HttpServletRequest request) throws Exception {
		logger.info("inside controller");
		String msg = service.validateandRegister(dto);
			request.setAttribute("msg", msg);
			logger.info(msg);
		//	System.out.println(msg);
//	 catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			logger.error("exception in controller");
//		}
//		
	
	   return "login.jsp";
	}

}

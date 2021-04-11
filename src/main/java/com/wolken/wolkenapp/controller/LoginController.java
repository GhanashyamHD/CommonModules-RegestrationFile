package com.wolken.wolkenapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wolken.wolkenapp.dto.LoginDTO;
import com.wolken.wolkenapp.service.LoginService;

@Controller
@RequestMapping("/")
public class LoginController {
	Logger logger = Logger.getLogger(LoginController.class);
	@Autowired
	LoginService service;
	@Autowired
	LoginDTO dto;
	
	@RequestMapping("/login.ghd")
	public String loginController(LoginDTO dto , HttpServletRequest req ) {
		logger.info("inside controller");
		String msg = service.validateandLogin(dto);
			req.setAttribute("msg", msg);
			logger.info(msg);
	
		
		return "home.jsp";
		
	}
	

}

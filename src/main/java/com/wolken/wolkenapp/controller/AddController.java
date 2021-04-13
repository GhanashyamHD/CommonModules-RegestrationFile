package com.wolken.wolkenapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wolken.wolkenapp.dto.AddDTO;
import com.wolken.wolkenapp.entity.AddEntity;
import com.wolken.wolkenapp.service.AddService;

@Component
@RequestMapping("/")
public class AddController {
	Logger logger = Logger.getLogger(AddController.class);
	@Autowired
	AddService service;  
	@RequestMapping("/addprod.ghd")
	
	public String addContoller(@ModelAttribute AddDTO addDTO , HttpServletRequest request) {
		logger.info("inside addController");
		String msg = service.validateAndAddProd(addDTO);
		logger.info(msg);
		request.setAttribute("msg", msg);
		logger.info("inside addController setattribute"); 
		if(msg.equals("Invalid Item Name") || msg.equals("Invalid sportType") || msg.equals("price not entered") || msg.equals("Enter quantity ") || msg.equals("Invalid Ratings")) {
		return "addprod.jsp";	
		}
		else {
			return "home.jsp";
		}
		
	
		
	}
	@RequestMapping("/search.ghd")
	public String searchController(HttpServletRequest request) {
		logger.info("inside searchController");
		String sportType = request.getParameter("sportType");
		logger.info(sportType);
		List<AddEntity> addEntities =    service.validateAndSearch(sportType);
		logger.info("inside searchController setattribute");
		request.setAttribute("addEntities", addEntities);
		
		return "main.jsp";
		}

}

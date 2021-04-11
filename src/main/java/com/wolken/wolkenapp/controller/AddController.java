package com.wolken.wolkenapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	@Autowired
	AddService service;  
	@RequestMapping("/addprod.ghd")
	public String addContoller(@ModelAttribute AddDTO addDTO , HttpServletRequest request) {
		String msg = service.validateAndAddProd(addDTO);
		request.setAttribute("msg", msg);
		return "home.jsp";
	
		
	}
	@RequestMapping("/search.ghd")
	public String searchController(HttpServletRequest request) {
		String sportType = request.getParameter("sportType");
		List<AddEntity> addEntities =    service.validateAndSearch(sportType);
		request.setAttribute("addEntities", addEntities);
		
		return "main.jsp";
		}

}

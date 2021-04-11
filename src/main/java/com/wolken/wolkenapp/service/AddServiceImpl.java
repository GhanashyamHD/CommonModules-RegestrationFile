package com.wolken.wolkenapp.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.wolken.wolkenapp.dao.AddDAO;
import com.wolken.wolkenapp.dto.AddDTO;
import com.wolken.wolkenapp.entity.AddEntity;

@Component
public class AddServiceImpl implements AddService {
Logger logger = Logger.getLogger(AddServiceImpl.class);
@Autowired
AddDAO dao;
	@Override
	public String validateAndAddProd(AddDTO dto) {
		// TODO Auto-generated method stub
		String message = null;
		if(dto != null) {
			if(dto.getItem() == null && dto.getItem().length() < 1) {
				message = "Invalid Item Name";
			}
			 if(dto.getSportType() == null && dto.getSportType().length() < 1) {
				message = "Invalid sportType";
			}
			if(dto.getPrice() == null) {
				message = "price not entered";
			}
			if(dto.getQuantity() == null) {
				message =  "Enter quantity ";
			}
		    if(dto.getRating() < 0 ) {
				message = "Invalid Ratings";
				
			}
		    else {
			
			logger.info("creating entity object");
			AddEntity entity = new AddEntity();
			logger.info("setting item");
			entity.setItem(dto.getItem());
			logger.info("setting sportType");
			entity.setSportType(dto.getSportType());
			logger.info("setting quantity");
			entity.setQuantity(dto.getQuantity());
			logger.info("setting price");
			entity.setPrice(dto.getPrice());
			logger.info("setting rating");
			entity.setRating(dto.getRating());
			return dao.addProducts(entity);
		    }
			
		}
		else {
			logger.error("dto is null");
			message = "error in service";
				
			}
	
			
			
		
		
		return message;
	}
	@Override
	public List<AddEntity> validateAndSearch(String sportType) {
		// TODO Auto-generated method stub
		logger.info("inside validateandSearch");
		if(sportType != null) {
			logger.info("inside if service");
			return dao.searchProductByType(sportType);
			
		}
		return null;
	}

}

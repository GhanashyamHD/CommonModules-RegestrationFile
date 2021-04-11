package com.wolken.wolkenapp.service;

import java.util.List;

import com.wolken.wolkenapp.dto.AddDTO;
import com.wolken.wolkenapp.entity.AddEntity;

public interface AddService {
	public String validateAndAddProd(AddDTO dto );
	public List<AddEntity> validateAndSearch(String sportType);
	

}

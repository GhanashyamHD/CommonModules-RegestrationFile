package com.wolken.wolkenapp.service;

import com.wolken.wolkenapp.dto.UpdateDTO;
import com.wolken.wolkenapp.entity.CreateAccountEntity;

public interface UpdateProfileService {
	public CreateAccountEntity validateAndGetByEmail(String emailId);
	public String validateandUpdate(UpdateDTO dto);
	

}

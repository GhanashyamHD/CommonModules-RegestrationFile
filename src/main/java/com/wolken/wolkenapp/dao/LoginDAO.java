package com.wolken.wolkenapp.dao;

import com.wolken.wolkenapp.dto.UpdateDTO;
import com.wolken.wolkenapp.entity.CreateAccountEntity;
import com.wolken.wolkenapp.entity.LoginEntity;

public interface LoginDAO {
	public LoginEntity getByUserName(String userName);
    public CreateAccountEntity getByEmail(String email);
    public int updateByEmail(UpdateDTO dto);
}

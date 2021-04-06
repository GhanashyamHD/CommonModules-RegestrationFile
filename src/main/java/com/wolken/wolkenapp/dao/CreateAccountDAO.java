package com.wolken.wolkenapp.dao;


import com.wolken.wolkenapp.dto.CreateAccountDTO;
import com.wolken.wolkenapp.entity.CreateAccountEntity;

public interface CreateAccountDAO {
	public String registerAccount(CreateAccountEntity entity);
	public CreateAccountEntity getbyUserName(String userName) ;

}

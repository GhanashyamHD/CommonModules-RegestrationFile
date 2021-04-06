package com.wolken.wolkenapp.service;

import com.wolken.wolkenapp.custom.ContactNoException;
import com.wolken.wolkenapp.dto.CreateAccountDTO;

public interface CreateAccountService {
	public String validateandRegister(CreateAccountDTO dto) throws  Exception;
}

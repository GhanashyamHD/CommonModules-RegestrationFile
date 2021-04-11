package com.wolken.wolkenapp.dto;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Component
@ToString
@NoArgsConstructor
public class LoginDTO {
	private String userName;
	private String password;
	

}

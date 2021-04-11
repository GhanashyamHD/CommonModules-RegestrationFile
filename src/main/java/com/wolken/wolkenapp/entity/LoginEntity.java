package com.wolken.wolkenapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
@Entity
@Table(name ="accountcreation")
public class LoginEntity {
	@Id
	@Column(name = "id")
	private long id;
	@Column(name = "userName")
	private String userName;
	@Column(name ="password")
	private String password;
	

}

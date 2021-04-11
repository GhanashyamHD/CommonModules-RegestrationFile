package com.wolken.wolkenapp.dto;

import javax.persistence.metamodel.StaticMetamodel;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
@Component
public class AddDTO {

	
	private String item;
	private String sportType;
	private String quantity;
	private String price;
	private int rating;


}

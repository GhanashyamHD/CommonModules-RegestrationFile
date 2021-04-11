package com.wolken.wolkenapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Component
@Entity
@Table(name = "proddetails")
public class AddEntity {
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO,generator="native")
	@GenericGenerator(name = "native",strategy = "native")
	@Column(name = "id")
	private int id;
	@Column(name ="item")
	private String item;
	@Column(name = "sportType")
	private String sportType;
	@Column(name ="quantity")
	private String quantity;
	@Column(name ="price")
	private String price;
	@Column(name ="rating")
	private int rating;

}

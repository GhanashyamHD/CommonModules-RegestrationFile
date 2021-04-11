package com.wolken.wolkenapp.dao;

import java.util.List;

import com.wolken.wolkenapp.entity.AddEntity;

public interface AddDAO {
	public String addProducts(AddEntity entity);
	public List<AddEntity> searchProductByType(String sportType);


}

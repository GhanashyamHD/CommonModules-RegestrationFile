package com.wolken.wolkenapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;

import com.wolken.wolkenapp.dto.AddDTO;
import com.wolken.wolkenapp.entity.AddEntity;

@Component
public class AddDAOImpl implements AddDAO {

	@Autowired
	LocalSessionFactoryBean bean;
	Logger logger = Logger.getLogger(AddDAOImpl.class);
	@Override
	public String addProducts(AddEntity entity) {
		// TODO Auto-generated method stub
		logger.info("inside dao addprod");
	  SessionFactory factory = bean.getObject();
	  logger.info("factory object created");
	  Session session = factory.openSession();
	  logger.info("session object created");
	  Transaction transaction = session.beginTransaction();
	  logger.info("transaction object created");
	  session.save(entity);
	  logger.info("session save");
	  transaction.commit();
	  logger.info("transaction  commit");
	  session.close();
		
		
		
		
		return "Data Added";
	}
	@Override
	public List<AddEntity> searchProductByType(String sportType) {
		// TODO Auto-generated method stub
		logger.info("inside dao");
		SessionFactory factory = bean.getObject();
		logger.info("factory object created");
		Session session = factory.openSession();
		logger.info("session object created");
		Transaction transaction = session.beginTransaction();
		logger.info("transaction object created");
	Query query=session.createQuery("select ae from AddEntity ae where ae.sportType = :sportType");
	query.setParameter("sportType", sportType);
	List<AddEntity> dto = query.list();
	
	return dto;
	}
	

}

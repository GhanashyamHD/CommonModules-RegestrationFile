package com.wolken.wolkenapp.dao;


import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;


import com.wolken.wolkenapp.entity.CreateAccountEntity;

@Component
public class CreateAccountDTOImpl implements CreateAccountDAO{
	@Autowired
	LocalSessionFactoryBean bean;
	Logger logger = Logger.getLogger(CreateAccountDTOImpl.class);

	@Override
	public String registerAccount(CreateAccountEntity entity) {
		// TODO Auto-generated method stub
		try {
			logger.info("inside daoImpl");
			SessionFactory factory = bean.getObject();
			logger.info("created factory");
			Session session = factory.openSession();
			logger.info("session object created");
			Transaction transaction = session.beginTransaction();
			logger.info("transaction object created");
			
			session.save(entity);
			logger.info("data saved");
			transaction.commit();
			logger.info("commited");
			session.close();
		} catch (Exception e) {
			// TODO: handle exception
			logger.error("Caught exception while saving");
			logger.error(e.getMessage());
			
		}
		return "Data Added";
	
	}

	@Override
	public CreateAccountEntity getbyUserName(String userName) {
		// TODO Auto-generated method stub
      	logger.info("Inside dao getall");
		SessionFactory factory = bean.getObject();
		logger.info("created factory");
		Session session = factory.openSession();
		logger.info("session object created");
		Transaction transaction = session.beginTransaction();
		logger.info("transaction object created");
	    Query query=session.createQuery("from CreateAccountEntity cae where cae.userName = :userName").setParameter("userName", userName);
		logger.info("created query");
	    CreateAccountEntity entity =(CreateAccountEntity) query.uniqueResult(); //setMaxResults(1).
		logger.info("adding to entity");
		session.close();
		return entity;
		
	  
	 
	
	}
	

}

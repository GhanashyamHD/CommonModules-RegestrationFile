package com.wolken.wolkenapp.dao;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;

import com.wolken.wolkenapp.dto.UpdateDTO;
import com.wolken.wolkenapp.entity.CreateAccountEntity;
import com.wolken.wolkenapp.entity.LoginEntity;

@Component
public class LoginDAOImpl implements LoginDAO {
 @Autowired
 LocalSessionFactoryBean bean;
 Logger logger = Logger.getLogger(LoginDAOImpl.class);
	@Override
	public LoginEntity getByUserName(String userName) {
		// TODO Auto-generated method stub
		logger.info("inside get dao");
		SessionFactory factory = bean.getObject();
		logger.info("factory object created");
		Session session = factory.openSession();
		logger.info("session object created");
		Query query = session.createQuery("from LoginEntity le where le.userName = : userName").setParameter("userName", userName);
		LoginEntity entity= (LoginEntity) query.uniqueResult();
		logger.info("entity created");
		session.close();
		return entity;
	}
	@Override
	public CreateAccountEntity getByEmail(String emailId) {
		SessionFactory factory = bean.getObject();
		logger.info("factory object created");
		Session session = factory.openSession();
		logger.info("session object created");
	//	Transaction transaction = session.beginTransaction();
	Query query=	session.createQuery("from CreateAccountEntity le where le.emailId = : emailId").setParameter("emailId", emailId);
		CreateAccountEntity entity = (CreateAccountEntity) query.uniqueResult();
		logger.info("entity object created");
		session.close();
		return entity;
	}
	@Override
	public int updateByEmail(UpdateDTO dto) {
		// TODO Auto-generated method stub
		
		SessionFactory factory = bean.getObject();
		logger.info("factory object created");
		Session session = factory.openSession();
		logger.info("session object created");
		Transaction transaction = session.beginTransaction();
	Query query  =session.createQuery("update CreateAccountEntity le set le.userName =:userName ,le.contactNo = :contactNo,  le.dob = :dob where le.emailId =:emailId ");
	query.setParameter("userName", dto.getUserName());
	logger.info("username set");
	//query.setParameter("gender", dto.getGender());
	query.setParameter("dob", dto.getDob());
	logger.info("dob set");
	query.setParameter("emailId", dto.getEmailId());
	logger.info("email set");
	query.setParameter("contactNo", dto.getContactNo());
	logger.info("contactNo set");
	int res = query.executeUpdate();
	logger.info("transaction commit");
	transaction.commit();
	session.close();
	
	
		return res;
	}

}

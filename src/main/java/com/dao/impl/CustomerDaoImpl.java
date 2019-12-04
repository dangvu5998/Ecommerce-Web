package com.dao.impl;

import java.util.List;

import com.dao.CustomerDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.entity.Authorities;
import com.entity.Cart;
import com.entity.Customer;
import com.entity.User;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		//customer - has users,shippingaddress
		//insert the users
		customer.getUser().setEnabled(1);
		
		Authorities authorities = new Authorities();
		authorities.setAuthority("ROLE_USER");
		authorities.setEmailId(customer.getUser().getEmailId());
		
		Cart cart = new Cart();
		//it is to set CartId for customer table
		customer.setCart(cart);//set the cart to the customer
		//if we omit this statement, hen it will insert null for customerid in cart
		//to set the customerid in cart table
		cart.setCustomer(customer);
		session.save(customer);
		session.save(authorities);
		session.flush();
		session.close();
	}

	public List<Customer> getAllCustomers() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Customer> customerList = session.createQuery("from Customer").list();
		
		return customerList;
	}

	public Customer getCustomerByEmailId(String emailId) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User where emailId=?");
		query.setString(0, emailId);
		User users = (User)query.uniqueResult();
		Customer customer = users.getCustomer();
		return customer;
	}
	
	
}

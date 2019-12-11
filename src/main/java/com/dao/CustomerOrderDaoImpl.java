package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.CustomerOrder;
import com.model.Cart;
import com.model.Customer;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		Session session = sessionFactory.openSession();
		Cart cart = new Cart();
		Customer customer = customerOrder.getCustomer();
		customer.setCart(cart);
		cart.setCustomer(customer);

		session.saveOrUpdate(customerOrder);
		session.saveOrUpdate(customer);
		session.flush();
		session.close();
	}

}

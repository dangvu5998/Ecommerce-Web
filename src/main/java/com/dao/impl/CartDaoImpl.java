package com.dao.impl;

import java.io.IOException;

import com.dao.CartDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.HibernateException;

import com.entity.Cart;
import com.service.CustomerOrderService;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private CustomerOrderService customerOrderService;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Cart getCartByCartId(int CartId) {
		Session session;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}
		// Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, CartId);
		session.close();
		return cart;

	}

	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartByCartId(cartId);
		if (cart == null || cart.getCartItem().size() == 0) {
			throw new IOException(cartId + "");
		}
		update(cart);
		return cart;
	}

	public void update(Cart cart) {

		int cartId = cart.getCartId();
		double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
		cart.setTotalPrice(grandTotal);

		// Session session = sessionFactory.openSession();

		Session session;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}
		session.merge(cart);
		// session.saveOrUpdate(cart);
		session.flush();
		session.close();
	}

}

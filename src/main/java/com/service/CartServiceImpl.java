package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CartDao;
import com.model.Cart;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;

	public CartDao getCartDao() {
		return cartDao;
	}

	public void updateCart(Cart cart) {
		cartDao.update(cart);
	}

	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	public Cart getCartByCartId(int CartId) {

		return cartDao.getCartByCartId(CartId);
	}

}

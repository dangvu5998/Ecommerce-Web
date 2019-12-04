package com.service.impl;

import java.util.List;

import com.service.CartService;
import com.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerOrderDao;
import com.entity.Cart;
import com.entity.CartItem;
import com.entity.CustomerOrder;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	@Autowired
	private CartService cartService;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal=0;
		Cart cart = cartService.getCartByCartId(cartId);
		List<CartItem> cartItems = cart.getCartItem();
		
		for(CartItem item: cartItems){
			grandTotal += item.getPrice();
		}
		return grandTotal;
	}

}

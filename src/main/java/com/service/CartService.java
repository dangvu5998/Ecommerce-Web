package com.service;

import com.model.Cart;

public interface CartService {

	Cart getCartByCartId(int CartId);

	void updateCart(Cart cart);

}

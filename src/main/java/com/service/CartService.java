package com.service;

import com.entity.Cart;

public interface CartService {

	Cart getCartByCartId(int CartId);

	void updateCart(Cart cart);

}

package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Cart;
import com.entity.Customer;
import com.service.CustomerService;

public class GetCurrentCart extends HandlerInterceptorAdapter {

	@Autowired
	private CustomerService customerService;

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		Principal principal = request.getUserPrincipal();
		if(principal == null) {
			return true;
		}
		String emailId = principal.getName();
		Customer customer = customerService.getCustomerByEmailId(emailId);
		Cart cart = customer.getCart();
		request.setAttribute("cart", cart);
		return true;
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

}
package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.beans.factory.annotation.Autowired;

import com.model.Cart;
import com.model.Customer;
import com.service.CartService;
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
		request.setAttribute("test", "hello");
		request.setAttribute("cart", cart);
		System.out.println("CART");
		System.out.println(cart);
		System.out.println(cart.getTotalPrice());
		System.out.println(cart.getCartItem().size());
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("Request URL::" + request.getRequestURL().toString()
				+ " Sent to Handler :: Current Time=" + System.currentTimeMillis());
		//we can add attributes in the modelAndView and use that in the view page
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

}
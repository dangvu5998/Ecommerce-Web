package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Customer;
import com.model.User;
import com.service.CustomerService;

@Controller
public class UserController {

	@Autowired
	private CustomerService customerService;

	public CustomerService getCustomerService() {
		return customerService;
	}

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

	@RequestMapping(value = "/register")
	public ModelAndView getRegistrationForm() {
		Customer customer = new Customer();
		User user = new User();
		customer.setUser(user);

		return new ModelAndView("register", "customer", customer);
	}

	// to insert the data
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerCustomer(@Valid @ModelAttribute(value = "customer") Customer customer, Model model,
			BindingResult result) {
		if (result.hasErrors())
			return "register";
		System.out.println(customer.getFirstName());
		System.out.println(customer.getUser().getEmailId());
		customerService.addCustomer(customer);
		model.addAttribute("registrationSuccess", "Đăng ký tài khoản thành công");
		return "login";
	}
}

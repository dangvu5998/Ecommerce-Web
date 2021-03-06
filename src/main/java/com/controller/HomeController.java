package com.controller;

import java.util.List;
import javax.validation.Valid;
import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Queries;
import com.service.QueriesService;
import com.model.Product;
import com.service.ProductService;
import com.service.CustomerService;
import com.service.CartService;
import com.model.Customer;
import com.model.Cart;
import com.model.CustomerOrder;
import com.service.CustomerOrderService;

@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerOrderService customerOrderService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private CartService cartService;


	// Getters and Setters

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping("/")
	public ModelAndView home(HttpServletRequest request) {
		System.out.println(request.getUserPrincipal());
		List<Product> products = productService.getProductsByQuery("", 10, 0);
		return new ModelAndView("home", "products", products);
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null)
			model.addAttribute("error", "Tên đăng nhập và mật khẩu không hợp lệ");
		if (logout != null)
			model.addAttribute("logout", "Tài khoản đã đăng xuất");
		return "login";
	}

	@RequestMapping("/aboutus")
	public String sayAbout() {
		return "aboutUs";
	}

	@Autowired
	private QueriesService queryService;

	@RequestMapping(value = "/contactus")
	public ModelAndView getQuery() {
		Queries query = new Queries();
		return new ModelAndView("contactUs", "contact", query);
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.POST)
	public String addQuery(@Valid @ModelAttribute(value = "contact") Queries query, Model model, BindingResult result) {

		if (result.hasErrors())
			return "contactUs";

		queryService.addQuery(query);
		model.addAttribute("querySuccess",
				"Thank you, Your Message stored in our Server we will contact through corresponding Mail");
		return "login";

	}

	@RequestMapping(value = "/checkout")
	public ModelAndView getCheckout() {
		CustomerOrder customerOrder = new CustomerOrder();
		return new ModelAndView("checkout", "customerOrder", customerOrder);
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String createOrder(HttpServletRequest request, @Valid @ModelAttribute(value = "customerOrder") CustomerOrder customerOrder, BindingResult result) {
		Principal principal = request.getUserPrincipal();
		String emailId = principal.getName();
		Customer customer = customerService.getCustomerByEmailId(emailId);
		Cart cart = customer.getCart();
		customerOrder.setCustomer(customer);
		customerOrder.setCart(cart);
		customerOrderService.addCustomerOrder(customerOrder);
		return "redirect:/";
	}
}

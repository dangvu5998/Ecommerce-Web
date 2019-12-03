package com.service;

import java.util.List;

import com.entity.Customer;

public interface CustomerService {

	void addCustomer(Customer customer);

	List<Customer> getAllCustomers();

	Customer getCustomerByEmailId(String emailId);

}

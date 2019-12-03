package com.dao;

import java.util.List;

import com.entity.Customer;

public interface CustomerDao {

	void addCustomer(Customer customer);

	List<Customer> getAllCustomers();

	Customer getCustomerByEmailId(String emailId);

}

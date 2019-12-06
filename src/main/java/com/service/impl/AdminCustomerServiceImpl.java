package com.service.impl;

import com.converter.BaseConverter;
import com.dto.CustomerDTO;
import com.entity.Customer;
import com.repository.CustomerRepository;
import com.service.AdminCustomerService;
import com.utils.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdminCustomerServiceImpl implements AdminCustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private BaseConverter<Customer, CustomerDTO> customerConverter;

    @Override
    public List<CustomerDTO> findAll() {
        List<CustomerDTO> lists = new ArrayList<>();
        for (Customer customer : customerRepository.findAll()) {
            lists.add(customerConverter.toDTO(customer));
        }
        return lists;
    }

    @Override
    public CustomerDTO findOneById(Integer id) {
        return customerConverter.toDTO(customerRepository.findOne(id));
    }

    @Override
    public Map<Integer, String> getListStatus() {
        Map<Integer, String> result = new HashMap<>();
        result.put(0, "Chưa kích hoạt");
        result.put(1, "Đã kích hoạt");
        return result;
    }

    @Override
    @Transactional
    public CustomerDTO save(CustomerDTO customerDTO) {
        Customer customer = new Customer();
        if (customerDTO.getCustomerId() != null) {
            Customer oldCustomer = customerRepository.findOne(customerDTO.getCustomerId());
            customer = customerConverter.toEntity(oldCustomer, customerDTO);
        } else {
            customer = customerConverter.toEntity(customerDTO);
        }
        return customerConverter.toDTO(customerRepository.save(customer));
    }


}

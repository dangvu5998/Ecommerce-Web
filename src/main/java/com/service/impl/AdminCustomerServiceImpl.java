package com.service.impl;

import com.converter.BaseConverter;
import com.dto.CustomerDTO;
import com.entity.Customer;
import com.repository.CustomerRepository;
import com.service.AdminCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}

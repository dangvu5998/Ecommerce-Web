package com.service.impl;

import com.converter.CustomerOrderConverter;
import com.dto.CustomerOrderDTO;
import com.entity.CustomerOrder;
import com.repository.CustomerOrderRepository;
import com.service.AdminCustomerOrderService;
import com.service.AdminCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminCustomerOrderServiceImpl implements AdminCustomerOrderService {
    @Autowired
    private CustomerOrderRepository customerOrderRepository;

    @Autowired
    private CustomerOrderConverter customerOrderConverter;

    @Override
    public List<CustomerOrderDTO> findAll() {
        List<CustomerOrderDTO> lists = new ArrayList<>();
        for (CustomerOrder customerOrder : customerOrderRepository.findAll()) {
            lists.add(customerOrderConverter.toDTO(customerOrder));
        }
        return lists;
    }
}

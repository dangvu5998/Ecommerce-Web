package com.service.impl;

import com.converter.CustomerOrderConverter;
import com.dto.CustomerDTO;
import com.dto.CustomerOrderDTO;
import com.entity.CustomerOrder;
import com.repository.CustomerOrderRepository;
import com.service.AdminCustomerOrderService;
import com.service.AdminCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

    @Override
    public CustomerOrderDTO findById(Integer id) {
        return customerOrderConverter.toDTO(customerOrderRepository.findOne(id));
    }

    @Override
    @Transactional
    public CustomerOrderDTO save(CustomerOrderDTO customerOrderDTO) {
        CustomerOrder customerOrder = customerOrderConverter.toEntity(
                customerOrderRepository.findOne(customerOrderDTO.getCustomerOrderId()),
                customerOrderDTO);
        return customerOrderConverter.toDTO(customerOrderRepository.save(customerOrder));
    }
}

package com.service;

import com.dto.CustomerDTO;
import com.dto.CustomerOrderDTO;

import java.util.List;

public interface AdminCustomerOrderService {
    List<CustomerOrderDTO> findAll();

    CustomerOrderDTO findById(Integer id);

    CustomerOrderDTO save(CustomerOrderDTO customerOrderDTO);
}

package com.service;

import com.dto.CustomerOrderDTO;

import java.util.List;

public interface AdminCustomerOrderService {
    List<CustomerOrderDTO> findAll();
}

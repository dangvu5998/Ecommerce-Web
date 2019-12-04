package com.service;

import com.dto.CustomerDTO;

import java.util.List;

public interface AdminCustomerService {
    List<CustomerDTO> findAll();
}

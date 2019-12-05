package com.service;

import com.dto.CustomerDTO;

import java.util.List;
import java.util.Map;

public interface AdminCustomerService {
    List<CustomerDTO> findAll();

    CustomerDTO findOneById(Integer id);

    Map<Integer, String> getListStatus();
}

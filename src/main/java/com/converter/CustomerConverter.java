package com.converter;

import com.dto.CustomerDTO;
import com.dto.UserDTO;
import com.entity.Customer;
import com.entity.User;
import com.utils.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
public class CustomerConverter implements BaseConverter<Customer, CustomerDTO> {

    @Autowired
    private BaseConverter<User, UserDTO> userConverter;

    @Override
    public CustomerDTO toDTO(Customer entity) {
        CustomerDTO customerDTO = new CustomerDTO();
        customerDTO.setCustomerId(entity.getCustomerId());
        customerDTO.setCustomerPhone(entity.getCustomerPhone());
        customerDTO.setFirstName(entity.getFirstName());
        customerDTO.setLastName(entity.getLastName());
        customerDTO.setAddress(entity.getAddress());
        customerDTO.setUserDTO(userConverter.toDTO(entity.getUser()));
        return customerDTO;
    }

    @Override
    public Customer toEntity(CustomerDTO dto) {
        Customer customer = new Customer();
        customer.setCustomerPhone(dto.getCustomerPhone());
        customer.setFirstName(dto.getFirstName());
        customer.setLastName(dto.getLastName());
        customer.setAddress(dto.getAddress());
        customer.setUser(userConverter.toEntity(dto.getUserDTO()));
        return customer;
    }

    @Override
    public Customer toEntity(Customer entity, CustomerDTO dto) {
        entity.setUser(userConverter.toEntity(dto.getUserDTO()));
        entity.setAddress(dto.getAddress());
        entity.setFirstName(dto.getFirstName());
        entity.setLastName(dto.getLastName());
        entity.setCustomerPhone(dto.getCustomerPhone());
        return entity;
    }
}

package com.converter;

import com.dto.CustomerDTO;
import com.dto.UserDTO;
import com.entity.Customer;
import com.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserConverter implements BaseConverter<User, UserDTO> {

    @Autowired
    BaseConverter<Customer, CustomerDTO> customerConverter;

    @Override
    public UserDTO toDTO(User entity) {
        return null;
    }

    @Override
    public User toEntity(UserDTO dto) {
        User user = new User();
        user.setUserId(dto.getUserId());
        user.setUserName(dto.getUsername());
        user.setPassword(dto.getPassword());
        user.setEnabled(dto.getEnable());
        user.setEmailId(dto.getEmail());
        user.setCustomer(customerConverter.toEntity(dto.getCustomerDTO()));
        user.setFullName(dto.getFullName());
        return null;
    }
}

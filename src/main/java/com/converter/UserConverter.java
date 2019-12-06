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
        UserDTO userDTO = new UserDTO();
        userDTO.setUserId(entity.getUserId());
        userDTO.setUserName(entity.getUserName());
        userDTO.setPassword(entity.getPassword());
        userDTO.setFullName(entity.getFullName());
        userDTO.setEmail(entity.getEmailId());
        userDTO.setEnable(entity.getEnabled());
        return userDTO;
    }

    @Override
    public User toEntity(UserDTO dto) {
        User user = new User();
        user.setUserName(dto.getUsername());
        user.setPassword(dto.getPassword());
        user.setEnabled(dto.getEnable());
        user.setEmailId(dto.getEmail());
        user.setFullName(dto.getFullName());
        return user;
    }

    @Override
    public User toEntity(User entity, UserDTO dto) {
        return null;
    }
}

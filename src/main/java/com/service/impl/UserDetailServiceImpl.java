package com.service.impl;

import com.constant.SystemConstant;
import com.converter.BaseConverter;
import com.dto.CustomerDTO;
import com.dto.UserDTO;
import com.entity.Authorities;
import com.entity.Customer;
import com.entity.User;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.List;

public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BaseConverter<Customer, CustomerDTO> customerConverter;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findOneByUserNameAndEnabled(username, SystemConstant.ACTIVE_STATUS);
        if (user == null) {
            throw new UsernameNotFoundException("User not found!");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (Authorities authority : user.getAuthorities()) {
            authorities.add(new SimpleGrantedAuthority(authority.getAuthority()));
        }
        UserDTO userDTO = new UserDTO();
        userDTO.setUserName(user.getUserName());
        userDTO.setPassword(user.getPassword());
        userDTO.setAuthorities(authorities);
        userDTO.setFullName(user.getFullName());
        userDTO.setEmail(user.getEmailId());
        userDTO.setCustomerDTO(customerConverter.toDTO(user.getCustomer()));
        userDTO.setEnable(user.getEnabled());
        return userDTO;
    }
}

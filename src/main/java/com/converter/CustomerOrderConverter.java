package com.converter;

import com.dto.CustomerOrderDTO;
import com.entity.CustomerOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CustomerOrderConverter implements BaseConverter<CustomerOrder, CustomerOrderDTO> {

    @Autowired
    private CartConverter cartConverter;

    @Override
    public CustomerOrderDTO toDTO(CustomerOrder entity) {
        CustomerOrderDTO customerOrderDTO = new CustomerOrderDTO();
        customerOrderDTO.setCustomerOrderId(entity.getCustomerOrderId());
        customerOrderDTO.setAddress(entity.getAddress());
        customerOrderDTO.setNote(entity.getNote());
        customerOrderDTO.setCartDTO(cartConverter.toDTO(entity.getCart()));
        customerOrderDTO.setStatus(entity.getStatus());
        customerOrderDTO.setCode(entity.getCode());
        return customerOrderDTO;
    }

    @Override
    public CustomerOrder toEntity(CustomerOrderDTO dto) {
        CustomerOrder customerOrder = new CustomerOrder();
        customerOrder.setAddress(dto.getAddress());
        customerOrder.setNote(dto.getNote());
        customerOrder.setCart(cartConverter.toEntity(dto.getCartDTO()));
        customerOrder.setStatus(dto.getStatus());
        customerOrder.setCode(dto.getCode());
        return customerOrder;
    }

    @Override
    public CustomerOrder toEntity(CustomerOrder entity, CustomerOrderDTO dto) {
        entity.setAddress(dto.getAddress());
        entity.setNote(dto.getNote());
        entity.setStatus(dto.getStatus());
        entity.setCart(cartConverter.toEntity(dto.getCartDTO()));
        entity.setCode(dto.getCode());
        return entity;
    }
}

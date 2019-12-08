package com.converter;

import com.dto.CartDTO;
import com.entity.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CartConverter implements BaseConverter<Cart, CartDTO> {
    @Autowired
    private CustomerConverter customerConverter;

    @Autowired
    private CartItemConverter cartItemConverter;

    @Override
    public CartDTO toDTO(Cart entity) {
        CartDTO cartDTO = new CartDTO();
        cartDTO.setCartId(entity.getCartId());
        cartDTO.setTotalPrice(entity.getTotalPrice());
        cartDTO.setCustomerDTO(customerConverter.toDTO(entity.getCustomer()));
        cartDTO.setCartItemDTOList(cartItemConverter.toListDTO(entity.getCartItem()));
        return cartDTO;
    }

    @Override
    public Cart toEntity(CartDTO dto) {
        Cart cart = new Cart();
        cart.setTotalPrice(dto.getTotalPrice());
        cart.setCustomer(customerConverter.toEntity(dto.getCustomerDTO()));
        cart.setCartItem(cartItemConverter.toListEntity(dto.getCartItemDTOList()));
        return cart;
    }

    @Override
    public Cart toEntity(Cart entity, CartDTO dto) {
        entity.setTotalPrice(dto.getTotalPrice());
        entity.setCustomer(customerConverter.toEntity(entity.getCustomer(), dto.getCustomerDTO()));
        entity.setCartItem(cartItemConverter.toListEntity(entity.getCartItem(), dto.getCartItemDTOList()));
        return entity;
    }
}

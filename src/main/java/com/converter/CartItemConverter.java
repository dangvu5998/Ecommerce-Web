package com.converter;

import com.dto.CartItemDTO;
import com.entity.CartItem;

public class CartItemConverter implements BaseConverter<CartItem, CartItemDTO> {

    @Override
    public CartItemDTO toDTO(CartItem entity) {
        CartItemDTO cartItemDTO = new CartItemDTO();
        cartItemDTO.setCartItemId(entity.getCartItemId());
        cartItemDTO.setPrice(entity.getPrice());
        cartItemDTO.setQuality(entity.getQuality());
        return cartItemDTO;
    }

    @Override
    public CartItem toEntity(CartItemDTO dto) {
        CartItem cartItem = new CartItem();
        cartItem.setPrice(dto.getPrice());
        cartItem.setQuality(dto.getQuality());
        return cartItem;
    }

    @Override
    public CartItem toEntity(CartItem entity, CartItemDTO dto) {
        entity.setPrice(dto.getPrice());
        entity.setQuality(dto.getQuality());
        return entity;
    }
}

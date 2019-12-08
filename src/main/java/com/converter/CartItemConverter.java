package com.converter;

import com.dto.CartItemDTO;
import com.entity.CartItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class CartItemConverter implements CartItemBaseConverter<CartItem, CartItemDTO> {

    @Autowired
    private ProductConverter productConverter;

    @Override
    public CartItemDTO toDTO(CartItem entity) {
        CartItemDTO cartItemDTO = new CartItemDTO();
        cartItemDTO.setCartItemId(entity.getCartItemId());
        cartItemDTO.setPrice(entity.getPrice());
        cartItemDTO.setQuality(entity.getQuality());
        cartItemDTO.setProductDTO(productConverter.toDTO(entity.getProduct()));
        return cartItemDTO;
    }

    @Override
    public CartItem toEntity(CartItemDTO dto) {
        CartItem cartItem = new CartItem();
        cartItem.setPrice(dto.getPrice());
        cartItem.setQuality(dto.getQuality());
        cartItem.setProduct(productConverter.toEntity(dto.getProductDTO()));
        return cartItem;
    }

    @Override
    public CartItem toEntity(CartItem entity, CartItemDTO dto) {
        entity.setPrice(dto.getPrice());
        entity.setQuality(dto.getQuality());
        entity.setProduct(productConverter.toEntity(dto.getProductDTO()));
        return entity;
    }

    @Override
    public List<CartItem> toListEntity(List<CartItemDTO> dtos) {
        List<CartItem> result = new ArrayList<>();
        for (CartItemDTO dto : dtos) {
            result.add(toEntity(dto));
        }
        return result;
    }

    public List<CartItem> toListEntity(List<CartItem> entities, List<CartItemDTO> dtos) {
        List<CartItem> result = new ArrayList<>();
        for (int i = 0; i < dtos.size(); i++) {
            result.add(i,toEntity(entities.get(i), dtos.get(i)));
        }
        return result;
    }

    @Override
    public List<CartItemDTO> toListDTO(List<CartItem> entities) {
        List<CartItemDTO> result = new ArrayList<>();
        for (CartItem entity : entities) {
            result.add(toDTO(entity));
        }
        return result;
    }
}

package com.dto;

import java.util.List;

public class CartDTO {
    private Integer cartId;
    private double totalPrice;
    private CustomerDTO customerDTO;
    private List<CartItemDTO> cartItemDTOList;

    public List<CartItemDTO> getCartItemDTOList() {
        return cartItemDTOList;
    }

    public void setCartItemDTOList(List<CartItemDTO> cartItemDTOList) {
        this.cartItemDTOList = cartItemDTOList;
    }

    public CustomerDTO getCustomerDTO() { return customerDTO; }

    public void setCustomerDTO(CustomerDTO customerDTO) { this.customerDTO = customerDTO; }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}

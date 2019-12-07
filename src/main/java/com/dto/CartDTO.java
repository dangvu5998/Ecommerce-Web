package com.dto;

import java.util.List;

public class CartDTO {
    private int cartId;
    private double totalPrice;
    private CustomerDTO customerDTO;

    public CustomerDTO getCustomerDTO() { return customerDTO; }

    public void setCustomerDTO(CustomerDTO customerDTO) { this.customerDTO = customerDTO; }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}

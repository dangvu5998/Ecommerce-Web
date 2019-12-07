package com.dto;

public class CustomerOrderDTO {
    private int customerOrderId;
    private String address;
    private String note;
    private CartDTO cartDTO;
    private String code;
    private Integer status;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public CartDTO getCartDTO() { return cartDTO; }

    public void setCartDTO(CartDTO cartDTO) { this.cartDTO = cartDTO; }

    public int getCustomerOrderId() { return customerOrderId; }

    public void setCustomerOrderId(int customerOrderId) { this.customerOrderId = customerOrderId; }

    public String getAddress() { return address; }

    public void setAddress(String address) { this.address = address; }

    public String getNote() { return note; }

    public void setNote(String note) { this.note = note; }
}

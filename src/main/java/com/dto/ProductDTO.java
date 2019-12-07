package com.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class ProductDTO {
    private Integer productId;
    private String productCategory;
    private String productOverview;
    private String productDescription;
    private String productManufacturer;
    private String productName;
    private double productPrice;
    private double productSalePrice;
    private String thumbnail;
    private int quantity;
    private MultipartFile[] productImage;

    public MultipartFile[] getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile[] productImage) {
        this.productImage = productImage;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductOverview() {
        return productOverview;
    }

    public void setProductOverview(String productOverview) {
        this.productOverview = productOverview;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getProductSalePrice() {
        return productSalePrice;
    }

    public void setProductSalePrice(double productSalePrice) {
        this.productSalePrice = productSalePrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }
}

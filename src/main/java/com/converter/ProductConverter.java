package com.converter;

import com.dto.ProductDTO;
import com.entity.Product;
import org.springframework.stereotype.Component;

@Component
public class ProductConverter implements BaseConverter<Product, ProductDTO> {
    @Override
    public ProductDTO toDTO(Product entity) {
        ProductDTO productDTO = new ProductDTO();
        productDTO.setProductId(entity.getProductId());
        productDTO.setProductCategory(entity.getProductCategory());
        productDTO.setProductDescription(entity.getProductDescription());
        productDTO.setProductManufacturer(entity.getProductManufacturer());
        productDTO.setProductName(entity.getProductName());
        productDTO.setProductOverview(entity.getProductOverview());
        productDTO.setProductPrice(entity.getProductPrice());
        productDTO.setProductSalePrice(entity.getProductSalePrice());
        productDTO.setQuantity(entity.getQuantity());
        return productDTO;
    }

    @Override
    public Product toEntity(ProductDTO dto) {
        Product product = new Product();
        product.setProductCategory(dto.getProductCategory());
        product.setProductDescription(dto.getProductDescription());
        product.setProductManufacturer(dto.getProductManufacturer());
        product.setProductName(dto.getProductName());
        product.setProductOverview(dto.getProductOverview());
        product.setProductPrice(dto.getProductPrice());
        product.setProductSalePrice(dto.getProductSalePrice());
        product.setquantity(dto.getQuantity());
        return product;
    }

    @Override
    public Product toEntity(Product entity, ProductDTO dto) {
        entity.setProductCategory(dto.getProductCategory());
        entity.setProductDescription(dto.getProductDescription());
        entity.setProductManufacturer(dto.getProductManufacturer());
        entity.setProductName(dto.getProductName());
        entity.setProductOverview(dto.getProductOverview());
        entity.setProductPrice(dto.getProductPrice());
        entity.setProductSalePrice(dto.getProductSalePrice());
        entity.setquantity(dto.getQuantity());
        return entity;
    }
}

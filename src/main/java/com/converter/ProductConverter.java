package com.converter;

import com.dto.ProductDTO;
import com.entity.Product;

public class ProductConverter implements BaseConverter<Product, ProductDTO> {
    @Override
    public ProductDTO toDTO(Product entity) {
        return null;
    }

    @Override
    public Product toEntity(ProductDTO dto) {
        return null;
    }

    @Override
    public Product toEntity(Product entity, ProductDTO dto) {
        return null;
    }
}

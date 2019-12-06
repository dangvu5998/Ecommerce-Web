package com.service;

import com.dto.CustomerDTO;
import com.dto.ProductDTO;
import com.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Map;

public interface AdminProductService {
    List<ProductDTO> findAll();

    List<ProductDTO> findByCategory(String productCategory);

    ProductDTO findOneById(Integer id);

    ProductDTO save(ProductDTO productDTO);

    Map<String,String> findListCategory();

    Map<String,String> findListManufacture();

    void delete(Integer id);
}

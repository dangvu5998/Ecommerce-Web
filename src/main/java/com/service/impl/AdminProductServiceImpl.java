package com.service.impl;

import com.converter.ProductConverter;
import com.dto.ProductDTO;
import com.entity.Product;
import com.repository.ProductRepository;
import com.service.AdminProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdminProductServiceImpl implements AdminProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductConverter productConverter;

    @Override
    public List<ProductDTO> findAll() {
        List<ProductDTO> lists = new ArrayList<>();
        for (Product product : productRepository.findAll()) {
            lists.add(productConverter.toDTO(product));
        }
        return lists;
    }

    @Override
    public List<ProductDTO> findByCategory(String productCategory) {
        List<ProductDTO> lists = new ArrayList<>();
        for (Product product : productRepository.findByProductCategory(productCategory)) {
            lists.add(productConverter.toDTO(product));
        }
        return lists;
    }

    @Override
    public ProductDTO findOneById(Integer id) {
        return productConverter.toDTO(productRepository.findOne(id));
    }

    @Override
    @Transactional
    public ProductDTO save(ProductDTO productDTO) {
        Product product = new Product();
        if (productDTO.getProductId() != null) {
            product = productConverter.toEntity(productRepository.findOne(productDTO.getProductId()), productDTO);
        } else {
            product = productConverter.toEntity(productDTO);
        }
        return productConverter.toDTO(productRepository.save(product));
    }

    @Override
    public Map<String, String> findListCategory() {
        Map<String, String> result = new HashMap<>();
        result.put("Smartphone", "Smartphone");
        result.put("Laptop", "Laptop");
        result.put("Tablet", "Tablet");
        return result;
    }

    @Override
    public Map<String, String> findListManufacture() {
        Map<String, String> result = new HashMap<>();
        result.put("Apple", "Apple");
        result.put("Samsung", "Samsung");
        result.put("HTC", "HTC");
        result.put("Sony", "Sony");
        result.put("Huawei", "Huawei");
        result.put("Oppo", "Oppo");
        result.put("Lenovo", "Lenovo");
        result.put("HP", "HP");
        result.put("Acer", "Acer");
        result.put("Asus", "Asus");
        result.put("Dell", "Dell");
        return result;
    }

    @Override
    @Transactional
    public void delete(Integer id) {
        productRepository.delete(id);
    }
}

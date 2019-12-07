package com.service.impl;

import com.constant.SystemConstant;
import com.converter.ProductConverter;
import com.dto.ProductDTO;
import com.entity.Product;
import com.repository.ProductRepository;
import com.service.AdminProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

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
        result.put("smartphone", "smartphone");
        result.put("laptop", "laptop");
        result.put("tablet", "tablet");
        return result;
    }

    @Override
    public Map<String, String> findListManufacture() {
        Map<String, String> result = new HashMap<>();
        result.put("apple", "apple");
        result.put("samsung", "samsung");
        result.put("htc", "htc");
        result.put("sony", "sony");
        result.put("huawei", "huawei");
        result.put("oppo", "oppo");
        result.put("lenovo", "lenovo");
        result.put("hp", "hp");
        result.put("acer", "acer");
        result.put("asus", "asus");
        result.put("dell", "dell");
        return result;
    }

    @Override
    @Transactional
    public void delete(Integer id) {
        productRepository.delete(id);
    }

    @Override
    public void deleteThumbnailProduct(String thumbnail) {
        try {
            File file = new File(SystemConstant.UPLOADED_FOLDER + thumbnail);
            file.delete();
        } catch (Exception e) {
            System.out.println("Failed to Delete image !!");
        }
    }

    @Override
    public String uploadFile(MultipartFile file) {
        StringJoiner sj = new StringJoiner(" , ");
        if (file.isEmpty()) {
            return "";
        }
        try {
            byte[] bytes = file.getBytes();
            Path path = Paths.get(SystemConstant.UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);
            sj.add(file.getOriginalFilename());
        } catch (IOException e) {
            e.printStackTrace();
        }
        String uploadedFileName = sj.toString();
        return uploadedFileName;
    }
}

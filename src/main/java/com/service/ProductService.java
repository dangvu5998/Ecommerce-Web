package com.service;

import java.util.List;

import com.model.Product;

public interface ProductService {

	public List<Product> getAllProducts();

	Product getProductById(int productId);

	List<Product> getProductsByQuery(String query, int limit, int offset);

	int countProductsByQuery(String query, int limit, int offset);

	void deleteProduct(int productId);
	
	void addProduct(Product product);
	
	void editProduct(Product product);

	String getImageDirPath();
}

package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDao {

	List<Product> getAllProducts();

	List<Product> getProductsByQuery(String query, int limit, int offset);

	int countProductsByQuery(String query, int limit, int offset);

	Product getProductById(int productId);

	void deleteProduct(int productId);

	void addProduct(Product product);
	
	void editProduct(Product product);
	
}

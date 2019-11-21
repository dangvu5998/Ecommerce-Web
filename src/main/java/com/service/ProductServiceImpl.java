package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDao;
import com.model.Product;

@Service(value="productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	public List<Product> getProductsByQuery(String query, int limit, int offset) {
		return productDao.getProductsByQuery(query, limit, offset);
	}
	
	public int countProductsByQuery(String query, int limit, int offset) {
		return productDao.countProductsByQuery(query, limit, offset);
	}

	public Product getProductById(int productId) {
		return productDao.getProductById(productId);
	}

	
	public void deleteProduct(int productId) {
		productDao.deleteProduct(productId);
	}
	
	public void addProduct(Product product){
		productDao.addProduct(product);
	}
	
	public void editProduct(Product product){
		productDao.editProduct(product);
	}

	public String getImageDirPath() {
		return "/media/trivu/data/dh/CNPM/ShoppingCart/src/main/webapp/WEB-INF/resource/images/products";
	}

}

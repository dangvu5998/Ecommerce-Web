package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "product")
public class Product implements Serializable {

	private static final long serialVersionUID = 5186013952828648626L;

	@Id
	@Column(name = "productId")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productId;
	
	@Column(name="category")
	private String productCategory;
	
	@Column(name = "overview")
	private String productOverview;
	
	@Column(name = "description", length = 1000)
	private String productDescription;
	
	@Column(name = "manufacturer")
	private String productManufacturer;
	
	@NotEmpty(message = "Product Name is mandatory")
	@Column(name = "name")
	private String productName;
	
	@NotNull(message="Please provide some price")
	@Min(value = 100, message = "Minimum value should be greater than 100")
	@Column(name = "price")
	private double productPrice;
	
	@Column(name = "quantity")
	@Min(value = 0, message = "Minimum value should be greater than 0")
	private int quantity;

	@Transient
	private MultipartFile productImage;

	// Getters and Setter

	public int getProductId() {
		return productId;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public String getProductOverview() {
		return productOverview;
	}

	public String getProductManufacturer() {
		return productManufacturer;
	}

	public String getProductName() {
		return productName;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public int getquantity() {
		return quantity;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public void setProductOverview(String productOverview) {
		this.productOverview = productOverview;
	}

	public void setProductManufacturer(String productManufacturer) {
		this.productManufacturer = productManufacturer;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public void setquantity(int quantity) {
		this.quantity = quantity;
	}

	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	// Constructors
	public Product(int productId, String productCategory, String productDescription, String productManufacturer,
			String productName, double productPrice, int quantity) {
		super();
		this.productId = productId;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
		this.productManufacturer = productManufacturer;
		this.productName = productName;
		this.productPrice = productPrice;
		this.quantity = quantity;
	}

	public Product() {

	}

}

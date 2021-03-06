
package com.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	// Getters and Setters

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	// Configuration for MultiPartResolver
	// Multipart resolver is for uploading images and other media
	// maxupload size is for image size should not be maximum than 10240000

	@Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(10240000);
		return multipartResolver;
	}

	// Request Mapping

	// which displays the list of products to the productList page

	/* Product List using Angular
	* @RequestMapping("/getAllProducts")
	* public ModelAndView getAllProducts() {
	*	List<Product> products = productService.getAllProducts();
	*	return new ModelAndView("productListAngular", "products", products);
	*}
	*/
	//		Normal ProductList view 
	@RequestMapping("/getAllProducts") public ModelAndView getAllProducts() {
		List<Product> products = productService.getAllProducts();
		return new ModelAndView("productList", "products", products);
	}
	
	// this is used for getting the product by query
	@RequestMapping("products")
	public ModelAndView getProducts(@RequestParam(defaultValue = "1") int page,
		@RequestParam(required = false) String search,
		@RequestParam(required = false) String category
	) {
		final int NUMBER_PRODUCTS_PER_PAGE = 9;
		final int PRODUCT_OFFSET = NUMBER_PRODUCTS_PER_PAGE * (page - 1);
		String currentUrl = "/products?";
		String pageOptions = "list";
		ArrayList<String> queryList = new ArrayList<String>();
		if (search != null) {
			pageOptions += "search";
			String querySearch = "(name LIKE '%" + search + "%')";
			currentUrl += "search=" + search + "&";
			queryList.add(querySearch);
		}
		if (category != null) {
			pageOptions += category;
			String[] categories = category.split(",");
			ArrayList<String> categoryQueryList = new ArrayList<String>();
			for (String categoryElement: categories) {
				categoryQueryList.add("category = '" + categoryElement + "'");
			}
			String queryCategory = "(" + String.join(" OR ", categoryQueryList) + ")";
			queryList.add(queryCategory);
			currentUrl += "category=" + category + "&";
		}
		String query = String.join(" AND ", queryList);
		if (query.length() > 0) {
			query = "WHERE " + query;
		}
		System.out.println("pageOptions:" + pageOptions);
		List<Product> products = productService.getProductsByQuery(query, NUMBER_PRODUCTS_PER_PAGE, PRODUCT_OFFSET);
		int productsCount = productService.countProductsByQuery(query, NUMBER_PRODUCTS_PER_PAGE, PRODUCT_OFFSET);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("products", products);
		model.put("productsCount", productsCount);
		model.put("pageOptions", pageOptions);
		model.put("page", page);
		model.put("beginPagination", Math.max(1, page - 2));
		int maxPage = productsCount / 9;
		if (productsCount % 9 != 0) {
			maxPage++;
		}
		model.put("endPagination", Math.min(maxPage, page + 2));
		model.put("maxPage", maxPage);
		model.put("currentUrl", currentUrl);
		return new ModelAndView("products", model);
	}
	
	// this is used for getting the product by productId
	@RequestMapping("products/{productId}")
	public ModelAndView getProductById(@PathVariable(value = "productId") int productId) {
		Product product = productService.getProductById(productId);
		return new ModelAndView("productDetail", "product", product);
	}

	@RequestMapping("/admin/delete/{productId}")
	public String deleteProduct(@PathVariable(value = "productId") int productId) {

		// Here the Path class is used to refer the path of the file

		Path path = Paths.get(productService.getImageDirPath(), productId + ".jpg");

		if (Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		productService.deleteProduct(productId);
		// http://localhost:8080/shoppingCart/getAllProducts
		return "redirect:/getAllProducts";
	}

	@RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.GET)
	public String getProductForm(Model model) {
		Product product = new Product();
		// New Arrivals
		// set the category as 1 for the Book book
		product.setProductCategory("Android");
		model.addAttribute("productFormObj", product);
		return "addProduct";

	}

	@RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute(value = "productFormObj") Product product, BindingResult result) {
		// Binding Result is used if the form that has any error then it will
		// redirect to the same page without performing any functions
		if (result.hasErrors())
			return "addProduct";
		productService.addProduct(product);
		MultipartFile image = product.getProductImage();
		if (image != null && !image.isEmpty()) {
			Path path = Paths
					.get(productService.getImageDirPath(), product.getProductId() + ".jpg");

			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return "redirect:/getAllProducts";
	}

	@RequestMapping(value = "/admin/product/editProduct/{productId}")
	public ModelAndView getEditForm(@PathVariable(value = "productId") int productId) {
		System.out.println(productId);
		Product product = productService.getProductById(productId);
		return new ModelAndView("editProduct", "editProductObj", product);
	}

	@RequestMapping(value = "/admin/product/editProduct", method = RequestMethod.POST)
	public String editProduct(@ModelAttribute(value = "editProductObj") Product product) {
		productService.editProduct(product);
		return "redirect:/getAllProducts";
	}

	@RequestMapping("/getProductsList")
	public @ResponseBody List<Product> getProductsListInJson() {
		return productService.getAllProducts();
	}

}

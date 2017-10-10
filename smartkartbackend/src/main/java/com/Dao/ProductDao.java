package com.Dao;

import java.util.List;

import com.model.Product;

public interface ProductDao {
	
	public boolean addProduct(Product product);
	public boolean deleteProduct(Product product);
	public List<Product> retriveProduct();
	public boolean updateProduct(Product product);
	public Product getProduct(int ProductId);

}

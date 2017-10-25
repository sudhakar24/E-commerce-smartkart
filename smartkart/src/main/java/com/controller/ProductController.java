package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.Category;
import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.model.Product;


@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	CategoryDao categoryDao;
	@RequestMapping(value="product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{ 
		Product product=new Product();
		m.addAttribute(product);
		m.addAttribute("categoryList",this.getCategories());
		return "Product";
	}
	
	public LinkedHashMap<Integer,String> getCategories()
	{
		List<Category> listCategories=categoryDao.retrieveCategory();
		LinkedHashMap<Integer,String> categoriesList=new LinkedHashMap<Integer,String>();
		for(Category category:listCategories)
		{
			categoriesList.put(category.getCatId(), category.getCatName());
			
		}
		return categoriesList;
	}
	@RequestMapping(value="InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile fileDetail,Model m)
	{
		productDao.addProduct(product);
		String path="F:\\NIIT\\Project\\Project 1\\E-commerce\\smartkart\\src\\main\\resources";
		
		String totalFileWithPath=path+String.valueOf(product.getProductId())+".jpg";
		
		File productImage=new File(totalFileWithPath);

		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[]=fileDetail.getBytes();
				FileOutputStream fos=new FileOutputStream(productImage);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("FileException",e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error","Problem in File Uploading");
		}
		Product product1=new Product();
		m.addAttribute(product1);
		
		return "product";
	}
	
}

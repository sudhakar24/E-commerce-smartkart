package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.CategoryDao;
import com.model.Category;




public class CategoryTest 
{
	static CategoryDao categoryDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		categoryDao=(CategoryDao)configApplnContext.getBean("categoryDao");
	}
	
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1001);
		category.setCatName("JMShirt");
		category.setCatDesc("John Miller Shirt");
		
	assertTrue(categoryDao.addCategory(category));
	}
	
	
}








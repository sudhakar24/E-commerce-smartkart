package com.Daolmpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Category;
import com.Dao.CategoryDao;


@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao  
  {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional 
	@Override
	public boolean addCategory(Category category) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Error");
		return false;
		}
	}
	@Override
	public List<Category> retrieveCategory() {
		
		return null;
	}
	@Override		
	public boolean deleteCategory(Category category) {
		
		return false;
	}
	@Override
	public Category getCategory(int catId) {
		
		return null;
	}
	@Transactional
	@Override
	public boolean updateCategory(Category category) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Error");
		return false;
		}
		
	}
	
	
}

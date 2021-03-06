package com.Daolmpl;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
			System.out.println("Exception arised"+e);
		return false;
		}
	}
	@Override
	public List<Category> retrieveCategory() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> listCategory=query.list();
		session.close();
		return listCategory;
	}
	@Transactional
	@Override		
	public boolean deleteCategory(Category category) {
		
		try
		{
		sessionFactory.getCurrentSession().delete(category);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception arised"+e);
		return false;
		}
	}
	@Override
	public Category getCategory(int catId) {
		Session session=sessionFactory.openSession();
		Category category=(Category)session.get(Category.class,catId);
		session.close();
		return category;
		
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
			System.out.println("Exception arised"+e);
		return false;
		}
		
	}
	
	
}

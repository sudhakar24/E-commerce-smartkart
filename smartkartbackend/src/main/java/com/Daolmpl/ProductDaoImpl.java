package com.Daolmpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Dao.ProductDao;
import com.model.Product;
import com.model.Supplier;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public boolean addProduct(Product product) {
		try
		{
			sessionFactory.getCurrentSession().save(product);
			return true;
		}
		catch(Exception e)
		{	
			System.out.println("Exception arrised"+e);
			return false;
		}
	}

	@Override
	public boolean deleteProduct(Product product) {
		try
		{
			sessionFactory.getCurrentSession().delete(product);
			return true;
		}
		
		catch(Exception e)
		{
			System.out.println("Exception arrised"+e);
			return false;
		}
	
	}

	@Override
	public List<Product> retriveProduct() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> listProduct=query.list();
		session.close();
		return listProduct;
	
	}

	@Override
	public boolean updateProduct(Product product) {
		try
		{
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		
		catch(Exception e)
		{
			System.out.println("Exception arrived"+e);
			return false;
		}
	
	}

	@Override
	public Product getProduct(int ProductId) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,ProductId);
		session.close();
		return product;
	}
	

}
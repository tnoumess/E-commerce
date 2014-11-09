package edu.gmu.infs640.proofofconcept.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import edu.gmu.infs640.proofofconcept.persistence.jpa.Product;

@Transactional
public class ProductDaoImpl implements ProductDao {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public boolean validateProduct(String productId, String name, String price) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void createNewProduct(Product product) {
		em.persist(product);
	}
	
	@Override
	public void updateProduct(Product product){
		Product p = em.find(Product.class, product.getProductId());
		if(p != null){
			p.setDescription(product.getDescription());
			p.setImageUrl(product.getImageUrl());
			p.setName(product.getName());
			p.setPrice(product.getPrice());
			em.merge(p);
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProducts() {
		Query q = em.createQuery("FROM Product");
		return q.getResultList();
	}

	@Override
	public Product getProductById(String productId) {
		return em.find(Product.class, productId);
	}

}

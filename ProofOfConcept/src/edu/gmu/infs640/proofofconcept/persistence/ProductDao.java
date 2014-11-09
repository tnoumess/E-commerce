package edu.gmu.infs640.proofofconcept.persistence;

import java.util.List;

import edu.gmu.infs640.proofofconcept.persistence.jpa.Product;

public interface ProductDao {

	boolean validateProduct(final String productId, final String name,final String price);
	
	void createNewProduct(Product product);

	List<Product> getAllProducts();

	void updateProduct(Product product);
	
	Product getProductById(String productId);
}

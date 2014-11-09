package edu.gmu.infs640.proofofconcept.persistence;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.gmu.infs640.proofofconcept.persistence.jpa.Product;

public class ProductInjector {
	
	static private final Logger logger = LoggerFactory.getLogger(ProductInjector.class);
	
	public ProductInjector(ProductDao dao, List<Product> products){
		Product existingProduct;
		for(Product p: products){
			try {
				existingProduct = dao.getProductById(p.getProductId());
				if(existingProduct == null){
					dao.createNewProduct(p);	
				}
				else {
					dao.updateProduct(p);
				}
			}
			catch(Exception e){
				logger.error(e.getMessage(),e);
			}
		}
	}
}

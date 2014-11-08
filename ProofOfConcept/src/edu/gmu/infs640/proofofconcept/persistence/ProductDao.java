package edu.gmu.infs640.proofofconcept.persistence;

public interface ProductDao {
	

	boolean validateProduct(final String productId, final String name,final String price);
	
	boolean createNewProduct(final String productId, final String name,final String price);

}

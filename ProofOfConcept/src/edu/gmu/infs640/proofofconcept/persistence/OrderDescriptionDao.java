package edu.gmu.infs640.proofofconcept.persistence;

public interface OrderDescriptionDao {

	boolean validateOerderDescription(final int orderId, final String productId,final int quantity, final double total);
	
	boolean createNewdescription(final int orderId, final String productId,final int quantity, final double total);


}

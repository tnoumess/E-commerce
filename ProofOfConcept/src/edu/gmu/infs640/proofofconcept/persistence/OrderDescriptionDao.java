package edu.gmu.infs640.proofofconcept.persistence;

public interface OrderDescriptionDao {

	boolean validateOerderDescription(final String orderId, final String productId,final double quantity, final double total);
	
	boolean createNewdescription(final String orderId, final String productId,final double quantity, final double total);


}

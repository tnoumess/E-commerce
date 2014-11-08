package edu.gmu.infs640.proofofconcept.persistence;

public interface OrderDao {

	boolean validateOrder(final String orderId, final String user,final double price);
	
	boolean createNewOrder(final String orderId, final String user,final double price);


}

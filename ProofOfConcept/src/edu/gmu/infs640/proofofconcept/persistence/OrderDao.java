package edu.gmu.infs640.proofofconcept.persistence;

public interface OrderDao {

	boolean validateOrder(final int orderId, final String user,final double price);
	
	boolean createNewOrder(final int orderId, final String user,final double price);


}

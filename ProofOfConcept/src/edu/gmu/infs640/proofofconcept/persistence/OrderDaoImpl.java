package edu.gmu.infs640.proofofconcept.persistence;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import edu.gmu.infs640.proofofconcept.persistence.jpa.Order;

@Transactional
public class OrderDaoImpl implements OrderDao{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public boolean validateOrder(int orderId, String user, double price) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean createNewOrder(int orderId, String user, double price) {
		// TODO Auto-generated method stub
		Order o=new Order(orderId, user, price);
		em.persist(o);
		return false;
	}

}

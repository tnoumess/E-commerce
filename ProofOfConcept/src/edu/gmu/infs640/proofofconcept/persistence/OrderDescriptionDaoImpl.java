package edu.gmu.infs640.proofofconcept.persistence;

import java.io.Serializable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import edu.gmu.infs640.proofofconcept.persistence.jpa.OrderDescription;

@Transactional
public class OrderDescriptionDaoImpl implements OrderDescriptionDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public boolean validateOerderDescription(int orderId, String productId,
			int quantity, double total) {
		// TODO Auto-generated method stub
		return false;
	}
 
	@Override
	public boolean createNewdescription(int orderId, String productId,
			int quantity, double total) {System.out.println("in odd");
		OrderDescription Od= new OrderDescription( orderId, productId, quantity,total);
		em.persist(Od);
		// TODO Auto-generated method stub
		return false;
	}

}

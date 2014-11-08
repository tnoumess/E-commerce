package edu.gmu.infs640.proofofconcept.persistence.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orderdescription")
public class OrderDescription {
	
	
	@Id
	@Column(name="orderId", nullable=false,unique=true)
	private String orderId;
	
	@Column(nullable=false)
	private String productId;//This is a foreign key
	
	@Column(nullable=false)
	private int quantity;//
	
	@Column(nullable=false)
	private double total;//
	
	
	private OrderDescription(){}
	
	public String getOrderId() {
		return orderId;
	}

	public String getProductId() {
		return productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getTotal() {
		return total;
	}

	
	
}

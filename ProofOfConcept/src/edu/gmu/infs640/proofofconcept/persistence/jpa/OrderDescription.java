package edu.gmu.infs640.proofofconcept.persistence.jpa;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orderdescription")
public class OrderDescription /*implements Serializable*/ {
	
	
	@Id
	@Column(name="Ids", nullable=false,unique=true)
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int Ids;
	
	
	@Column(nullable=false)
	private int orderId;
	
	@Column(nullable=false)
	private String productId;//This is a foreign key
	
	@Column(nullable=false)
	private int quantity;//
	
	@Column(nullable=false)
	private double total;//
	
	
	
	
	public int getOrderId() {
		return orderId;
	}

	public OrderDescription(int orderId, String productId, int quantity,
			double total) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.quantity = quantity;
		this.total = total;
	}

	public String getProductId() {
		return productId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getTotal() {
		return total;
	}

	
	
}

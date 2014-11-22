package edu.gmu.infs640.proofofconcept.persistence.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {
	
	
	@Id
	@Column(name="orderId", nullable=false,unique=true)
	private int orderId;
	@Column(nullable=false)
	private String userId;// the foreign key
	@Column(nullable=false)
	private double price;//sum of all the articles ordered
	
	

	public Order(int orderId, String userId, double price) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.price = price;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getUser() {
		return userId;
	}

	public void setUser(String user) {
		this.userId = user;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	
	
}

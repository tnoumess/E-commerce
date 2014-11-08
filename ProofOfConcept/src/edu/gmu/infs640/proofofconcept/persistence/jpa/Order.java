package edu.gmu.infs640.proofofconcept.persistence.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order")
public class Order {
	
	
	@Id
	@Column(name="orderId", nullable=false,unique=true)
	private String orderId;
	@Column(nullable=false)
	private String userId;// foreign key
	@Column(nullable=false)
	private double price;//sum of all the articles ordered
	
	private Order(){}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
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

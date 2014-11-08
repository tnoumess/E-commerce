package edu.gmu.infs640.proofofconcept.persistence.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	
	
	@Id
	@Column(name="productId", nullable=false,unique=true)
	private String productId;
	@Column(nullable=false)
	private String name;
	@Column(nullable=false)
	private String price;
	
	private Product(){}
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	

}

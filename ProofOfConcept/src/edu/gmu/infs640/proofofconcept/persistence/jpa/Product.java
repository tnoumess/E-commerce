package edu.gmu.infs640.proofofconcept.persistence.jpa;

import java.math.BigDecimal;

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
	private String imageUrl;
	
	@Column(columnDefinition="TEXT NOT NULL")
	private String description;
	
	@Column(name="price", precision=12, scale=2)
	private BigDecimal price;
	
	private Product(){}
	
	private Product(
			String productId,
			String name,
			String imageUrl,
			String description,
			BigDecimal price){
		this.productId = productId;
		this.name = name;
		this.imageUrl = imageUrl;
		this.description = description;
		this.price = price;
	}
	
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

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}

package edu.gmu.infs640.proofofconcept.persistence.Model;

import java.io.Serializable;

public class Item implements Serializable{
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String itemId;
	 private int quantity;
	 
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String ItemId) {
		itemId = ItemId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	  

}

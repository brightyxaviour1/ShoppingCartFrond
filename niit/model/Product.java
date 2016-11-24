
//Model or entity bean
package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AllProduct")
public class Product {

	@Id
	@Column(name = "pId")
	int pId;

	@Column(name = "pName")
	String pName;

	@Column(name = "pDescription")
	String pDescription;

	@Column(name = "price")
	double price;

	// Constructor
	public Product() {

		System.out.println("Product const invoked---");
	}

	public Product(int pId, String pName, String pDescription, double price) {

		//System.out.println("");
		this.pId = pId;
		this.pName = pName;
		this.pDescription = pDescription;
		this.price = price;
	}

	// getters & setters

	public String getpName() {
		return pName;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpDescription() {
		return pDescription;
	}

	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pDescription=" + pDescription + ", price=" + price + "]";
	}

}

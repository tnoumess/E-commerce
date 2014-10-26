package edu.gmu.infs640.proofofconcept.persistence.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User
{
	@Id
	@Column(name="userid", nullable=false,unique=true)
	private String userId;
	@Column(nullable=false)
	private String password;
	@SuppressWarnings("unused")
	private User(){}
	
	public User(final String userId, final String password){
		this.userId = userId;
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public String getPassword() {
		return password;
	}
}

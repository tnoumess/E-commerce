package edu.gmu.infs640.proofofconcept.persistence;


public interface UserDao
{
	boolean validateLogin(final String userName, final String password);
	
	boolean createNewUser(final String userName, final String password);
	
	boolean nameInUse(final String userName);
}

package edu.gmu.infs640.proofofconcept.persistence;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

import edu.gmu.infs640.proofofconcept.persistence.jpa.User;

@Transactional
public class UserDaoImpl implements UserDao
{
	@PersistenceContext
	private EntityManager em;

	@Override
	public boolean validateLogin(
			final String userName,
			final String password ) {
		boolean valid = false;
		User user = em.find(User.class, userName);
		if(user != null){
			try {
				if(PasswordHash.validatePassword(password, user.getPassword())){
					valid=true;
				}
			}
			catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
				throw new UnsupportedOperationException("System failure");
			}
		}
		return valid;
	}

	@Transactional
	@Override
	public boolean createNewUser(
			final String userName,
			final String password ) {
		//perform base length check on password
		if(password.length() > 32){
			throw new IllegalArgumentException("Invalid Password");
		}
		//perform base length check on user name
		if(userName.length() > 50){
			throw new IllegalArgumentException("Invalid Password");
		}
		//check if user name in use
		boolean valid = false;
		if(!nameInUse(userName)){
			try {
				//create new user
				User newUser = new User(userName, PasswordHash.createHash(password));
				em.persist(newUser);
				valid = true;
			}
			catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
				throw new UnsupportedOperationException("System failure");
			}
		}
		else {
			throw new IllegalArgumentException("Player name in use");
		}
		return valid;
	}

	@Override
	public boolean nameInUse(final String userName) {
		User user = em.find(User.class, userName);
		return user != null;
	}

}

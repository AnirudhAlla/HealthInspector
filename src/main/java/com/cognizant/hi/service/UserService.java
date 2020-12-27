package com.cognizant.hi.service;

import com.cognizant.hi.entity.UserEntity;
import com.cognizant.hi.model.User;
import com.cognizant.hi.model.UserLogin;

public interface UserService {
	public String validateUser(UserLogin user);

	public boolean saveUser(User user);

	public UserEntity findById(String userid);

	boolean updatePassword(UserEntity user, String password);

	UserEntity findByContactNumber(String contactNumber);

}

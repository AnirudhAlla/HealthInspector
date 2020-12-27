package com.cognizant.hi.service;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.hi.dao.UserRepository;
import com.cognizant.hi.entity.UserEntity;
import com.cognizant.hi.model.User;
import com.cognizant.hi.model.UserLogin;

@Transactional
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userDao;
	@Autowired
	private ModelMapper modelMapper;

	@Override

	public String validateUser(UserLogin user) {

		UserEntity u = userDao.validateUser(user.getUserid(), user.getPassword());
		if (u != null) {
			return u.getUserCategory();
		} else {
			return null;
		}
	}

	@Override
	public boolean saveUser(User user) {

		boolean result = false;
		// converting model object to entity object
		UserEntity u = modelMapper.map(user, UserEntity.class);
		boolean found = userDao.existsById(user.getUserid());
		if (!found) {
			UserEntity res = userDao.save(u);
			if (res != null)
				result = true;
		}
		return result;
	}

	@Override
	public UserEntity findById(String userid) {
		UserEntity user = userDao.findByUserId(userid);
		return user;
	}

	@Override
	public boolean updatePassword(UserEntity user, String password) {
		user.setPassword(password);
		UserEntity usr = userDao.save(user);

		if (usr != null) {

			return true;
		} else {
			return false;
		}
	}

	@Override
	public UserEntity findByContactNumber(String contactNumber) {
		UserEntity user = userDao.findByContactNumber(contactNumber);
		return user;
	}

}

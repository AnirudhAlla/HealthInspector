package com.cognizant.hi.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cognizant.hi.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, String> {

	@Query("select u from UserEntity u where u.userid=?1 and u.password=?2")
	UserEntity validateUser(String username, String password);

	@Query("select u from UserEntity u where u.userid=?1")
	UserEntity findByUserId(String userid);

	@Query("select u from UserEntity u where u.contactNumber=?1")
	UserEntity findByContactNumber(String contactNumber);
}

package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDao {

	List<User> getAllUsers();

	void deleteUser(int userId);
	
	void addUser(User user);
	
	User getUserById(int userId);
}

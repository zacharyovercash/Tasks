package com.hcl.dao;

import org.springframework.data.repository.CrudRepository;

import com.hcl.model.User;

public interface UserRepository extends CrudRepository<User, Integer>{
	public User findByUsernameAndPassword(String username,String password);
}

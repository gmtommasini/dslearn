package com.devsuperior.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsuperior.dslearnbds.entities.User;

public interface UserRepository extends JpaRepository<User, Long>{	
	
	/* the framework build the function automatically when we write "findByFieldName" */
	User findByEmail(String email);

}

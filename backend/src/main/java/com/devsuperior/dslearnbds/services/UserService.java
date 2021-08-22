package com.devsuperior.dslearnbds.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dslearnbds.dto.UserDTO;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;

@Service
public class UserService implements UserDetailsService{

	private static Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserRepository repository;
	@Autowired
	private AuthService authService;
//	@Autowired
//	private RoleRepository roleRepository;
	
	
	@Transactional(readOnly = true)
	public UserDTO findById(Long id) {
		authService.validateSelfOrAdmin(id); //if not self or admin, exception will be thrown
		User obj = repository.findById(id) //findById returns an optional<>
				.orElseThrow(() -> new ResourceNotFoundException(
						"User '" + id + "' not found"));
		return new UserDTO(obj);
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) // username is the email in this case
			throws UsernameNotFoundException {
		User user = repository.findByEmail(username);
		if(user == null) {
			logger.error("User not found: " + username);
			throw new UsernameNotFoundException("User/email not found");
		}
		logger.info("User found: " + username);
		return user; //User implements UserDetail
	}
}

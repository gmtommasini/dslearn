/* Token enhancer is being used to include more User data in the JWT.
 * AuthorizationServerConfig was also modified to include this changes */

package com.devsuperior.dslearnbds.components;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.stereotype.Component;

import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;

@Component
public class JwtTokenEnhacer implements TokenEnhancer {

	@Autowired
	private UserRepository userRepository;

	@Override
	public OAuth2AccessToken enhance(OAuth2AccessToken accessToken,
			OAuth2Authentication authentication) {
		
		User user = userRepository.findByEmail(authentication.getName());
		Map<String, Object> map = new HashMap<>();
		map.put("userId", user.getId());
		map.put("userFirstName", user.getName());
		/*
		DefaultOAuth2AccessToken token = (DefaultOAuth2AccessToken) accessToken; //downcasting
		token.setAdditionalInformation(map);
		*/
		((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(map);
		
		return accessToken;
		
	}

}


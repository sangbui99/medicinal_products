package com.webbanhang.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.webbanhang.constant.SystemConstant;
import com.webbanhang.dto.MyUser;
import com.webbanhang.entity.UserEntity;
import com.webbanhang.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE_STATUS);
		
		if (userEntity == null) {
			throw new UsernameNotFoundException("User not found");
		}
		List<GrantedAuthority> authorities = new ArrayList<>();		
			authorities.add(new SimpleGrantedAuthority(userEntity.getRole().getRoleCode()));		
		MyUser myUser = new MyUser(userEntity.getUserName(), userEntity.getPassWord(), 
							true, true, true, true, authorities);
		myUser.setId(userEntity.getId());
		myUser.setFullName(userEntity.getFullName());
		return myUser;
	}
	
}
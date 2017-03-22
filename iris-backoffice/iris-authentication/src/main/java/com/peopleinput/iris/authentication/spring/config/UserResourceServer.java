package com.peopleinput.iris.authentication.spring.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;

/**
 * Created by jgaglo on 23/11/16.
 */
@Configuration
@EnableResourceServer
public class UserResourceServer extends ResourceServerConfigurerAdapter {
  @Override
  public void configure(HttpSecurity http) throws Exception {
    http
        .antMatcher("/user")
        .authorizeRequests().anyRequest().authenticated();
  }
}
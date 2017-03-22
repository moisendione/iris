package com.peopleinput.iris.admin.spring.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.expression.SecurityExpressionHandler;
import org.springframework.security.access.hierarchicalroles.RoleHierarchy;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.expression.DefaultWebSecurityExpressionHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableOAuth2Sso
public class WebSecurityConfig extends WebSecurityConfigurerAdapter
{

  /*@Autowired
  private UserDetailsService userDetailsService;*/
  @Autowired
  RoleHierarchy roleHierarchy;
  @Value("${logout.uri}")
  private String logOutUri;

  private SecurityExpressionHandler<FilterInvocation> webExpressionHandler() {
    DefaultWebSecurityExpressionHandler defaultWebSecurityExpressionHandler = new DefaultWebSecurityExpressionHandler();
    defaultWebSecurityExpressionHandler.setRoleHierarchy(roleHierarchy);
    return defaultWebSecurityExpressionHandler;
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http
        .authorizeRequests()
            .expressionHandler(webExpressionHandler())
        //.antMatchers("/", "/index")
        //.permitAll()
        .antMatchers("/**").access("hasAuthority('{authority=ROLE_ADMIN}')")
        .anyRequest().authenticated()
        //.and()
        //.formLogin().loginPage("/login").failureUrl("/login?error").permitAll()
        .and()
        .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
            .logoutSuccessUrl(logOutUri);
  }

  @Override
  public void configure(WebSecurity web) throws Exception {
    DefaultWebSecurityExpressionHandler expressionHandler = new DefaultWebSecurityExpressionHandler();
    expressionHandler.setRoleHierarchy(this.roleHierarchy);
    web.expressionHandler(expressionHandler);
  }

  /*@Autowired
  public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
    auth
        //.userDetailsService(userDetailsService);
        .userDetailsService(userDetailsService)
        .passwordEncoder(new BCryptPasswordEncoder());
  }*/

}
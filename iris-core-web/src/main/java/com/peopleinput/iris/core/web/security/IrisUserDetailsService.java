package com.peopleinput.iris.core.web.security;

import com.peopleinput.iris.core.web.security.model.CurrentUser;
import com.peopleinput.iris.core.web.security.service.IrisUserService;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * Created by IMPELLO\ydabo on 24/04/16.
 */
@Service
public class IrisUserDetailsService implements UserDetailsService{

  private final IrisUserService irisUserService;

  @Autowired
  public IrisUserDetailsService(IrisUserService irisUserService) {
    this.irisUserService = irisUserService;
  }


  @Override
  public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
    IrisUser irisUser = irisUserService.getUserByLogin(login);

   return Optional.ofNullable(irisUser)
        .map(user -> new CurrentUser(user))
        .orElseThrow(() -> new UsernameNotFoundException(String.format("User with login=%s is not found", login)));
  }


}

package com.peopleinput.iris.core.web.security.model;

import com.github.dandelion.core.utils.StringUtils;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import com.peopleinput.iris.domain.enums.UserProfileType;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Created by IMPELLO\ydabo on 24/04/16.
 */
public class CurrentUser extends User {

  private IrisUser irisUser;

  public CurrentUser(IrisUser irisUser) {
    super(irisUser.getLogin(),
        irisUser.getPassword(),
        irisUser.getUserProfiles()
            .stream()
            .map(o -> new SimpleGrantedAuthority(o.getId()))
            .collect(Collectors.toList()));
    this.irisUser = irisUser;
  }

  public IrisUser getUser() {
    return irisUser;
  }

  public Long getId() {
    return irisUser.getId();
  }

  public Set<UserProfileType> getProfiles() {
    return irisUser.getUserProfiles();
  }

}

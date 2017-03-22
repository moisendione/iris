package com.peopleinput.iris.admin.view.market.mapper.user.Impl;

import com.peopleinput.iris.admin.view.market.mapper.user.UserToUserForm;
import com.peopleinput.iris.admin.view.market.model.UserForm;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import org.springframework.stereotype.Component;

/**
 * Created by Yakhya DABO on 07/02/16.
 */
@Component
public class UserToUserFormImpl implements UserToUserForm {
  @Override
  public UserForm apply(IrisUser user) {
    return null;
  }
}

package com.peopleinput.iris.admin.view.users.mapper.impl;

import com.peopleinput.iris.admin.view.users.mapper.IrisUserToIrisUserFormMapper;
import com.peopleinput.iris.admin.view.users.model.IrisUserForm;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import org.springframework.stereotype.Component;

/**
 * Created by yasmine on 09/09/2016.
 */
@Component
public class IrisUserToIrisUserFormMapperImpl implements IrisUserToIrisUserFormMapper {
  @Override
  public IrisUserForm apply(IrisUser irisUser) {
    IrisUserForm irisUserForm = new IrisUserForm();
    if(irisUser != null) {
      irisUserForm.setId(irisUser.getId());
      irisUserForm.setLogin(irisUser.getLogin());
      //irisUserForm.setProfile(irisUser.getUserProfiles());
      irisUserForm.setCreationDate(irisUser.getCreationDate());
    }
    return irisUserForm;
  }
}

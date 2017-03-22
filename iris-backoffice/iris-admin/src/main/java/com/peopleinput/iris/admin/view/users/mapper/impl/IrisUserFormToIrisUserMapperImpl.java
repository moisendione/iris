package com.peopleinput.iris.admin.view.users.mapper.impl;

import com.peopleinput.iris.admin.view.users.mapper.IrisUserFormToIrisUserMapper;
import com.peopleinput.iris.admin.view.users.model.IrisUserForm;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

/**
 * Created by yasmine on 08/09/2016.
 */
@Component
public class IrisUserFormToIrisUserMapperImpl implements IrisUserFormToIrisUserMapper {

  @Override
  public IrisUser apply(IrisUserForm irisUserForm){
    IrisUser irisUser=new IrisUser();
    irisUser.setLogin(irisUserForm.getLogin());
    //irisUser.setPassword(irisUserForm.getPassword());
    irisUser.setPassword(new BCryptPasswordEncoder().encode(irisUserForm.getPassword()));
    irisUser.setCreationDate(LocalDate.now());
    if(irisUserForm.getLastModificationDate()!=null){
      irisUser.setLastModificationDate(irisUserForm.getLastModificationDate());
    }
    if(irisUserForm.getId()!=null){
      irisUser.setId(irisUserForm.getId());
    }

    return irisUser;
  }
}

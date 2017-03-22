package com.peopleinput.iris.admin.view.users.mapper.impl;

import com.peopleinput.iris.admin.view.users.mapper.IrisUserToIrisUserRowMapper;
import com.peopleinput.iris.admin.view.users.model.IrisUserRow;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import org.springframework.stereotype.Component;

/**
 * Created by yasmine on 07/09/2016.
 */
@Component
public class IrisUserToIrisUserRowMapperImpl implements IrisUserToIrisUserRowMapper {
  @Override
  public IrisUserRow apply(IrisUser irisUser) {
    IrisUserRow irisUserRow = new IrisUserRow();
    if (irisUser != null){
      irisUserRow.setId(irisUser.getId());
      irisUserRow.setLogin(irisUser.getLogin());
      irisUserRow.setCreationDate(irisUser.getCreationDate());
      irisUserRow.setActive(irisUser.isActive());
    }
    return irisUserRow;
  }
}


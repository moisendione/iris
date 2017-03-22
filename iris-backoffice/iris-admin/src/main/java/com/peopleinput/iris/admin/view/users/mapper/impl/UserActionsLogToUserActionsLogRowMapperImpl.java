package com.peopleinput.iris.admin.view.users.mapper.impl;

import com.peopleinput.iris.admin.view.users.mapper.UserActionsLogToUserActionsLogRowMapper;
import com.peopleinput.iris.admin.view.users.model.UserActionsLogRow;
import com.peopleinput.iris.domain.admin.model.UserActionsLog;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 10/11/2016.
 */
@Component
public class UserActionsLogToUserActionsLogRowMapperImpl implements UserActionsLogToUserActionsLogRowMapper {
  @Override
  public UserActionsLogRow apply(UserActionsLog userActionsLog) {
    UserActionsLogRow userActionsLogRow = new UserActionsLogRow();
    if (userActionsLog != null) {
      userActionsLogRow.setId(userActionsLog.getId());
      userActionsLogRow.setDescription(userActionsLog.getDescription());
      userActionsLogRow.setCreationDate(userActionsLog.getCreationDate());
      userActionsLogRow.setLogAction(userActionsLog.getLogAction());

      StringBuilder stringBuilder = new StringBuilder();
      if (userActionsLog.getIrisUser().getFirstName() != null) {
        stringBuilder.append(userActionsLog.getIrisUser().getFirstName() + " ");
      }
      if (userActionsLog.getIrisUser().getLastName() != null) {
        stringBuilder.append(userActionsLog.getIrisUser().getLastName());
      }
      stringBuilder.append(" (" + userActionsLog.getIrisUser().getLogin() + ")");

      userActionsLogRow.setFullUserName(stringBuilder.toString());
    }
    return userActionsLogRow;
  }
}

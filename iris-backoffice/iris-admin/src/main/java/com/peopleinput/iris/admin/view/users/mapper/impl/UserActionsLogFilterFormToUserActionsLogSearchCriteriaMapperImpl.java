package com.peopleinput.iris.admin.view.users.mapper.impl;

import com.peopleinput.iris.admin.view.users.mapper.UserActionsLogFilterFormToUserActionsLogSearchCriteriaMapper;
import com.peopleinput.iris.admin.view.users.model.UserActionsLogFilterForm;
import com.peopleinput.iris.domain.admin.model.UserActionsLogSearchCriteria;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 11/11/2016.
 */
@Component
public class UserActionsLogFilterFormToUserActionsLogSearchCriteriaMapperImpl implements UserActionsLogFilterFormToUserActionsLogSearchCriteriaMapper {
  @Override
  public UserActionsLogSearchCriteria apply(UserActionsLogFilterForm userActionsLogFilterForm) {
    UserActionsLogSearchCriteria userActionsLogSearchCriteria = new UserActionsLogSearchCriteria();
    userActionsLogSearchCriteria.setLogAction(userActionsLogFilterForm.getLogAction());
    userActionsLogSearchCriteria.setLogEntity(userActionsLogFilterForm.getLogEntity());
    userActionsLogSearchCriteria.setStartDate(userActionsLogFilterForm.getStartDate());
    userActionsLogSearchCriteria.setEndDate(userActionsLogFilterForm.getEndDate());

    return userActionsLogSearchCriteria;
  }
}

package com.peopleinput.iris.admin.view.users.service;

import com.peopleinput.iris.domain.admin.model.UserActionsLog;
import com.peopleinput.iris.domain.admin.model.UserActionsLogSearchCriteria;
import com.peopleinput.iris.domain.enums.LogAction;
import com.peopleinput.iris.domain.enums.LogEntity;

import java.util.List;

/**
 * Created by massaer on 10/11/2016.
 */
public interface UserActionsLogService {
  List<UserActionsLog> findAll();

  List<UserActionsLog> findByLogEntity(LogEntity logEntity);

  List<UserActionsLog> findByLogAction(LogAction logAction);

  UserActionsLog findById(Long id);

  void insert(UserActionsLog userActionsLog);

  List<UserActionsLog> getUserActionsLogByCriteria(UserActionsLogSearchCriteria userActionsLogSearchCriteria);
}

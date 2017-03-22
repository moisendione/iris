package com.peopleinput.iris.admin.view.users.service.impl;

import com.peopleinput.iris.admin.view.users.service.UserActionsLogService;
import com.peopleinput.iris.domain.admin.model.UserActionsLog;
import com.peopleinput.iris.domain.admin.model.UserActionsLogSearchCriteria;
import com.peopleinput.iris.domain.admin.repository.UserActionsLogRepository;
import com.peopleinput.iris.domain.enums.LogAction;
import com.peopleinput.iris.domain.enums.LogEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by massaer on 10/11/2016.
 */
@Service("userActionsLogService")
@Transactional
public class UserActionsLogServiceImpl implements UserActionsLogService {
  @Autowired
  private UserActionsLogRepository userActionsLogRepository;

  @Override
  public List<UserActionsLog> findAll() {
    return userActionsLogRepository.findAll();
  }

  @Override
  public List<UserActionsLog> findByLogEntity(LogEntity logEntity) {
    return userActionsLogRepository.findByEntity(logEntity);
  }

  @Override
  public List<UserActionsLog> findByLogAction(LogAction logAction) {
    return null;
  }

  @Override
  public UserActionsLog findById(Long id) {
    return userActionsLogRepository.findById(id);
  }

  @Override
  public void insert(UserActionsLog userActionsLog) {
      userActionsLogRepository.insert(userActionsLog);
  }

  @Override
  public List<UserActionsLog> getUserActionsLogByCriteria(UserActionsLogSearchCriteria userActionsLogSearchCriteria) {
    return userActionsLogRepository.getUserActionsLogByCriteria(userActionsLogSearchCriteria);
  }
}

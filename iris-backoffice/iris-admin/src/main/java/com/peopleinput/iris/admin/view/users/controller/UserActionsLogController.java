package com.peopleinput.iris.admin.view.users.controller;

import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.admin.view.users.mapper.UserActionsLogFilterFormToUserActionsLogSearchCriteriaMapper;
import com.peopleinput.iris.admin.view.users.mapper.UserActionsLogToUserActionsLogRowMapper;
import com.peopleinput.iris.admin.view.users.model.UserActionsLogFilterForm;
import com.peopleinput.iris.admin.view.users.model.UserActionsLogList;
import com.peopleinput.iris.admin.view.users.model.UserActionsLogRow;
import com.peopleinput.iris.admin.view.users.service.UserActionsLogService;
import com.peopleinput.iris.domain.admin.model.UserActionsLog;
import com.peopleinput.iris.domain.admin.model.UserActionsLogSearchCriteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Created by massaer on 10/11/2016.
 */
@Controller
public class UserActionsLogController {

  private final UserActionsLogService userActionsLogService;
  private final UserActionsLogToUserActionsLogRowMapper userActionsLogToUserActionsLogRowMapper;
  private final UserActionsLogFilterFormToUserActionsLogSearchCriteriaMapper userActionsLogFilterFormToUserActionsLogSearchCriteriaMapper;

  @Autowired
  public UserActionsLogController(UserActionsLogService userActionsLogService,
                                  UserActionsLogToUserActionsLogRowMapper userActionsLogToUserActionsLogRowMapper,
                                  UserActionsLogFilterFormToUserActionsLogSearchCriteriaMapper userActionsLogFilterFormToUserActionsLogSearchCriteriaMapper){
    this.userActionsLogService = userActionsLogService;
    this.userActionsLogToUserActionsLogRowMapper = userActionsLogToUserActionsLogRowMapper;
    this.userActionsLogFilterFormToUserActionsLogSearchCriteriaMapper = userActionsLogFilterFormToUserActionsLogSearchCriteriaMapper;
  }

  private  static Logger LOGGER = LoggerFactory.getLogger(UserActionsLogController.class);

  private static UserActionsLogFilterForm userActionsLogFilterForm;

  @RequestMapping(value = "/user/actions-log", method = RequestMethod.GET)
  public IrisAdminView showUserActionsLog(Model model){

    if (userActionsLogFilterForm == null){
      userActionsLogFilterForm = new UserActionsLogFilterForm();
    }
    UserActionsLogSearchCriteria userActionsLogSearchCriteria = Optional.of(userActionsLogFilterForm)
            .map(userActionsLogFilterFormToUserActionsLogSearchCriteriaMapper)
            .get();

    List<UserActionsLogRow> rows = userActionsLogService.getUserActionsLogByCriteria(userActionsLogSearchCriteria)
            .stream()
            .map(userActionsLogToUserActionsLogRowMapper)
            .collect(Collectors.toList());
    UserActionsLogList userActionsLogList = new UserActionsLogList(rows);

    model.addAttribute("userActionsLogList",userActionsLogList);
    model.addAttribute("userActionsLogFilterForm",userActionsLogFilterForm);

    return IrisAdminView.USER_ACTIONS_LOG;
  }

  @RequestMapping(value = "/filter/actions-log", method = RequestMethod.POST)
  public IrisAdminRedirect filerUserActionsLog(@ModelAttribute("userActionsLogFilterForm") UserActionsLogFilterForm userActionsLogFilterForm){

    this.userActionsLogFilterForm = userActionsLogFilterForm;

    return new IrisAdminRedirect("/user/actions-log");
  }
}

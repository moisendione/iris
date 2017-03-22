package com.peopleinput.iris.admin.view.users.mapper;

import com.peopleinput.iris.admin.view.users.model.UserActionsLogFilterForm;
import com.peopleinput.iris.domain.admin.model.UserActionsLogSearchCriteria;

import java.util.function.Function;

/**
 * Created by massaer on 11/11/2016.
 */
public interface UserActionsLogFilterFormToUserActionsLogSearchCriteriaMapper extends Function<UserActionsLogFilterForm, UserActionsLogSearchCriteria> {
}

package com.peopleinput.iris.admin.view.users.mapper;

import com.peopleinput.iris.admin.view.users.model.UserActionsLogRow;
import com.peopleinput.iris.domain.admin.model.UserActionsLog;

import java.util.function.Function;

/**
 * Created by massaer on 10/11/2016.
 */
public interface UserActionsLogToUserActionsLogRowMapper extends Function<UserActionsLog, UserActionsLogRow> {
}

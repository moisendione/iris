package com.peopleinput.iris.admin.view.users.mapper;

import com.peopleinput.iris.admin.view.users.model.IrisUserRow;
import com.peopleinput.iris.domain.admin.model.IrisUser;

import java.util.function.Function;

/**
 * Created by yasmine on 07/09/2016.
 */
public interface IrisUserToIrisUserRowMapper extends Function<IrisUser, IrisUserRow> {
}

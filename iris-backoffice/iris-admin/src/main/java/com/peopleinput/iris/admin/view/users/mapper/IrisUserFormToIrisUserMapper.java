package com.peopleinput.iris.admin.view.users.mapper;

import com.peopleinput.iris.admin.view.users.model.IrisUserForm;
import com.peopleinput.iris.domain.admin.model.IrisUser;

import java.util.function.Function;

/**
 * Created by yasmine on 08/09/2016.
 */
public interface IrisUserFormToIrisUserMapper extends Function<IrisUserForm,IrisUser> {
}

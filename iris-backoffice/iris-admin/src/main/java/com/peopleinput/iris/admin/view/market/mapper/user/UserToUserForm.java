package com.peopleinput.iris.admin.view.market.mapper.user;

import com.peopleinput.iris.admin.view.market.model.UserForm;
import com.peopleinput.iris.domain.admin.model.IrisUser;

import java.util.function.Function;

/**
 * Created by Yakhya DABO on 07/02/16.
 */
public interface UserToUserForm extends Function<IrisUser, UserForm> {

}

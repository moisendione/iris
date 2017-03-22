package com.peopleinput.iris.admin.view.settings.mapper;

import com.peopleinput.iris.admin.view.settings.modele.AccountRow;
import com.peopleinput.iris.domain.admin.model.Account;

import java.util.function.Function;

/**
 * Created by massaer on 07/09/2016.
 */
public interface AccountToAccountRowMapper extends Function<Account, AccountRow> {
}

package com.peopleinput.iris.admin.view.settings.mapper;

import com.peopleinput.iris.admin.view.settings.modele.AccountTypeRow;
import com.peopleinput.iris.domain.admin.model.AccountType;

import java.util.function.Function;

/**
 * Created by massaer on 28/10/2016.
 */
public interface AccountTypeToAccountTypeRowMapper extends Function<AccountType, AccountTypeRow> {
}

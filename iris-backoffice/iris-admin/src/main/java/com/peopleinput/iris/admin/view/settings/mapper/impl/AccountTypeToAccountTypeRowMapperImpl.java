package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.AccountTypeToAccountTypeRowMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeRow;
import com.peopleinput.iris.domain.admin.model.AccountType;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 28/10/2016.
 */
@Component
public class AccountTypeToAccountTypeRowMapperImpl implements AccountTypeToAccountTypeRowMapper {

  @Override
  public AccountTypeRow apply(AccountType accountType) {

    AccountTypeRow accountTypeRow = new AccountTypeRow();
    accountTypeRow.setAccountNumber(accountType.getAccountNumber());
    accountTypeRow.setType(accountType.getType());
    if(accountType.getParent() != null) {
      accountTypeRow.setParentAccountNumber(accountType.getParent().getAccountNumber());
    }else{
      accountTypeRow.setParentAccountNumber(null);
    }

    return accountTypeRow;
  }
}

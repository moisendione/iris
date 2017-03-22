package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.AccountToAccountRowMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountRow;
import com.peopleinput.iris.domain.admin.model.Account;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 07/09/2016.
 */
@Component
public class AccountToAccountRowMapperImpl implements AccountToAccountRowMapper {
  @Override
  public AccountRow apply(Account account) {
    AccountRow accountRow = new AccountRow();
    if (account != null){
      accountRow.setAccountNumber(account.getAccountNumber());
      accountRow.setBalance(account.getBalance());
      accountRow.setDescription(account.getDescription());
      accountRow.setAccountType(account.getAccountType().getAccountNumber());
      accountRow.setDescriptionAccountType(account.getAccountType().getType());
    }
    return accountRow;
  }
}

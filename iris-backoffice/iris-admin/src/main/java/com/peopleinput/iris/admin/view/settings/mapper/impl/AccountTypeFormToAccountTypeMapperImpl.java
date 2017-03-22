package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.AccountTypeFormToAccountTypeMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeForm;
import com.peopleinput.iris.admin.view.settings.service.AccountTypeService;
import com.peopleinput.iris.domain.admin.model.AccountType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 28/10/2016.
 */
@Component
public class AccountTypeFormToAccountTypeMapperImpl implements AccountTypeFormToAccountTypeMapper {
  @Autowired
  private AccountTypeService accountTypeService;

  @Override
  public AccountType apply(AccountTypeForm accountTypeForm) {
    AccountType accountType = new AccountType();
    accountType.setAccountNumber(accountTypeForm.getAccountNumber());
    accountType.setType(accountTypeForm.getType());
    if (accountTypeForm.getParentAccountNumber() != null) {
      AccountType parent = new AccountType();
      parent.setAccountNumber(accountTypeForm.getParentAccountNumber());
      System.out.println("Parent (" + accountTypeForm.getType() + ") : " + parent);
      accountType.setParent(parent);
    }
    return accountType;
  }
}

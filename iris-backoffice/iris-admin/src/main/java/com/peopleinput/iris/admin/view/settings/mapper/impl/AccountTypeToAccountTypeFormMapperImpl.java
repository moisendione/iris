package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.AccountTypeToAccountTypeFormMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeForm;
import com.peopleinput.iris.domain.admin.model.AccountType;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 28/10/2016.
 */
@Component
public class AccountTypeToAccountTypeFormMapperImpl implements AccountTypeToAccountTypeFormMapper {

  @Override
  public AccountTypeForm apply(AccountType accountType) {
    AccountTypeForm accountTypeForm = new AccountTypeForm("UPDATE");
    accountTypeForm.setType(accountType.getType());
    accountTypeForm.setAccountNumber(accountType.getAccountNumber());
    if (accountType.getParent() != null){
      accountTypeForm.setParentAccountNumber(accountType.getParent().getAccountNumber());
    }else{
      accountTypeForm.setParentAccountNumber(null);
    }

    return accountTypeForm;
  }
}

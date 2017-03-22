package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.AccountToAccountFormMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountForm;
import com.peopleinput.iris.domain.admin.model.Account;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 07/09/2016.
 */
@Component
public class AccountToAccountFormMapperImpl implements AccountToAccountFormMapper {
  @Override
  public AccountForm apply(Account account) {
    AccountForm accountForm = new AccountForm("UPDATE");
    if(account != null) {
      accountForm.setDescription(account.getDescription());
      accountForm.setBalance(account.getBalance());
      accountForm.setAccountNumber(account.getAccountNumber());
      accountForm.setAccountTypeAccountNumber(account.getAccountType().getAccountNumber());
    }
    return accountForm;
  }
}

package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.AccountFormToAccountMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountForm;
import com.peopleinput.iris.admin.view.settings.service.AccountService;
import com.peopleinput.iris.admin.view.settings.service.AccountTypeService;
import com.peopleinput.iris.admin.view.settings.service.AccountingService;
import com.peopleinput.iris.domain.admin.model.Account;
import com.peopleinput.iris.domain.admin.model.AccountType;
import com.peopleinput.iris.domain.enums.AccountCategory;
import com.peopleinput.iris.domain.enums.AccountingType;
import com.peopleinput.iris.domain.mutualfund.model.Accounting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 07/09/2016.
 */
@Component
public class AccountFormToAccountMapperImpl implements AccountFormToAccountMapper {
  @Autowired
  private AccountService accountService;
  @Autowired
  private AccountTypeService accountTypeService;
  @Autowired
  private AccountingService accountingService;

  @Override
  public Account apply(AccountForm accountForm) {
    Account account;
    if (accountForm.getFormAction().equals("UPDATE")){
      account = accountService.findByAccountNumber(accountForm.getAccountNumber());
    }else{
      account = new Account();
      account.setAccountNumber(accountForm.getAccountNumber());
      AccountType accountType = new AccountType();
      accountType.setAccountNumber(accountForm.getAccountTypeAccountNumber());
      account.setAccountType(accountType);
      account.setAccountCategory(AccountCategory.GEN);
      Accounting accounting = accountingService.findByAccountingType(AccountingType.TRADING);
      account.setAccounting(accounting);

    }
    account.setBalance(accountForm.getBalance());
    account.setDescription(accountForm.getDescription());
    return account;
  }
}

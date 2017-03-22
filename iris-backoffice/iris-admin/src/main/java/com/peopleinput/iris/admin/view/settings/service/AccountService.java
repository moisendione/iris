package com.peopleinput.iris.admin.view.settings.service;

import com.peopleinput.iris.admin.view.settings.modele.AccountFormList;
import com.peopleinput.iris.domain.admin.model.Account;
import com.peopleinput.iris.domain.enums.AccountCategory;

import java.util.List;

/**
 * Created by massaer on 07/09/2016.
 */
public interface AccountService {
  Account findByAccountNumber(Long accountNumber);

  List<Account> findByAccountCategory(AccountCategory accountCategory);

  int updateDescription(Account account);

  void save(Account account);

  int saveAccounts(AccountFormList accountFormList);
}

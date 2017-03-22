package com.peopleinput.iris.admin.view.settings.service;

import com.peopleinput.iris.domain.admin.model.AccountType;

import java.util.List;

/**
 * Created by massaer on 07/09/2016.
 */
public interface AccountTypeService {
  List<AccountType> findAll();

  AccountType findByAccountNumber(Long accountNumber);

  void insert(AccountType accountType);

  void update(AccountType accountType);

  public int saveAccountTypes(List<AccountType> accountTypeList);

  void delete(Long accountNumber);
}

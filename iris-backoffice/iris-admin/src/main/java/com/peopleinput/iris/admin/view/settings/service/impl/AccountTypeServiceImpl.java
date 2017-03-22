package com.peopleinput.iris.admin.view.settings.service.impl;

import com.peopleinput.iris.admin.view.settings.service.AccountTypeService;
import com.peopleinput.iris.domain.admin.model.AccountType;
import com.peopleinput.iris.domain.admin.repository.AccountTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by massaer on 07/09/2016.
 */
@Component
public class AccountTypeServiceImpl implements AccountTypeService {
  @Autowired
  private AccountTypeRepository accountTypeRepository;
  @Override
  public List<AccountType> findAll() {
    return accountTypeRepository.findAll();
  }

  @Override
  public AccountType findByAccountNumber(Long accountNumber) {
    AccountType accountType = accountTypeRepository.findByAccountNumber(accountNumber);

    return accountType;
  }

  @Override
  public void insert(AccountType accountType) {
    accountTypeRepository.insert(accountType);
  }

  @Override
  public void update(AccountType accountType) {
     accountTypeRepository.update(accountType);
  }

  @Override
  public int saveAccountTypes(List<AccountType> accountTypeList) {
    int cpt = 0;
    if (accountTypeList != null){
      for(AccountType accountType : accountTypeList){
        insert(accountType);
        cpt++;
      }
    }
    return cpt;
  }

  @Override
  public void delete(Long accountNumber) {
    accountTypeRepository.delete(accountNumber);
  }
}

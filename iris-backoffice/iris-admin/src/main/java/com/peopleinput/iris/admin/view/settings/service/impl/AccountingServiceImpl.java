package com.peopleinput.iris.admin.view.settings.service.impl;

import com.peopleinput.iris.admin.view.settings.service.AccountingService;
import com.peopleinput.iris.domain.enums.AccountingType;
import com.peopleinput.iris.domain.mutualfund.model.Accounting;
import com.peopleinput.iris.domain.mutualfund.repository.AccountingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by massaer on 07/09/2016.
 */
@Component
public class AccountingServiceImpl implements AccountingService {
  @Autowired
  private AccountingRepository accountingRepository;

  @Override
  public List<Accounting> findAll() {
    return accountingRepository.findAll();
  }

  @Override
  public Accounting findByAccountingType(AccountingType accountingType) {
    return accountingRepository.getAccountingByAccountingType(accountingType);
  }
}

package com.peopleinput.iris.admin.view.settings.service;

import com.peopleinput.iris.domain.enums.AccountingType;
import com.peopleinput.iris.domain.mutualfund.model.Accounting;

import java.util.List;

/**
 * Created by massaer on 07/09/2016.
 */
public interface AccountingService {
  List<Accounting> findAll();

  Accounting findByAccountingType(AccountingType accountingType);
}

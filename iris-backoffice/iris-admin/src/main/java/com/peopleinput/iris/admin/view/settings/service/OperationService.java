package com.peopleinput.iris.admin.view.settings.service;

import com.peopleinput.iris.domain.enums.TransactionType;

import java.math.BigDecimal;

/**
 * Created by massaer on 05/10/2016.
 */
public interface OperationService {
  BigDecimal getSumAmountOperationSinceLastYearByTransactionType(TransactionType transactionType);
}

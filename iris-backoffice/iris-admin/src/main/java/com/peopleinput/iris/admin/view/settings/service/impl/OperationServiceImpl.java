package com.peopleinput.iris.admin.view.settings.service.impl;

import com.peopleinput.iris.admin.view.settings.service.OperationService;
import com.peopleinput.iris.domain.enums.TransactionType;
import com.peopleinput.iris.domain.mutualfund.repository.OperationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

/**
 * Created by massaer on 05/10/2016.
 */
@Service
@Transactional
public class OperationServiceImpl implements OperationService {
  @Autowired
  private OperationRepository operationRepository;

  @Override
  public BigDecimal getSumAmountOperationSinceLastYearByTransactionType(TransactionType transactionType) {
    BigDecimal result = operationRepository.getSumAmountOperationSinceLastYearByTransactionType(transactionType);
    if (result == null){
      result = BigDecimal.ZERO;
    }
    return result;
  }
}

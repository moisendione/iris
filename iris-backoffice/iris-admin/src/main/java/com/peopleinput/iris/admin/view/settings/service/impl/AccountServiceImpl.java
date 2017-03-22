package com.peopleinput.iris.admin.view.settings.service.impl;

import com.peopleinput.iris.admin.view.settings.mapper.AccountFormToAccountMapper;
import com.peopleinput.iris.admin.view.settings.modele.AccountForm;
import com.peopleinput.iris.admin.view.settings.modele.AccountFormList;
import com.peopleinput.iris.admin.view.settings.modele.AccountRow;
import com.peopleinput.iris.admin.view.settings.service.AccountService;
import com.peopleinput.iris.domain.admin.model.Account;
import com.peopleinput.iris.domain.enums.AccountCategory;
import com.peopleinput.iris.domain.mutualfund.repository.AccountRepository;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.CellReference;
import org.apache.poi.ss.usermodel.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

/**
 * Created by massaer on 07/09/2016.
 */
@Component
public class AccountServiceImpl implements AccountService {
  @Autowired
  private AccountRepository accountRepository;
  @Autowired
  private AccountFormToAccountMapper accountFormToAccountMapper;

  @Value("${path.to.save.temporarily.files}")
  private String fileToLoad;

  private  static Logger LOGGER = LoggerFactory.getLogger(AccountServiceImpl.class);

  @Override
  public Account findByAccountNumber(Long accountNumber) {
    return accountRepository.findByAccountNumber(accountNumber);
  }

  @Override
  public List<Account> findByAccountCategory(AccountCategory accountCategory) {
    return accountRepository.findByAccountCategory(accountCategory);
  }

  @Override
  public int updateDescription(Account account) {
    return accountRepository.updateDescription(account);
  }

  @Override
  public void save(Account account) {
     accountRepository.save(account);
  }

  @Override
  public int saveAccounts(AccountFormList accountFormList) {
    int meter = 0;
      for (AccountForm accountForm : accountFormList.getRows()) {
        if (accountForm.getAccountNumber() != null && accountForm.getAccountTypeAccountNumber() != null &&
                accountForm.getDescription() != null) {
          Account account = Optional.of(accountForm)
                  .map(accountFormToAccountMapper)
                  .get();
          accountRepository.save(account);
          meter++;
        }
      }

    return meter;
  }

}

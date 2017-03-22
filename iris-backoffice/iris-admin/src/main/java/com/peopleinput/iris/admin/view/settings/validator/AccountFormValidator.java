package com.peopleinput.iris.admin.view.settings.validator;

import com.peopleinput.iris.admin.view.settings.modele.AccountForm;
import com.peopleinput.iris.admin.view.settings.service.AccountService;
import com.peopleinput.iris.domain.admin.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by massaer on 07/09/2016.
 */
@Component
public class AccountFormValidator implements Validator {
  private static final String ACCOUNT_NUMBER = "accountNumber";
  private static final String ACCOUNT_TYPE_ACCOUNT_NUMBER = "accountTypeAccountNumber";
  private static final String DESCRIPTION = "description";

  private static final String EMPTY_FIELD_ERROR_CODE = "account.modal.add.form.required.field";

  @Autowired
  private AccountService accountService;

  @Override
  public boolean supports(Class<?> aClass) {
    return AccountForm.class.equals(aClass);
  }

  @Override
  public void validate(Object o, Errors errors) {
    AccountForm accountForm = (AccountForm) o;

    if (accountForm.getFormAction().equals("UPDATE")) {
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, ACCOUNT_NUMBER, EMPTY_FIELD_ERROR_CODE);
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, DESCRIPTION, EMPTY_FIELD_ERROR_CODE);
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, ACCOUNT_TYPE_ACCOUNT_NUMBER, EMPTY_FIELD_ERROR_CODE);
    }
    /*if (accountForm.getAccountNumber().toString().length() != Account.GENERAL_ACCOUNT_DIGIT){
      errors.rejectValue(ACCOUNT_NUMBER, EMPTY_FIELD_ERROR_CODE);
    } */
    if(accountForm.getFormAction().equals("CREATE")) {
      Account account = accountService.findByAccountNumber(accountForm.getAccountNumber());
      if (account != null && account.getId() != null) {
        errors.rejectValue(ACCOUNT_NUMBER, EMPTY_FIELD_ERROR_CODE);
      }
    }
  }
}

package com.peopleinput.iris.admin.view.settings.validator;

import com.peopleinput.iris.admin.view.settings.modele.AccountTypeForm;
import com.peopleinput.iris.admin.view.settings.service.AccountTypeService;
import com.peopleinput.iris.domain.admin.model.AccountType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by massaer on 28/10/2016.
 */
@Component
public class AccountTypeFormValidator implements Validator {

  private static final String ACCOUNT_NUMBER = "accountNumber";
  private static final String TYPE = "type";
  private static final String PARENT_ACCOUNT_NUMBER = "parentAccountNumber";

  private static final String EMPTY_FIELD_ERROR_CODE = "accounttype.modal.add.form.required.field";

  @Autowired
  private AccountTypeService accountTypeService;

  @Override
  public boolean supports(Class<?> aClass) {
    return AccountTypeForm.class.equals(aClass);
  }

  @Override
  public void validate(Object o, Errors errors) {
    AccountTypeForm accountTypeForm = (AccountTypeForm) o;

    ValidationUtils.rejectIfEmptyOrWhitespace(errors, ACCOUNT_NUMBER, EMPTY_FIELD_ERROR_CODE);
    ValidationUtils.rejectIfEmptyOrWhitespace(errors, TYPE, EMPTY_FIELD_ERROR_CODE);

    if (accountTypeForm.getParentAccountNumber() != null){
      AccountType parent = accountTypeService.findByAccountNumber(accountTypeForm.getParentAccountNumber());
      if (parent == null){
        errors.rejectValue(PARENT_ACCOUNT_NUMBER, EMPTY_FIELD_ERROR_CODE);
      }
    }
    if (accountTypeForm.getFormAction().equals("CREATE")) {
      AccountType a = accountTypeService.findByAccountNumber(accountTypeForm.getAccountNumber());
      if (a != null && a.getAccountNumber() == accountTypeForm.getAccountNumber()) {
        errors.rejectValue(ACCOUNT_NUMBER, EMPTY_FIELD_ERROR_CODE);
      }
    }
  }
}

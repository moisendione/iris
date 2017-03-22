package com.peopleinput.iris.admin.view.settings.validator;

import com.peopleinput.iris.admin.view.settings.modele.AccountTypeForm;
import com.peopleinput.iris.admin.view.settings.modele.AccountTypeFormList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by massaer on 28/10/2016.
 */
@Component
public class AccountTypeFormListValidator implements Validator {
  @Autowired
  private AccountTypeFormValidator accountTypeFormValidator;

  @Override
  public boolean supports(Class<?> aClass) {
    return AccountTypeFormList.class.equals(aClass);
  }

  @Override
  public void validate(Object o, Errors errors) {
    AccountTypeFormList accountFormList = (AccountTypeFormList) o;
    int idx = 0;
    for (AccountTypeForm item : accountFormList.getRows()) {
      errors.pushNestedPath("rows[" + idx + "]");
      ValidationUtils.invokeValidator(accountTypeFormValidator, item, errors);
      errors.popNestedPath();
      idx++;
    }
  }
}

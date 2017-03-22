package com.peopleinput.iris.admin.view.settings.validator;

import com.peopleinput.iris.admin.view.settings.modele.AccountForm;
import com.peopleinput.iris.admin.view.settings.modele.AccountFormList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by massaer on 08/09/2016.
 */
@Component
public class AccountFormListValidator implements Validator {
  @Autowired
  private AccountFormValidator accountFormValidator;

  @Override
  public boolean supports(Class<?> aClass) {
    return AccountFormList.class.equals(aClass);
  }

  @Override
  public void validate(Object o, Errors errors) {
     AccountFormList accountFormList = (AccountFormList) o;
      int idx = 0;
      for (AccountForm item : accountFormList.getRows()) {
        errors.pushNestedPath("rows[" + idx + "]");
        ValidationUtils.invokeValidator(accountFormValidator, item, errors);
        errors.popNestedPath();
        idx++;
      }
  }
}

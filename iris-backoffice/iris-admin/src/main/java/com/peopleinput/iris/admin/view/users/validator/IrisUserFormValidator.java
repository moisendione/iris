package com.peopleinput.iris.admin.view.users.validator;

import com.peopleinput.iris.admin.view.users.model.IrisUserForm;
import com.peopleinput.iris.core.web.security.service.IrisUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by yasmine on 28/09/2016.
 */
@Component
public class IrisUserFormValidator implements Validator {
  private static final String LOGIN = "login";
  private static final String PASSWORD = "password";
  private  static Logger LOGGER = LoggerFactory.getLogger(IrisUserFormValidator.class);




  private IrisUserService irisUserService;
  @Autowired
  public IrisUserFormValidator(IrisUserService irisUserService) {
    this.irisUserService = irisUserService;
  }

  @Override
  public boolean supports(Class<?> aClass) {
    return IrisUserForm.class.equals(aClass);
  }

  @Override
  public void validate(Object o, Errors errors) {
    IrisUserForm irisUserForm = (IrisUserForm) o;
    validatePasswords(errors, irisUserForm);
    validateLogin(errors, irisUserForm);
  }

  private void validatePasswords(Errors errors, IrisUserForm irisUserForm) {
    if (!irisUserForm.getPassword().equals(irisUserForm.getPasswordRepeated())) {
      errors.rejectValue(PASSWORD, "Passwords do not match");
    }
  }

  private void validateLogin(Errors errors, IrisUserForm irisUserForm) {
    if ((irisUserService.getUserByLogin(irisUserForm.getLogin()))!=null) {
      LOGGER.info("CA ExISTE!!!!!");
      errors.rejectValue(LOGIN,"User with this login already exists");
    }
  }
}

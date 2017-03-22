package com.peopleinput.iris.admin.view.market.validator;

import com.peopleinput.iris.admin.view.market.model.BondForm;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class BondFormValidator implements Validator {

  private static final String BOND_TICKER = "ticker";
  private static final String BOND_PRINCIPAL_AMOUNT = "principalAmount";
  private static final String BOND_ISINCODE = "isinCode";
  private static final String BOND_NAME = "name";

  @Override
  public boolean supports(Class<?> clazz) {
    return BondForm.class.equals(clazz);
  }

  @Override
  public void validate(Object target, Errors errors) {
    ValidationUtils.rejectIfEmptyOrWhitespace(errors, BOND_TICKER, "errors.ticker", "Ticker is required.");
    ValidationUtils.rejectIfEmptyOrWhitespace(errors, BOND_PRINCIPAL_AMOUNT, "errors.principalAmount", "Principal Amount is required.");
    ValidationUtils.rejectIfEmptyOrWhitespace(errors, BOND_ISINCODE, "errors.isinCode", "ISIN Code is required.");
    ValidationUtils.rejectIfEmptyOrWhitespace(errors, BOND_NAME, "errors.name", "Name is required.");
  }
}

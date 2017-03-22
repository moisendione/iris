package com.peopleinput.iris.admin.view.settings.modele;

import lombok.Data;

import java.math.BigDecimal;

/**
 * Created by massaer on 07/09/2016.
 */
@Data
public class AccountForm {
  private Long accountNumber;
  private BigDecimal balance;
  private String description;
  private Long accountTypeAccountNumber;
  private String formAction;

  public AccountForm(){}

  public AccountForm(String formAction){
    this.formAction = formAction;
    this.balance = BigDecimal.ZERO;
  }
}

package com.peopleinput.iris.admin.view.settings.modele;

import lombok.Data;

/**
 * Created by massaer on 28/10/2016.
 */
@Data
public class AccountTypeForm {
  private String type;
  private Long accountNumber;
  private Long parentAccountNumber;
  private String formAction;

  public AccountTypeForm(){}

  public AccountTypeForm(String formAction){
    this.formAction = formAction;
  }
}

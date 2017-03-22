package com.peopleinput.iris.admin.view.settings.modele;

import lombok.Data;

import java.util.List;

/**
 * Created by massaer on 28/10/2016.
 */
@Data
public class AccountTypeFormList {
  private List<AccountTypeForm> rows;

  public AccountTypeFormList(){}

  public AccountTypeFormList(List<AccountTypeForm> rows){
    this.rows = rows;
  }
}

package com.peopleinput.iris.admin.view.settings.modele;

import lombok.Data;

import java.util.List;

/**
 * Created by massaer on 28/10/2016.
 */
@Data
public class AccountTypeList {
  private List<AccountTypeRow> rows;

  public AccountTypeList(){}

  public AccountTypeList(List<AccountTypeRow> rows){
    this.rows = rows;
  }
}

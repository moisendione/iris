package com.peopleinput.iris.admin.view.settings.modele;

import lombok.Data;

import java.io.File;
import java.util.List;

/**
 * Created by massaer on 08/09/2016.
 */
@Data
public class AccountFormList {
  private List<AccountForm> rows;

  public AccountFormList(){}

  public AccountFormList(List<AccountForm> rows){
    this.rows = rows;
  }

  @Override
  public String toString() {
    return "AccountFormList{" +
            "rows=" + rows +
            ", file="+
            '}';
  }
}

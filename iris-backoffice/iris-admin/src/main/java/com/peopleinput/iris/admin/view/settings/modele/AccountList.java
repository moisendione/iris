package com.peopleinput.iris.admin.view.settings.modele;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by massaer on 07/09/2016.
 */
@Data
public class AccountList {
  private List<AccountRow> rows;

  public AccountList(){}

  public AccountList(List<AccountRow> rows){
    if(rows != null) {
      this.rows = rows;
    }else{
      this.rows = new ArrayList<>();
    }
  }
}

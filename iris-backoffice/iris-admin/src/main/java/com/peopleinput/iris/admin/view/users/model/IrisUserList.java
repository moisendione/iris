package com.peopleinput.iris.admin.view.users.model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by yasmine on 07/09/2016.
 */
@Data
public class IrisUserList {
  private List<IrisUserRow> rows;

  public IrisUserList(){}

  public IrisUserList(List<IrisUserRow> rows){
    if(rows != null) {
      this.rows = rows;
    }else{
      this.rows = new ArrayList<>();
    }
  }


}

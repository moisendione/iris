package com.peopleinput.iris.admin.view.users.model;

import lombok.Data;

import java.util.List;

/**
 * Created by massaer on 10/11/2016.
 */
@Data
public class UserActionsLogList {
  private List<UserActionsLogRow> rows;

  public UserActionsLogList(){}

  public UserActionsLogList(List<UserActionsLogRow> rows){
    this.rows = rows;
  }
}

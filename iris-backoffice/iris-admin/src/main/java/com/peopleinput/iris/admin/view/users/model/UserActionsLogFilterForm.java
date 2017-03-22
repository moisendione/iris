package com.peopleinput.iris.admin.view.users.model;

import com.peopleinput.iris.domain.enums.LogAction;
import com.peopleinput.iris.domain.enums.LogEntity;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by massaer on 11/11/2016.
 */
@Data
public class UserActionsLogFilterForm {
  private LogAction logAction;
  private LogEntity logEntity;
  private Long irisUserId;
  @DateTimeFormat(pattern = "dd-MM-yyyy")
  private Date startDate;
  @DateTimeFormat(pattern = "dd-MM-yyyy")
  private Date endDate;

  public UserActionsLogFilterForm(){
    startDate = null;
    endDate = null;
  }
}

package com.peopleinput.iris.admin.view.users.model;

import com.peopleinput.iris.domain.enums.LogAction;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by massaer on 10/11/2016.
 */
@Data
public class UserActionsLogRow {
  private Long id;
  private String description;
  @DateTimeFormat(pattern = "dd-MM-yyyy")
  private Date creationDate;
  private LogAction logAction;
  private String fullUserName;
}

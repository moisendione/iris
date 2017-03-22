package com.peopleinput.iris.admin.view.users.model;

import lombok.Data;

import java.time.LocalDate;
import java.util.Date;

/**
 * Created by yasmine on 07/09/2016.
 */

@Data
public class IrisUserRow {
  private long id;
  private String login;
  private boolean isActive;
  private LocalDate creationDate;
}

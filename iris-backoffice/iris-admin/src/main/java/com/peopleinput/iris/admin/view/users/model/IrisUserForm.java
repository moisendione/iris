package com.peopleinput.iris.admin.view.users.model;

import com.peopleinput.iris.domain.enums.UserProfileType;
import lombok.Data;

import java.time.LocalDate;
import java.util.Date;
import java.util.Set;

/**
 * Created by yasmine on 08/09/2016.
 */
@Data
public class IrisUserForm {
  private Long id;
  private String login;
  private String password;
  private String passwordRepeated;
  private String profile;
  private LocalDate creationDate;
  private LocalDate lastModificationDate;
}

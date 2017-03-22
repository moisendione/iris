package com.peopleinput.iris.core.web.security.service;

import com.peopleinput.iris.domain.admin.model.IrisUser;
import com.peopleinput.iris.domain.enums.UserProfileType;

import java.util.List;

/**
 * IrisUserService -
 *
 * @author: yaya (Yakhya DABO)
 */

public interface IrisUserService {
  IrisUser getUserByLogin(String login);
  List<IrisUser> findAllUsers();
  boolean insertUser(IrisUser irisUser);
  boolean insertProfile (IrisUser irisUser, UserProfileType userProfileType);
  IrisUser selectById(Long id);
  boolean updateUser(IrisUser irisUser);
  boolean updateProfile(IrisUser irisUser, UserProfileType userProfileType);


}

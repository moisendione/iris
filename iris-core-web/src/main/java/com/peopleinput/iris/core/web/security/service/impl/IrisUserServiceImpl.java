package com.peopleinput.iris.core.web.security.service.impl;

import com.peopleinput.iris.core.web.security.service.IrisUserService;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import com.peopleinput.iris.domain.admin.repository.IrisUserRepository;
import com.peopleinput.iris.domain.enums.UserProfileType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * IrisUserServiceImpl -
 *
 * @author: yaya (Yakhya DABO)
 */

@Service
public class IrisUserServiceImpl implements IrisUserService {
  private final IrisUserRepository irisUserRepository;

  @Autowired
  public IrisUserServiceImpl(IrisUserRepository irisUserRepository) {
    this.irisUserRepository = irisUserRepository;
  }

  @Override
  public IrisUser getUserByLogin(String login) {
    return irisUserRepository.findUserByLogin(login);
  }

  @Override
  public List<IrisUser> findAllUsers(){return irisUserRepository.findAllUsers(); }

  @Override
  public boolean insertUser(IrisUser irisUser) {return irisUserRepository.insertUser(irisUser);}

  @Override
  public boolean insertProfile (IrisUser irisUser, UserProfileType userProfileType){
    return irisUserRepository.insertProfile(irisUser,userProfileType);
  }

  @Override
  public IrisUser selectById(Long id){return irisUserRepository.selectById(id);}

  @Override
  public boolean updateUser(IrisUser irisUser){return irisUserRepository.updateUser(irisUser);}

  @Override
  public boolean updateProfile(IrisUser irisUser, UserProfileType userProfileType){
   return irisUserRepository.updateProfile(irisUser,userProfileType);
  }
}



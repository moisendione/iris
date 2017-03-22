package com.peopleinput.iris.admin.view.users.controller;

import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.admin.view.users.mapper.IrisUserFormToIrisUserMapper;
import com.peopleinput.iris.admin.view.users.mapper.IrisUserToIrisUserFormMapper;
import com.peopleinput.iris.admin.view.users.mapper.IrisUserToIrisUserRowMapper;
import com.peopleinput.iris.admin.view.users.model.IrisUserForm;
import com.peopleinput.iris.admin.view.users.validator.IrisUserFormValidator;
import com.peopleinput.iris.admin.view.users.model.IrisUserList;
import com.peopleinput.iris.admin.view.users.model.IrisUserRow;
import com.peopleinput.iris.core.web.security.service.IrisUserService;
import com.peopleinput.iris.core.web.view.IrisResponse;
import com.peopleinput.iris.domain.admin.model.IrisUser;
import com.peopleinput.iris.domain.enums.UserProfileType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Created by yasmine on 07/09/2016.
 */
@Controller

public class IrisUserController {
  private  static Logger LOGGER = LoggerFactory.getLogger(IrisUserController.class);

  private IrisUserService irisUserService;
  private IrisUserToIrisUserRowMapper irisUserToIrisUserRowMapper;
  private IrisUserFormToIrisUserMapper irisUserFormToIrisUserMapper;
  private IrisUserToIrisUserFormMapper irisUserToIrisUserFormMapper;
  private static String messageNewUser=null;
  private static String updateUser=null;
  private static IrisUserForm irisUserForm;
  private static String errorFound=null;
  private static String hasErrorLogin=null;
  private static String hasErrorPassword=null;


  @Autowired
  private IrisUserFormValidator irisUserFormValidator;


  @Autowired
  public IrisUserController(IrisUserService irisUserService, IrisUserToIrisUserRowMapper irisUserToIrisUserRowMapper,
                            IrisUserFormToIrisUserMapper irisUserFormToIrisUserMapper,
                            IrisUserToIrisUserFormMapper irisUserToIrisUserFormMapper){
    this.irisUserService=irisUserService;
    this.irisUserFormToIrisUserMapper=irisUserFormToIrisUserMapper;
    this.irisUserToIrisUserRowMapper=irisUserToIrisUserRowMapper;
    this.irisUserToIrisUserFormMapper=irisUserToIrisUserFormMapper;
  }

  @RequestMapping(value="/user", method = RequestMethod.GET)
  public IrisAdminView irisUserList(Model model){
    List<IrisUser> irisUsers = irisUserService.findAllUsers();


    List<IrisUserRow> irisUserRows = irisUsers
        .stream()
        .map(irisUserToIrisUserRowMapper)
        .collect(Collectors.toList());

    IrisUserList irisUserList = new IrisUserList(irisUserRows);


    if (messageNewUser != null){

      model.addAttribute("messageNewUser", messageNewUser);
    }
    if (updateUser != null){

      model.addAttribute("updateUser", updateUser);
    }

    if(irisUserForm ==null){
      irisUserForm =new IrisUserForm();

    }
    model.addAttribute("errorFound",errorFound);
    model.addAttribute("hasErrorLogin",hasErrorLogin);
    model.addAttribute("hasErrorPassword",hasErrorPassword);
    model.addAttribute("irisUserList",irisUserList);
    model.addAttribute("irisUserForm", irisUserForm);

    messageNewUser=null;
    updateUser=null;
    irisUserForm = new IrisUserForm();
    errorFound=null;
    hasErrorLogin=null;
    hasErrorPassword=null;

    return IrisAdminView.USER_LIST;
  }

  @RequestMapping(value="/add/admin/user", method = RequestMethod.POST)
  public IrisAdminRedirect addIrisUser( @ModelAttribute("irisUserForm") IrisUserForm irisUserForm,
                                  BindingResult bindingResult,
                                  RedirectAttributes redirectAttributes) {
    irisUserFormValidator.validate(irisUserForm,bindingResult);

    if (bindingResult.hasErrors()) {
      this.irisUserForm=irisUserForm;

      if(bindingResult.hasFieldErrors("login"))
      {

        errorFound="true";
        hasErrorLogin="false" ;
        redirectAttributes.addFlashAttribute("hasErrorLogin",hasErrorLogin);
        redirectAttributes.addFlashAttribute("errorFound",errorFound);
        LOGGER.info("Login error");


      }
      if(bindingResult.hasFieldErrors("password"))
      {
        errorFound="true";
        hasErrorPassword="false";
        redirectAttributes.addFlashAttribute("hasErrorPassword",hasErrorPassword);
        redirectAttributes.addFlashAttribute("existInDB",errorFound);
        LOGGER.info("Password error");

      }
      return new IrisAdminRedirect("/user");
    }
    IrisUser irisUser = Optional.of(irisUserForm)
        .map(irisUserFormToIrisUserMapper)
        .get();


    if (irisUserService.insertUser(irisUser)) {


      switch (irisUserForm.getProfile()) {
        case "1":
          irisUserService.insertProfile(irisUser, UserProfileType.ROLE_ADMIN);
          messageNewUser = "true";
          break;
        case "2":
          irisUserService.insertProfile(irisUser, UserProfileType.ROLE_ADMIN);
          messageNewUser = "true";
          break;
      }
    }
    else
    {
      messageNewUser="false";
    }

      LOGGER.info("ADD NEW USER");
      return new IrisAdminRedirect("/user");
    }


  @RequestMapping(value="/edit/admin/user",method = RequestMethod.POST)
  public IrisResponse editIrisUser(@ModelAttribute("irisUserForm")IrisUserForm irisUserForm) {


    String passwordVerification=irisUserService.getUserByLogin(irisUserForm.getLogin()).getPassword();

    if(new BCryptPasswordEncoder().matches(irisUserForm.getPassword(),passwordVerification)){


      //new password is put in passwordRepeated variable
    irisUserForm.setPassword(irisUserForm.getPasswordRepeated());
      irisUserForm.setLastModificationDate(LocalDate.now());
    IrisUser irisUser = Optional.of(irisUserForm)
        .map(irisUserFormToIrisUserMapper)
        .get();


    if (irisUserService.updateUser(irisUser)) {
      switch (irisUserForm.getProfile()) {
        case "1":
          irisUserService.updateProfile(irisUser, UserProfileType.ROLE_ADMIN);
          updateUser = "true";
          break;
        case "2":
          irisUserService.insertProfile(irisUser, UserProfileType.ROLE_USER);
          updateUser = "true";
          break;
      }
    }
    else {
      updateUser = "false";
    }
    return new IrisAdminRedirect("/user");
    }
    else {
      updateUser = "false";
    }
    return new IrisAdminRedirect("/user");

  }


  @RequestMapping(value = "/edit/admin/user/{id}",method = RequestMethod.GET,
      produces = MediaType.APPLICATION_JSON_VALUE)
  public @ResponseBody IrisUserForm editIrisAdmin(@PathVariable Long id){
    IrisUser irisUser = irisUserService.selectById(id);

    IrisUserForm irisUserForm = Optional.ofNullable(irisUser)
        .map(irisUserToIrisUserFormMapper)
        .get();
    irisUserForm.setId(id);

    return irisUserForm;}
}
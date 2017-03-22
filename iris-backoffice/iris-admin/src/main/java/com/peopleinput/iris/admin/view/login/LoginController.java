package com.peopleinput.iris.admin.view.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

  private  static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

  /**
   * This method will login.
   */
  @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
  public String login(ModelMap model) {
    LOGGER.info("New connection" );
    // model.addAttribute("user", new UserForm());
    return "login";
  }

}

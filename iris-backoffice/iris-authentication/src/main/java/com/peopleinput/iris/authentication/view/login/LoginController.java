package com.peopleinput.iris.authentication.view.login;

import com.peopleinput.iris.authentication.spring.resolver.IrisOauth2Redirect;
import com.peopleinput.iris.core.web.view.IrisRedirect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

  private  static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

    @Value("${default.uri}")
    private String defaultUri;
  /**
   * This method will login.
   */
  @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
  public String login(ModelMap model) {
    LOGGER.info("New connection" );
    // model.addAttribute("user", new UserForm());
    return "login";
  }



  @RequestMapping("/")
    public IrisRedirect index() {
      LOGGER.info("Redirect to ..."+defaultUri);
      return new IrisOauth2Redirect(defaultUri, false);
  }
}

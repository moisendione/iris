package com.peopleinput.iris.admin.view.login;

import com.peopleinput.iris.admin.spring.resolver.IrisAdminRedirect;
import com.peopleinput.iris.core.web.view.IrisResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
  private  static final Logger LOGGER = LoggerFactory.getLogger(IndexController.class);

  @RequestMapping("/")
  public IrisResponse index() {
    LOGGER.info("Index ... " );

    return new IrisAdminRedirect("/dashboard");
  }
}

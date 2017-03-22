package com.peopleinput.iris.authentication.view.user;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

/**
 * Created by jgaglo on 23/11/16.
 */
@RestController
public class UserResourceController {
  @RequestMapping("/user")
  public Principal user(Principal user) {
    System.out.println("======= Get user ======= "+user);
    return user;
  }
}

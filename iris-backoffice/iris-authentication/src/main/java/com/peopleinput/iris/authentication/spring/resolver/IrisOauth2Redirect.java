package com.peopleinput.iris.authentication.spring.resolver;

import com.peopleinput.iris.core.web.view.IrisRedirect;

/**
 * Created by Yakhya DABO on 18/06/16.
 */
public class IrisOauth2Redirect implements IrisRedirect {
  private final String url;
  private final boolean contextRelative;

  /**
   * Creates a context-relative redirect.
   */
  public IrisOauth2Redirect(String url) {
    this(url, true);
  }

  /**
   * Creates a redirect, context-relative or not.
   */
  public IrisOauth2Redirect(String url, boolean contextRelative) {
    this.url = url;
    this.contextRelative = contextRelative;
  }

  public String getUrl() {
    return url;
  }

  public boolean isContextRelative() {
    return contextRelative;
  }
}

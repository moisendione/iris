package com.peopleinput.iris.admin.spring.resolver;

import com.peopleinput.iris.core.web.view.IrisRedirect;

/**
 * Created by Yakhya DABO on 01/02/16.
 */
public class IrisAdminRedirect implements IrisRedirect {
  private final String url;
  private final boolean contextRelative;

  /**
   * Creates a context-relative redirect.
   */
  public IrisAdminRedirect(String url) {
    this(url, true);
  }

  /**
   * Creates a redirect, context-relative or not.
   */
  public IrisAdminRedirect(String url, boolean contextRelative) {
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

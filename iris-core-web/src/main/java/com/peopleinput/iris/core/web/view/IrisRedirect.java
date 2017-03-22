package com.peopleinput.iris.core.web.view;

/**
 * Created by Yakhya DABO on 06/02/16.
 */
public interface IrisRedirect extends IrisResponse {
  public String getUrl();

  public boolean isContextRelative();
}

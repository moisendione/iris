package com.peopleinput.iris.admin.spring.resolver;

import com.peopleinput.iris.core.web.view.IrisView;

/**
 * Created by Yakhya DABO on 24/01/16.
 */
public enum IrisAdminView implements IrisView {
  USER_LIST("user/list"),
  USER_EDIT_CREATE("user/edit_create"),
  USER_VIEW("user/view"),
  MARKET_LIST("market/list"),
  MARKET_EDIT_CREATE("market/edit_create"),
  MARKET_VIEW("market/view"),
  STOCK_LIST("stock/list"),
  STOCK_EDIT_CREATE("stock/edit_create"),
  STOCK_VIEW("stock/view"),
  BOND_LIST("bond/list"),
  BOND_CREATE("bond/create"),
  BOND_EDIT("bond/edit"),
  BOND_VIEW("bond/view"),
  DASHBOARD("settings/dashboard"),
  SETTINGS_MENU("settings/menu"),
  SETTINGS_NEW("settings/new"),
  SETTINGS_RATES("settings/rate"),
  SETTINGS_ACCOUNTS("settings/accounts"),
  SETTINGS_ACCOUNTS_TYPE("settings/accounts_type"),
  USER_ACTIONS_LOG("user/actions_log");


  private final String logicalViewName;

  private IrisAdminView(String logicalViewName) {
    this.logicalViewName = logicalViewName;
  }

  @Override
  public String getLogicalViewName() {
    return logicalViewName;
  }
}

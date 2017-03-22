package com.peopleinput.iris.admin.view.settings.service;

import com.peopleinput.iris.domain.admin.model.Settings;

/**
 * Created by massaer on 01/09/2016.
 */
public interface SettingsService {

  Settings select();

  Settings saveGeneral(Settings settings);

  Settings updateRates(Settings settings);
}

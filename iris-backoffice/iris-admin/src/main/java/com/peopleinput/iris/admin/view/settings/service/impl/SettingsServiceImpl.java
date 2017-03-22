package com.peopleinput.iris.admin.view.settings.service.impl;

import com.peopleinput.iris.admin.view.settings.service.SettingsService;
import com.peopleinput.iris.domain.admin.model.Settings;
import com.peopleinput.iris.domain.admin.repository.SettingsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by massaer on 01/09/2016.
 */
@Component
public class SettingsServiceImpl implements SettingsService {
  @Autowired
  private SettingsRepository settingsRepository;

  @Override
  public Settings select() {
    return settingsRepository.select();
  }

  @Override
  public Settings saveGeneral(Settings settings) {
    if (settings.getId() == null){
      settingsRepository.save(settings);
    }else{
      settingsRepository.updateGeneralInformations(settings);
    }
    return settings;
  }

  @Override
  public Settings updateRates(Settings settings){
    if (settings.getId() == null){
      settingsRepository.save(settings);
    }else{
      settingsRepository.updateRates(settings);
    }
    return settings;
  }
}

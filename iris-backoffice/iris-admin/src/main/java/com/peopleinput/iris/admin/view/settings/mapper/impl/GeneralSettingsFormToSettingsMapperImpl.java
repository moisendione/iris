package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.GeneralSettingsFormToSettingsMapper;
import com.peopleinput.iris.admin.view.settings.modele.GeneralSettingsForm;
import com.peopleinput.iris.domain.admin.model.Settings;
import org.springframework.stereotype.Component;

/**
 * Created by jgaglo on 02/09/16.
 */
@Component
public class GeneralSettingsFormToSettingsMapperImpl implements GeneralSettingsFormToSettingsMapper {
  @Override
  public Settings apply(GeneralSettingsForm settingsForm) {
    Settings settings = new Settings();
    settings.setWebsite(settingsForm.getWebsite());
    settings.setCountry(settingsForm.getCountry());
    settings.setEconomicZone(settingsForm.getEconomicZone());
    settings.setCompanyName(settingsForm.getCompanyName());
    settings.setAddress(settingsForm.getAddress());
    settings.setRegistrationNumber(settingsForm.getRegistrationNumber());
    settings.setEmail(settingsForm.getEmail());
    settings.setPhoneNumber(settingsForm.getPhoneNumber());
    settings.setCurrency(settingsForm.getCurrency());
    settings.setDescription(settingsForm.getDescription());
    settings.setLogo(settingsForm.getLogo());
    settings.setId(settingsForm.getId());

    return settings;
  }
}

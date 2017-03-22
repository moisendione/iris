package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.SettingsToGeneralSettingsFormMapper;
import com.peopleinput.iris.admin.view.settings.modele.GeneralSettingsForm;
import com.peopleinput.iris.domain.admin.model.Settings;
import org.springframework.stereotype.Component;

/**
 * Created by jgaglo on 01/09/16.
 */
@Component
public class SettingsToGeneralSettingsFormMapperImpl implements SettingsToGeneralSettingsFormMapper {
  @Override
  public GeneralSettingsForm apply(Settings settings) {
    GeneralSettingsForm settingsForm = new GeneralSettingsForm();
    settingsForm.setWebsite(settings.getWebsite());
    settingsForm.setCountry(settings.getCountry());
    settingsForm.setEconomicZone(settings.getEconomicZone());
    settingsForm.setCompanyName(settings.getCompanyName());
    settingsForm.setAddress(settings.getAddress());
    settingsForm.setRegistrationNumber(settings.getRegistrationNumber());
    settingsForm.setEmail(settings.getEmail());
    settingsForm.setPhoneNumber(settings.getPhoneNumber());
    settingsForm.setCurrency(settings.getCurrency());
    settingsForm.setDescription(settings.getDescription());
    settingsForm.setLogo(settings.getLogo());
    settingsForm.setId(settings.getId());

    return settingsForm;
  }
}

package com.peopleinput.iris.admin.view.settings.mapper;

import com.peopleinput.iris.admin.view.settings.modele.GeneralSettingsForm;
import com.peopleinput.iris.domain.admin.model.Settings;
import org.springframework.stereotype.Component;

import java.util.function.Function;

/**
 * Created by jgaglo on 01/09/16.
 */
public interface SettingsToGeneralSettingsFormMapper extends Function<Settings,GeneralSettingsForm>{
}

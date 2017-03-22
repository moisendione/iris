package com.peopleinput.iris.admin.view.settings.mapper;

import com.peopleinput.iris.admin.view.settings.modele.GeneralSettingsForm;
import com.peopleinput.iris.domain.admin.model.Settings;
import org.springframework.stereotype.Component;

import java.util.function.Function;

/**
 * Created by jgaglo on 02/09/16.
 */
public interface GeneralSettingsFormToSettingsMapper extends Function<GeneralSettingsForm,Settings> {
}

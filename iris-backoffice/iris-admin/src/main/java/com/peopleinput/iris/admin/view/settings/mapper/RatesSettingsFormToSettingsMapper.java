package com.peopleinput.iris.admin.view.settings.mapper;

import com.peopleinput.iris.admin.view.settings.modele.RatesSettingsForm;
import com.peopleinput.iris.domain.admin.model.Settings;
import org.springframework.stereotype.Component;

import java.util.function.Function;

/**
 * Created by jgaglo on 02/09/16.
 */
public interface RatesSettingsFormToSettingsMapper extends Function<RatesSettingsForm,Settings> {
}

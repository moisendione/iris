package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.RatesSettingsFormToSettingsMapper;
import com.peopleinput.iris.admin.view.settings.modele.RatesSettingsForm;
import com.peopleinput.iris.domain.admin.model.Settings;
import org.springframework.stereotype.Component;

/**
 * Created by jgaglo on 02/09/16.
 */
@Component
public class RatesSettingsFormToSettingsMapperImpl implements RatesSettingsFormToSettingsMapper {

  @Override
  public Settings apply(RatesSettingsForm ratesSettingsForm) {
    Settings settings = new Settings();
    settings.setId(ratesSettingsForm.getId());
    settings.setVatRate(ratesSettingsForm.getVatRate());
    settings.setCustodyFeesRate(ratesSettingsForm.getCustodyFeesRate());
    settings.setSellCommissionRate(ratesSettingsForm.getSellCommissionRate());
    settings.setDividendCustomerRate(ratesSettingsForm.getDividendCustomerRate());
    settings.setInterestRate(ratesSettingsForm.getInterestRate());
    settings.setDividendIssuerRate(ratesSettingsForm.getDividendIssuerRate());
    settings.setBuyCommissionRate(ratesSettingsForm.getBuyCommissionRate());
    settings.setBrvmOrderCommissionRate(ratesSettingsForm.getBrvmOrderCommissionRate());
    settings.setDcbrOrderCommissionRate(ratesSettingsForm.getDcbrOrderCommissionRate());
    settings.setAssetTransfertCommissionSgi(ratesSettingsForm.getAssetTransfertCommissionSgi());
    settings.setAssetTransfertCommissionDcbr(ratesSettingsForm.getAssetTransfertCommissionDcbr());
    settings.setAssetCollateralCommissionSgi(ratesSettingsForm.getAssetCollateralCommissionSgi());
    settings.setAssetCollateralCommissionDcbr(ratesSettingsForm.getAssetCollateralCommissionDcbr());
    return settings;
  }
}

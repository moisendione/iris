package com.peopleinput.iris.admin.view.settings.mapper.impl;

import com.peopleinput.iris.admin.view.settings.mapper.SettingsToRatesSettingsFormMapper;
import com.peopleinput.iris.admin.view.settings.modele.RatesSettingsForm;
import com.peopleinput.iris.domain.admin.model.Settings;
import org.springframework.stereotype.Component;

/**
 * Created by jgaglo on 02/09/16.
 */
@Component
public class SettingsToRatesSettingsFormMapperImpl implements SettingsToRatesSettingsFormMapper {
  @Override
  public RatesSettingsForm apply(Settings settings) {
    RatesSettingsForm ratesSettingsForm = new  RatesSettingsForm();
    ratesSettingsForm.setId(settings.getId());
    ratesSettingsForm.setVatRate(settings.getVatRate());
    ratesSettingsForm.setCustodyFeesRate(settings.getCustodyFeesRate());
    ratesSettingsForm.setSellCommissionRate(settings.getSellCommissionRate());
    ratesSettingsForm.setDividendCustomerRate(settings.getDividendCustomerRate());
    ratesSettingsForm.setInterestRate(settings.getInterestRate());
    ratesSettingsForm.setDividendIssuerRate(settings.getDividendIssuerRate());
    ratesSettingsForm.setBuyCommissionRate(settings.getBuyCommissionRate());
    ratesSettingsForm.setBrvmOrderCommissionRate(settings.getBrvmOrderCommissionRate());
    ratesSettingsForm.setDcbrOrderCommissionRate(settings.getDcbrOrderCommissionRate());
    ratesSettingsForm.setAssetTransfertCommissionSgi(settings.getAssetTransfertCommissionSgi());
    ratesSettingsForm.setAssetTransfertCommissionDcbr(settings.getAssetTransfertCommissionDcbr());
    ratesSettingsForm.setAssetCollateralCommissionSgi(settings.getAssetCollateralCommissionSgi());
    ratesSettingsForm.setAssetCollateralCommissionDcbr(settings.getAssetCollateralCommissionDcbr());
    return ratesSettingsForm;
  }
}

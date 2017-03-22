package com.peopleinput.iris.admin.view.settings.modele;

import lombok.Data;

import java.math.BigDecimal;

/**
 * Created by jgaglo on 02/09/16.
 */
@Data
public class RatesSettingsForm {
  private Long id;
  private BigDecimal vatRate;
  private BigDecimal custodyFeesRate;
  private BigDecimal sellCommissionRate;
  private BigDecimal dividendCustomerRate;
  private BigDecimal interestRate;
  private BigDecimal dividendIssuerRate;
  private BigDecimal buyCommissionRate;
  private BigDecimal brvmOrderCommissionRate;
  private BigDecimal dcbrOrderCommissionRate;

  private BigDecimal assetTransfertCommissionSgi;
  private BigDecimal assetTransfertCommissionDcbr;
  private BigDecimal assetCollateralCommissionSgi;
  private BigDecimal assetCollateralCommissionDcbr;
}

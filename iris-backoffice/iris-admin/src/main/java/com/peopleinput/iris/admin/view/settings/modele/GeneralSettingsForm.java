package com.peopleinput.iris.admin.view.settings.modele;

import com.peopleinput.iris.domain.enums.Country;
import com.peopleinput.iris.domain.enums.Currency;
import com.peopleinput.iris.domain.enums.EconomicZone;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
public class GeneralSettingsForm {
  private Long id;
  @NotNull
  private String companyName;
  @NotNull
  private String address;
  private String logo;
  @NotNull
  private String registrationNumber;
  private String description;
  @NotNull
  private String phoneNumber;
  private String email;
  private String website;


  //  relationship
  @NotNull
  private Currency currency;
  @NotNull
  private Country country;
  @NotNull
  private EconomicZone economicZone;

}
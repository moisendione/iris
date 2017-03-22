package com.peopleinput.iris.admin.view.settings.modele;

import com.peopleinput.iris.domain.admin.model.AccountType;
import lombok.Data;

import java.math.BigDecimal;

/**
 * Created by massaer on 07/09/2016.
 */
@Data
public class AccountRow {
  private Long accountNumber;
  private BigDecimal balance;
  private String description;
  private Long accountType;
  private String descriptionAccountType;
}

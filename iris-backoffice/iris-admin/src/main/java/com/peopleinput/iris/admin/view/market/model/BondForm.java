package com.peopleinput.iris.admin.view.market.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import java.math.BigDecimal;

/**
 * Created by souraya on 10/02/16.
 */
@Data
public class BondForm {

  private Long id;
  @NotEmpty
  private String name;
  @NotEmpty
  private BigDecimal principalAmount;
  @NotEmpty
  private String ticker;
  @NotEmpty
  private String isinCode;

}

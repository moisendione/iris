package com.peopleinput.iris.admin.view.market.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import java.math.BigDecimal;
import java.time.LocalDate;

/**
 * Created by yasmine on 10/02/2016.
 */

@Data
public class StockForm {

  private Long id;

  @NotEmpty
  private String isinCode;

  @NotEmpty
  private LocalDate lastQuotationDate;

  @NotEmpty
  private String ticker;

  @NotEmpty
  private String name;

  @NotEmpty
  private BigDecimal benchmarkIndex;
}

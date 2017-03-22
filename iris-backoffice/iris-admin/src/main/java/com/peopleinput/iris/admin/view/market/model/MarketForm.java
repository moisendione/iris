package com.peopleinput.iris.admin.view.market.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Created by yasmine on 09/02/2016.
 */
@Data
public class MarketForm {
  private Long id;

  @NotEmpty
  private String name;

  @NotEmpty
  private String description;

}

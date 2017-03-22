package com.peopleinput.iris.admin.view.market.mapper.market.impl;

import com.peopleinput.iris.admin.view.market.mapper.market.MarketFormToMarketMapper;
import com.peopleinput.iris.admin.view.market.model.MarketForm;
import com.peopleinput.iris.domain.admin.builder.MarketBuilder;
import com.peopleinput.iris.domain.admin.model.Market;
import org.springframework.stereotype.Component;

/**
 * Created by yasmine on 09/02/2016.
 */

@Component
public class MarketFormToMarketMapperImpl implements MarketFormToMarketMapper {

  @Override
  public Market apply(MarketForm marketForm) {
    Market market = new MarketBuilder(marketForm.getName(), marketForm.getDescription())
        .withId(marketForm.getId())
        .build();

    return market;
  }

}

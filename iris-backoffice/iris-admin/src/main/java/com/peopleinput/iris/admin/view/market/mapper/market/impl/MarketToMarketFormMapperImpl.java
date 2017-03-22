package com.peopleinput.iris.admin.view.market.mapper.market.impl;

import com.peopleinput.iris.admin.view.market.mapper.market.MarketToMarketFormMapper;
import com.peopleinput.iris.admin.view.market.model.MarketForm;
import com.peopleinput.iris.domain.admin.model.Market;
import org.springframework.stereotype.Component;

/**
 * Created by yasmine on 09/02/2016.
 */

@Component
public class MarketToMarketFormMapperImpl implements MarketToMarketFormMapper {

  public MarketForm apply(Market market) {
    MarketForm marketToForm = new MarketForm();
    marketToForm.setId(market.getId());
    marketToForm.setName(market.getName());
    marketToForm.setDescription(market.getDescription());
    return marketToForm;

  }

}

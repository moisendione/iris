package com.peopleinput.iris.admin.view.market.service;

import com.peopleinput.iris.domain.admin.model.Market;

import java.util.List;

/**
 * Created by yasmine on 09/02/2016.
 */
public interface MarketService {

  List<Market> listAll();

  Market getById(Long id);

  Market add(Market market);

  void delete(Long id);

}

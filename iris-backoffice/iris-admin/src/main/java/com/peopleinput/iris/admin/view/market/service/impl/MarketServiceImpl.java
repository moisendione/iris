package com.peopleinput.iris.admin.view.market.service.impl;

import com.peopleinput.iris.admin.view.market.service.MarketService;
import com.peopleinput.iris.domain.admin.model.Market;
import com.peopleinput.iris.domain.admin.repository.MarketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yasmine on 09/02/2016.
 */

@Service("marketService")
@Transactional
public class MarketServiceImpl implements MarketService {
  @Autowired
  private MarketRepository marketRepository;

  @Override
  public List<Market> listAll() {
    return marketRepository.findAll();
  }

  @Override
  public Market getById(Long id) {
    return marketRepository.findById(id);
  }

  @Override
  public Market add(Market market) {
    return marketRepository.save(market);
  }

  @Override
  public void delete(Long id) {
    marketRepository.delete(id);
  }

}
